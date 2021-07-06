<?php
$API_ACCESS = true;
include("../lib.php");

require('../razorpay/config.php');
require('../razorpay/razorpay-php/Razorpay.php');

use Razorpay\Api\Api;

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = array();

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);
if(empty($user_phone) || empty($user_hash_key)){
    send_response_warning(500,"phone or hash key is missing",array());
    exit;
}

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    $offer_id = isset($_POST['offer_id']) ? db_escape($_POST['offer_id']) : '';
    db_begin_transaction();   
    
    $order_key = generate_unique_id('order',5);    

    $actual_order_total = $discount_order_total = $final_order_total = 0;
    //Get and store global meta data here
    $global_meta_data = get_meta_values(array('delivery_charges','min_cart_val'));
    $delivery_charges = $global_meta_data['delivery_charges'];
    $min_cart_val = $global_meta_data['min_cart_val'];

    $user_wallet = sqlValue("SELECT SUM(`amount`) FROM `user_wallet` WHERE `user_id` = '".$user_id."' AND `status` = 'success'");
    $user_wallet = $user_wallet ? $user_wallet : 0;
    
    foreach (get_user_cart_data(db_escape($user_id)) as $item) {
        $ord_qry = db_query("INSERT INTO `order_details`(`order_id`, `quantity`, `item_price`, `price`, `item_id`, `discount_price`) VALUES ('".db_escape($order_key)."','".db_escape($item['quantity'])."','".db_escape($item['price_per_unit'])."','".(db_escape($item['discount_price']) * db_escape($item['quantity']))."','".db_escape($item['item_id'])."','".db_escape($item['discount_price'])."')");
        
        $actual_order_total += ($item['quantity'] * $item['discount_price']);
        $discount_order_total += ($item['price_per_unit'] - $item['discount_price']) * $item['quantity'];
        $final_order_total += ($item['quantity'] * $item['discount_price']);        
    }
    //Not adding delivery charge is cart value is more that min cart value (VJ 25-05-21)
    if($final_order_total >= $min_cart_val){
        $delivery_charges = 0;
    }else{
        $final_order_total += $delivery_charges;
    }

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

    $used_wallet = 0;
    if(!empty($_POST['use_wallet'] && $_POST['use_wallet'] == '1')){
        if($user_wallet > $final_order_total){
            $used_wallet = $final_order_total;
            $final_order_total = 0;
        }else{
            $final_order_total -= $user_wallet;
            $used_wallet = $user_wallet;
        }
    }
    /* echo json_encode($order_offer);
    exit; */
    $delivery_date = date('Y-m-d',strtotime(db_escape($_POST['delivery_date'])));
    if(strtotime($delivery_date) < strtotime(date('Y-m-d'))){
        $resp['status'] = 404;
        $resp['message'] = "please select valid delivery date";
        echo json_encode($resp);
        exit;
    }
    if(strtotime($delivery_date) == strtotime(date('Y-m-d'))){
        $time_slots = explode('-',$_POST['delivery_slot']);
        $buffer_time = date('Y-m-d H:i:s',strtotime('+2 hour',time()));
        $delivery_start = date('Y-m-d H:i:s',strtotime(date('Y-m-d').trim($time_slots[0])));
        // echo $buffer_time."<br>".$delivery_start;
        if($buffer_time > $delivery_start){
            $resp['status'] = 404;
            $resp['message'] = "please select valid delivery slot";
            echo json_encode($resp);
            exit;
        }        
    }
    // exit;
    $order_address = sqlr("SELECT `name`, `phone`, `alternative_phone`, `house_no`, `building_name`, `street`, `landmark`, `pincode`, `locality`, `city`, `address_type` FROM `address` WHERE address_id = '".makesafe($_POST['address_id'])."'");
    $order_data['address'] = $order_address ? $order_address : array();

    if(strtolower($_POST['mode']) == 'cod'){
		// echo "INSERT INTO `payments`(`user_id`, `order_id`, `amount`, `mode`, `status`, `timestamp` ) VALUES ('".makesafe($user_id)."','".makesafe($order_key)."','".makesafe($final_order_total)."','offline','','".$now."')";
        $trans_qry = db_query("INSERT INTO `payments`(`user_id`, `order_id`, `amount`, `mode`, `status`, `timestamp` ) VALUES ('".makesafe($user_id)."','".makesafe($order_key)."','".makesafe($final_order_total)."','offline','','".$now."')");
        
        if(!empty($order_offer['cashback'])){
            db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','+".db_escape($order_offer['cashback'])."','Cash back received from order ".$order_key."','success','".$now."')");
        }
        if(!empty($_POST['use_wallet']) && $_POST['use_wallet'] == '1'){
            // echo "INSERT INTO `user_wallet`(`user_id`, `amount`,  `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','-".$used_wallet."','Used wallet amount on order ".$order_key."','success','".$now."')";
            // exit;
            db_query("INSERT INTO `user_wallet`(`user_id`, `amount`,  `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','-".$used_wallet."','Used wallet amount on order ".$order_key."','success','".$now."')");
        }
        $order_data['user_wallet'] = $used_wallet;
        $order_data['cashback'] = !empty($order_offer['cashback']) ? $order_offer['cashback'] : 0;
    }else if(strtolower($_POST['mode']) == 'online'){
        $api = new Api($keyId, $keySecret);

        $orderData = [
            'receipt'         => 3456,
            'amount'          => $final_order_total * 100, // amount rupees in paise
            'currency'        => 'INR' //Currency
        ];
        $razorpayOrder = $api->order->create($orderData);

        if(!empty($razorpayOrder['id'])){
            $trans_qry = true;
            $resp['message'] = "successfully order placed";
            $resp['body'] = array('order_key' => $order_key,'razorpay_order_id' => $razorpayOrder['id']);
            $order_data['razorpay_order_id'] = $razorpayOrder['id'];
            $order_data['user_wallet'] = $used_wallet;
            $order_data['cashback'] = $order_offer['cashback'] ? $order_offer['cashback'] : 0;
        }else{
            $resp['status'] = 500;
            $resp['message'] = "razorpay order creation failed";
            echo json_encode($resp);
            exit;
        }
    }else{
        $resp['status'] = 500;
        $resp['message'] = "invalid payment option";
        echo json_encode($resp);
        exit;
    }
	// exit;
    $res = db_query("INSERT INTO `orders`(`order_key`, `user_id`, `address_id`, `offer_id`, `order_price`, `order_data`, `delivery_date`, `delivery_slot`, `delivery_charge`, `discount_price`, `final_order_price`, `status`, `order_at`, `last_updated_time`) VALUES ('".db_escape($order_key)."','".db_escape($user_id)."','".db_escape($_POST['address_id'])."','".$offer_id."','".db_escape($actual_order_total)."','".json_encode($order_data)."','".$delivery_date."','".db_escape($_POST['delivery_slot'])."','".db_escape($delivery_charges)."','".db_escape($discount_order_total)."','".db_escape($final_order_total)."','0','".$now."','".$now."')");

    if($res && $trans_qry){
        db_commit_transaction();
        $resp['message'] = "successfully order placed";
        $resp['body'] = array('order_key' => $order_key);
        if(strtolower($_POST['mode']) == 'cod'){
            db_query("DELETE FROM `cart` WHERE `user_id` = '".$user_id."'");
            $tokens = get_user_device_tokens($user_id,"user_id");
            $message = "Order placed successfully.";
            if(!empty($tokens['android'])){
                $data = array("notification"=>array("title"=>"Organic Chicken","notify_type"=>"order"));
                send_android_push_notification($tokens['android'], $message, $data);
            }
            if(!empty($tokens['ios'])){
                // $json_string_payload='{"aps":	{ "alert": { "action-loc-key": "Open","body": "'.$message.'"},"badge": 1,"content-available": 1},"notify_type":"order"}';
			    // $result1 = send_apple_push_notifications($tokens['ios'],$json_string_payload);
            }
        }
    }else{
        db_rollback_transaction();
        $tokens = get_user_device_tokens($user_id,"user_id");
        if(!empty($tokens['android'])){
            $data = array("notification"=>array("title"=>"Organic Chicken","notify_type"=>"order"));
            $message = "Order placing failed";
            send_android_push_notification($tokens['android'], $message, $data);
        }
        if(!empty($tokens['ios'])){
            // $json_string_payload='{"aps":	{ "alert": { "action-loc-key": "Open","body": "'.$message.'"},"badge": 1,"content-available": 1},"notify_type":"order"}';
            // $result1 = send_apple_push_notifications($tokens['ios'],$json_string_payload);
        }
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