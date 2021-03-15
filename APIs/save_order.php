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
    
    $order_key = "#ORGCHKN".generateRandomString(6);
    $res = db_query("INSERT INTO `orders`(`user_id`, `status`, `order_key`, `order_at`) VALUES ('".db_escape($_POST['user_id'])."','0','".db_escape($order_key)."','".date('Y-m-d H:i:s')."')");
    if($res){
        $order_id = db_insert_id();
        if(db_query("INSERT INTO `order_details`(`order_id`, `quantity`, `item_price`, `price`, `item_id`, `discount_price`) VALUES ('".db_escape($order_id)."','".db_escape($_POST['quantity'])."','".db_escape($_POST['item_price'])."','".db_escape($_POST['price'])."','".db_escape($_POST['item_id'])."','".db_escape($_POST['discount_price'])."')"))
        {
            db_commit_transaction();
            $resp['message'] = "successfully card saved";
            $resp['body'] = array();
        }else{
            db_rollback_transaction();
            $resp['status'] = 500;
            $resp['message'] = "something went wrong";
        }
    }else{
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