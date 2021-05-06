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

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    db_begin_transaction();   
    
    $order_key = generate_unique_id('order',5);    

    $actual_order_total = $discount_order_total = $final_order_total = 0;
    $delivery_charges = get_meta_value("delivery_charges");
    $user_wallet = sqlValue("SELECT SUM(amount) FROM `user_wallet` WHERE `user_id` = '".$user_id."'");
    $user_wallet = $user_wallet ? $user_wallet : 0;
    // echo json_encode(get_user_cart_data(db_escape($user_id)));
    // exit;
    foreach (get_user_cart_data(db_escape($user_id)) as $item) {
        $ord_qry = db_query("INSERT INTO `order_details`(`order_id`, `quantity`, `item_price`, `price`, `item_id`, `discount_price`) VALUES ('".db_escape($order_key)."','".db_escape($item['quantity'])."','".db_escape($item['price_per_unit'])."','".(db_escape($item['discount_price']) * db_escape($item['quantity']))."','".db_escape($item['item_id'])."','".db_escape($item['discount_price'])."')");
        
        $actual_order_total += ($item['quantity'] * $item['discount_price']);
        $discount_order_total += ($item['price_per_unit'] - $item['discount_price']) * $item['quantity'];
        $final_order_total += ($item['quantity'] * $item['discount_price']);        
    }
    $final_order_total += $delivery_charges;
    if(!empty($_POST['use_wallet'] && $_POST['use_wallet'] == '1')) $final_order_total -= $user_wallet;

    $order_offer = array();
    $order_offer['status'] = $order_offer['offer_price'] = '0';
    
    $now = date('Y-m-d H:i:s');
    if(!empty($_POST['offer_id'])){
        $offer = get_offers_data($_POST['offer_id'])[0];
        if($offer['status'] == "1"){
            if(strtotime($offer['offer_end']) >= strtotime($now)){
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
    if(strtotime($delivery_date) < strtotime($now)){
        $resp['status'] = 404;
        $resp['message'] = "please select valid delivery date";
        echo json_encode($resp);
        exit;
    }
    $res = db_query("INSERT INTO `orders`(`order_key`, `user_id`, `address_id`, `offer_id`, `order_price`, `delivery_date`, `delivery_slot`, `delivery_charge`, `discount_price`, `final_order_price`, `status`, `order_at`, `last_updated_time`) VALUES ('".db_escape($order_key)."','".db_escape($user_id)."','".db_escape($_POST['address_id'])."','".db_escape($_POST['offer_id'])."','".db_escape($actual_order_total)."','".$delivery_date."','".db_escape($_POST['delivery_slot'])."','".db_escape($delivery_charges)."','".db_escape($discount_order_total)."','".db_escape($final_order_total)."','0','".$now."','".$now."')");

    $trans_qry = db_query("INSERT INTO `payments`(`user_id`, `order_id`, `amount`, `transaction_id`, `mode`, `status`, `timestamp` ) VALUES ('".makesafe($user_id)."','".makesafe($order_key)."','".makesafe($_POST['amount'])."','".makesafe($_POST['transaction_id'])."','".makesafe($_POST['mode'])."','".makesafe($_POST['payment_status'])."','".$now."')");

    if(!empty($order_offer['cashback'])){
        db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `transaction_id`, `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','+".db_escape($order_offer['cashback'])."','','Cash back received from order ".$order_key."','".db_escape($_POST['status'])."','".$now."')");
    }
    if(!empty($_POST['use_wallet'] && $_POST['use_wallet'] == '1')){
        db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `transaction_id`, `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','-".$user_wallet."','','Used wallet amount on order ".$order_key."','".db_escape($_POST['status'])."','".$now."')");
    }
    if($res && $trans_qry){
        db_query("DELETE FROM `cart` WHERE `user_id` = '".$user_id."'");
        db_commit_transaction();
        $resp['message'] = "successfully order placed";
        $resp['body'] = array('order_key' => $order_key,);
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