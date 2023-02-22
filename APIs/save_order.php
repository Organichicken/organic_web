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

$resp = $item_quantities = array();

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);
if(empty($user_phone) || empty($user_hash_key)){
    send_response_warning(500,"phone or hash key is missing",array());
    exit;
}if(empty($_POST['address_id'])){
    send_response_warning(404,"Address id is missing",array());
    exit;
}

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    $offer_id = isset($_POST['offer_id']) ? db_escape($_POST['offer_id']) : '';
    db_begin_transaction();   
    
    $user_info = sqlr("SELECT `first_name`, `is_member`, `membership_ends` FROM `users` WHERE user_id = '".$user_id."' LIMIT 1");
    //Set premium member variable (VJ 19-07-2021)
    $premium_discount_price = $is_premium_member = $final_order_price = 0;
    if($user_info['is_member'] == '1' && strtotime($user_info['membership_ends']) > strtotime(date('Y-m-d H:i:s'))) $is_premium_member = 1;

    $order_key = generate_unique_id('order',5);    

    $actual_order_total = $discount_order_total = $final_order_total = 0;
    //Get and store global meta data here
    $global_meta_data = get_meta_values(array('delivery_charges','min_cart_val'));
    $min_cart_val = $global_meta_data['min_cart_val'];
    //Added user default address to response (VJ 01-03-2022)
	$user_default_address = sqlr("SELECT `user_id`, `address_id`, `name`, `phone`, `alternative_phone`, `house_no`, `building_name`, `street`, `landmark`, `pincode`, `address`, `latitude`, `longitude`, `city`, `address_type`, `is_default_address` FROM `address` WHERE user_id = '".$user_id."' AND is_default_address = '1' LIMIT 1");
    //Setting delivery charge based on pincode (VJ 01-03-2022)
	$pincode_delivery_charge = (array)$user_default_address ? get_delivery_charge_pincode($user_default_address['pincode']) : 0;
    $delivery_charges = $pincode_delivery_charge ? $pincode_delivery_charge : $global_meta_data['delivery_charges'];

    $user_wallet = sqlValue("SELECT SUM(`amount`) FROM `user_wallet` WHERE `user_id` = '".$user_id."' AND `status` = 'success'");
    $user_wallet = $user_wallet ? $user_wallet : 0;
    $items_list = get_user_cart_data(db_escape($user_id));
    foreach ($items_list as $item) {        
        $actual_order_total += ($item['quantity'] * $item['discount_price']);
        $discount_order_total += ($item['price_per_unit'] - $item['discount_price']) * $item['quantity'];
        $final_order_total += ($item['quantity'] * $item['discount_price']); 
		$item_quantities[$item['item_id']] = $item['quantity'];
    }
	
    //Not adding delivery charge is cart value is more that min cart value (VJ 25-05-21)
	if($is_premium_member || $final_order_total >= $min_cart_val){
        $delivery_charges = 0;
    }else{
        $final_order_total += $delivery_charges;
    }

    $offer = $order_offer = $order_data = array();
    $order_offer['status'] = $order_offer['offer_price'] = '0';

    $now = date('Y-m-d H:i:s');
    if(!empty($_POST['offer_id'])){
        $offer = get_offers_data($_POST['offer_id'])[0];
        if($offer['status'] == "1"){
			if(sqlValue("SELECT COUNT(*) FROM `user_offers_used` WHERE `user_id` = '".$user_id."' AND `offer_id` = '".$offer['offer_id']."' AND `offer_code` = '".$offer['code']."'")){
				$resp['status'] = 404;
				$resp['message'] = 'Offer already used please select another';
				echo json_encode($resp);
				exit;
			}
            if(strtotime($offer['offer_end']) >= strtotime($now)){
                if($final_order_total >= $offer['min_order_price']){
                    $order_offer['status'] = '1';
                    $order_offer['offer_price'] = $offer['offer_price'];
                    if(empty($offer['discount'])){
                        // $final_order_total -= $offer['offer_price'];
                    }else{
                        $offer_price = round(($final_order_total * $offer['discount'] / 100));
                        if($offer_price < $offer['offer_price']){
                            $order_offer['offer_price'] = $offer_price;
                        }else{
							$order_offer['offer_price'] = $offer['offer_price'];
                            // $final_order_total -= $offer['offer_price'];
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
					$order_data['offer_data'] = $offer;
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
    //Premium calculation
    if($is_premium_member){
        $premium_discount_price = round(($final_order_total * 5 / 100));
		$order_data['premium_discount_price'] = $premium_discount_price;
        $final_order_total -= $premium_discount_price;
    }
    $used_wallet = 0;
    $final_order_price = $final_order_total;
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
        $buffer_time = date('Y-m-d H:i:s',strtotime('+30 minutes',time()));
        $delivery_start = date('Y-m-d H:i:s',strtotime(date('Y-m-d').trim($time_slots[0])));
        if($buffer_time > $delivery_start){
            $resp['status'] = 404;
            $resp['message'] = "please select valid delivery slot";
            echo json_encode($resp);
            exit;
        }        
    }
    $order_address = sqlr("SELECT `name`, `phone`, `alternative_phone`, `house_no`, `building_name`, `street`, `landmark`, `pincode`, `address`, `city`, `address_type`, `latitude`, `longitude` FROM `address` WHERE address_id = '".makesafe($_POST['address_id'])."'");
    $order_data['address'] = $order_address ? $order_address : array();
    $order_data['offer_price'] = !empty($order_offer['offer_price']) ? $order_offer['offer_price'] : 0;
    $order_data['cashback'] = !empty($order_offer['cashback']) ? $order_offer['cashback'] : 0;
    $order_data['user_wallet'] = $used_wallet;
    $order_data['item_quantities'] = $item_quantities;

    if(strtolower($_POST['mode']) == 'cod'){
		$order_status = ORD_NEW_ORDER;
        $trans_qry = db_query("INSERT INTO `payments`(`user_id`, `order_id`, `amount`, `mode`, `status`, `timestamp` ) VALUES ('".makesafe($user_id)."','".makesafe($order_key)."','".makesafe($final_order_total)."','offline','','".$now."')");
        $resp['body'] = array('order_key' => $order_key);
        if(!empty($order_offer['cashback'])){
            db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','+".db_escape($order_offer['cashback'])."','Cash back received from order ".$order_key."','success','".$now."')");
        }
        if(!empty($_POST['use_wallet']) && $_POST['use_wallet'] == '1'){
            db_query("INSERT INTO `user_wallet`(`user_id`, `amount`,  `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','-".$used_wallet."','Used wallet amount on order ".$order_key."','success','".$now."')");
        }
    }else if(strtolower($_POST['mode']) == 'online'){
		$order_status = ORD_PENDING;
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
			/* echo json_encode($order_data);
			print_r($razorpayOrder);
			exit; */
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
	
    $res = db_query("INSERT INTO `orders`(`order_key`, `user_id`, `address_id`, `offer_id`, `order_price`, `order_data`, `delivery_date`, `delivery_slot`, `delivery_charge`, `discount_price`, `final_order_price`, `status`, `order_at`, `last_updated_time`) VALUES ('".db_escape($order_key)."','".db_escape($user_id)."','".db_escape($_POST['address_id'])."','".$offer_id."','".db_escape($actual_order_total)."','".json_encode($order_data)."','".$delivery_date."','".db_escape($_POST['delivery_slot'])."','".db_escape($delivery_charges)."','".db_escape($discount_order_total)."','".db_escape($final_order_price)."','".$order_status."','".$now."','".$now."')");
	//Insert items into order details table (VJ 18-12-21)
	foreach ($items_list as $item) {
        $ord_qry = db_query("INSERT INTO `order_details`(`order_id`, `quantity`, `net_weight`, `item_price`, `price`, `item_id`, `discount_price`) VALUES ('".db_escape($order_key)."','".db_escape($item['quantity'])."','".db_escape($item['net_weight'])."','".db_escape($item['price_per_unit'])."','".(db_escape($item['discount_price']) * db_escape($item['quantity']))."','".db_escape($item['item_id'])."','".db_escape($item['discount_price'])."')");
    }
    $user_name = sqlValue("SELECT `first_name` FROM `users` WHERE `user_id` =  '".$user_id."'");
    $message = "Hi ".$user_name.", ";
    if($res && $trans_qry){
        db_commit_transaction();
        $resp['message'] = "successfully order placed";
        
        if(strtolower($_POST['mode']) == 'cod'){
            db_query("DELETE FROM `cart` WHERE `user_id` = '".$user_id."'");
			
			//Insert into offer used table (VJ 25-11-2021)
			if(!empty($offer_id))
				db_query("INSERT INTO `user_offers_used`(`user_id`, `order_id`, `offer_id`,`offer_code`, `offer_data`, `used_at`) VALUES ('".$user_id."','".$order_key."','".$offer_id."','".$offer['code']."','".json_encode($offer)."','".$now."')");
			
			//Updating items quantities after successfully placed the order (VJ 17-11-2021)
			foreach ($item_quantities as $item_id => $quantity) {
				$cur_item_quantity = sqlValue('SELECT `available_quantity` FROM `items` WHERE `item_id` = "'.$item_id.'"');
				$cur_item_quantity = $cur_item_quantity > 0 ? (int)$cur_item_quantity : 0;

				db_query('UPDATE `items` SET `available_quantity` = available_quantity - '.($quantity).' WHERE `item_id` = "'.$item_id.'"');
				db_query('INSERT INTO `items_quantities`(`item_id`, `quantity`, `quantity_type`, `type`, `current_quantity`, `added_at`, `added_by`) VALUES ("'.$item_id.'","'.$quantity.'","kgs","order","'.($cur_item_quantity - $quantity).'","'.$now.'","'.$_SESSION['usr_email'].'")');
			}
            $tokens = get_user_device_tokens($user_id,"user_id");
            $message .= "Your order has been placed successfully";
            if(!empty($tokens['android'])){
                $data = array("notification"=>array("title"=>"Organic Chicken","notify_type"=>"order","order_type"=>ORD_NEW_ORDER,"order_id"=>$order_key));
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
            $message .= "Order placing failed";
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