<?php
$API_ACCESS = true;
include("../lib.php");

// echo json_encode($_POST);
// exit;
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

    $actual_order_total = $discount_order_total = $final_order_total = 0;
    $delivery_charges = get_meta_value("delivery_charges");

    foreach ($_POST['items'] as $item) {
        // echo json_encode($item);
        $item_data = get_items_data_for_api($item['item_id'])[0];
        $ord_qry = db_query("INSERT INTO `order_details`(`order_id`, `quantity`, `item_price`, `price`, `item_id`, `discount_price`) VALUES ('".db_escape($order_key)."','".db_escape($item['quantity'])."','".db_escape($item_data['price_per_unit'])."','".(db_escape($item_data['discount_price']) * db_escape($item['quantity']))."','".db_escape($item['item_id'])."','".db_escape($item_data['discount_price'])."')");
        
        $actual_order_total += ($item['quantity'] * $item_data['discount_price']);
        $discount_order_total += ($item_data['price_per_unit'] - $item_data['discount_price']) * $item['quantity'];
        $final_order_total += ($item['quantity'] * $item_data['discount_price']);        
    }
    $final_order_total += $delivery_charges;
    $order_offer = array();
    $order_offer['status'] = $order_offer['offer_price'] = '0';

    if(!empty($_POST['offer_id'])){
        $offer = get_offers_data($_POST['offer_id'])[0];
        if($offer['status'] == "1"){
            if(strtotime($offer['offer_end']) >= strtotime(date('Y-m-d H:i:s'))){
                if($final_order_total >= $offer['min_order_price']){
                    $order_offer['status'] = '1';
                    $order_offer['offer_price'] = $offer['offer_price'];
                    if(empty($offer['discount'])){
                        $final_order_total -= $offer['offer_price'];
                    }else{
                        $offer_price = round(($final_order_total * $offer['discount'] / 100));
                        if($offer_price < $offer['offer_price']){
                            $order_offer['offer_price'] = $offer_price;
                        }else{
                            $final_order_total -= $offer['offer_price'];
                        }
                    }
                    
                    if($offer['type'] == 'discount'){
                        $order_offer['cashback'] = '0';
                        $order_offer['offer_price'] = (string)round($order_offer['offer_price']);
                    }else{
                        $order_offer['cashback'] = (string)round($order_offer['offer_price']);
                        $order_offer['offer_price'] = '0';
                    }
                    $final_order_total -= $order_offer['offer_price'];
                }else{
                    $order_offer['status'] = '0';
                    $order_offer['msg'] = 'to get this offer min order is '.$offer['min_order_price'];
                }
            }else{
                $order_offer['status'] = '0';
                $order_offer['msg'] = 'offer expired';
            }
        }else{
            $order_offer['status'] = '0';
            $order_offer['msg'] = 'invalid offer';
        }
        if(empty($order_offer['status'])){
            $resp['status'] = 404;
            $resp['message'] = $order_offer['msg'];
            echo json_encode($resp);
            exit;
        }
    }
    $delivery_date = date('Y-m-d',strtotime(db_escape($_POST['delivery_date'])));
    if(strtotime($delivery_date) < strtotime(date('Y-m-d H:i:s'))){
        $resp['status'] = 404;
        $resp['message'] = "please select valid delivery date";
        echo json_encode($resp);
        exit;
    }
    $res = db_query("INSERT INTO `orders`(`order_key`, `user_id`, `address_id`, `offer_id`, `order_price`, `delivery_date`, `delivery_slot`, `delivery_charge`, `discount_price`, `final_order_price`, `status`, `order_at`, `last_updated_time`) VALUES ('".db_escape($order_key)."','".db_escape($_POST['user_id'])."','".db_escape($_POST['address_id'])."','".db_escape($_POST['offer_id'])."','".db_escape($actual_order_total)."','".$delivery_date."','".db_escape($_POST['delivery_slot'])."','".db_escape($delivery_charges)."','".db_escape($discount_order_total)."','".db_escape($final_order_total)."','0','".date('Y-m-d H:i:s')."','".date('Y-m-d H:i:s')."')");

    $trans_qry = db_query("INSERT INTO `payments`(`user_id`, `order_id`, `amount`, `transaction_id`, `mode`, `status`, `timestamp` ) VALUES ('".makesafe($_POST['user_id'])."','".makesafe($order_key)."','".makesafe($_POST['amount'])."','".makesafe($_POST['transaction_id'])."','".makesafe($_POST['mode'])."','".makesafe($_POST['payment_status'])."','".date('Y-m-d H:i:s')."')");

    if($res && $trans_qry){
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