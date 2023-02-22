<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = array();

$user_phone = makesafe($_POST['phone']);
$user_hash_key = makesafe($_POST['hash_key']);
if(empty($user_phone) || empty($user_hash_key)){
    send_response_warning(500,"phone or hash key is missing",array());
    exit;
}
$now = date('Y-m-d H:i:s');
if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    $resp['body'] = array();

    $order_key = makesafe($_POST['order_id']);
    $order_qry = db_query("SELECT `order_key`,`order_data`,`final_order_price`,`order_at` FROM `orders` WHERE `order_key` = '".$order_key."' LIMIT 1");
	$order_data = db_fetch_assoc($order_qry);
	$order_data = !empty($order_data) ? $order_data : array();
	$temp_order = $order_data['order_data'] ? json_decode($order_data['order_data'],true) : array();
	$order_offer = $temp_order['offer_data'] ? $temp_order['offer_data'] : array();
	
    if(strtolower($_POST['status']) == 'failed'){
        $resp['message'] = "order payment failed";
        db_query("INSERT INTO `payments`(`user_id`, `order_id`, `amount`, `razorpay_order_id`, `razorpay_signature`, `razorpay_payment_id`, `mode`, `status`, `timestamp`) VALUES ('".$user_id."','".$order_key."','".$order_data['final_order_price']."','".makesafe($order_data['razorpay_order_id'])."','".makesafe($_POST['razorpay_signature'])."','".makesafe($_POST['razorpay_payment_id'])."','".makesafe($_POST['mode'])."','".makesafe($_POST['status'])."','".$now."')");
        echo json_encode($resp);
        exit;
    }

    if(empty($_POST['status']) || empty($_POST['order_id']) || empty($_POST['razorpay_signature']) || empty($_POST['razorpay_payment_id'])){
        $resp['message'] = "order payment failed";
        echo json_encode($resp);
        exit;   
    }

    $temp_order['user_wallet'] = $temp_order['user_wallet'] ? $temp_order['user_wallet'] : 0;
    $temp_order['cashback'] = $temp_order['cashback'] ? $temp_order['cashback'] : 0;

    if(!empty($temp_order['cashback'])){
        db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','+".db_escape($temp_order['cashback'])."','Cash back received from order ".$order_key."','success','".$now."')");
    }
    if(!empty($temp_order['user_wallet'])){
        db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','-".$temp_order['user_wallet']."','Used wallet amount on order ".$order_key."','success','".$now."')");
    }
	
    //Insert payments data in database
    if(db_query("INSERT INTO `payments`(`user_id`, `order_id`, `amount`, `razorpay_order_id`, `razorpay_signature`, `razorpay_payment_id`, `mode`, `status`, `timestamp`) VALUES ('".$user_id."','".$order_key."','".$order_data['final_order_price']."','".makesafe($order_data['razorpay_order_id'])."','".makesafe($_POST['razorpay_signature'])."','".makesafe($_POST['razorpay_payment_id'])."','".makesafe($_POST['mode'])."','".makesafe($_POST['status'])."','".$now."')")){
        $resp['message'] = "order payment done successfully";
        db_query("DELETE FROM `cart` WHERE `user_id` = '".$user_id."'");
        db_query("UPDATE `orders` set `status` = '".ORD_NEW_ORDER."' ,`order_at` = '".$now."',`last_updated_time` = '".$now."' WHERE `order_key` = '".$order_key."'");
        
		//Adding items quantities back if user canceled the order (VJ 17-11-2021)
		foreach ($temp_order['item_quantities'] as $item_id => $quantity) {
			$cur_item_quantity = sqlValue('SELECT `available_quantity` FROM `items` WHERE `item_id` = "'.$item_id.'"');
			$cur_item_quantity = $cur_item_quantity > 0 ? (int)$cur_item_quantity : 0;

			db_query('UPDATE `items` SET `available_quantity` = available_quantity - '.($quantity).' WHERE `item_id` = "'.$item_id.'"');
			db_query('INSERT INTO `items_quantities`(`item_id`, `quantity`, `quantity_type`, `type`, `current_quantity`, `added_at`, `added_by`) VALUES ("'.$item_id.'","'.$quantity.'","kgs","order","'.($cur_item_quantity - $quantity).'","'.$now.'","")');
		}
		
		//Insert into offer used table (VJ 25-11-2021)
		if(!empty($order_offer))
			db_query("INSERT INTO `user_offers_used`(`user_id`, `order_id`, `offer_id`,`offer_code`, `offer_data`, `used_at`) VALUES ('".$user_id."','".$order_key."','".$order_offer['offer_id']."','".$order_offer['code']."','".json_encode($order_offer)."','".$now."')");
			
        $resp['body'] = array();
        $user_name = sqlValue("SELECT `first_name` FROM `users` WHERE `user_id` =  '".$user_id."'");
        $message = "Hi ".$user_name.", ";
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
    }else{
        $resp['status'] = 500;
        $resp['message'] = "something went wrong";
    }
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
}
echo json_encode($resp);
?>