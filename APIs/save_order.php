<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = array();

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    db_begin_transaction();   
    
    $order_key = generate_unique_id('order',5);    

    foreach ($_POST['items'] as $item) {
        $item_data = get_items_data_for_api($item['item_id']);
        $ord_qry = db_query("INSERT INTO `order_details`(`order_id`, `quantity`, `item_price`, `price`, `item_id`, `discount_price`) VALUES ('".db_escape($order_key)."','".db_escape($item['quantity'])."','".db_escape($item_data['price_per_unit'])."','".(db_escape($item_data['discount_price']) * db_escape($item['quantity']))."','".db_escape($item['item_id'])."','".db_escape($item_data['discount_price'])."')");
    }
    $offer = get_offers_data($_POST['offer_id']);
    $res = db_query("INSERT INTO `orders`(`order_key`, `user_id`, `address_id`, `offer_id`, `order_price`, `delivery_charge`, `discount_price`, `final_order_price`, `status`, `order_at`, `last_updated_time`) VALUES ('".db_escape($_POST['user_id'])."','".db_escape($_POST['address_id'])."','".db_escape($_POST['offer_id'])."','0','".db_escape($order_key)."','".date('Y-m-d H:i:s')."')");

    $trans_qry = db_query("INSERT INTO `payments`(`user_id`, `order_id`, `amount`, `transaction_id`, `mode`, `status`, `timestamp` ) VALUES ('".makesafe($_POST['user_id'])."','".makesafe($order_key)."','".makesafe($_POST['amount'])."','".makesafe($_POST['transaction_id'])."','".makesafe($_POST['mode'])."','".makesafe($_POST['status'])."','".date('Y-m-d H:i:s')."')");

    if($res){
        db_commit_transaction();
        $resp['message'] = "successfully order placed";
        $resp['body'] = array();
    }else{
        db_rollback_transaction();
        $resp['status'] = 500;
        $resp['message'] = "something went wrong";
    }
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>