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

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    $resp['body'] = array();

    $now = date('Y-m-d H:i:s');
    $order_key = makesafe($_POST['order_id']);
    $order_data = sqlr("SELECT `order_key`,`order_data`,`final_order_price` FROM `orders` WHERE `order_key` = '".$order_key."' LIMIT 1");

    $temp_order = $order_data['order_data'] ? json_decode($order_data['order_data'],true) : array();
    $temp_order['user_wallet'] = $temp_order['user_wallet'] ? $temp_order['user_wallet'] : 0;
    $temp_order['cashback'] = $temp_order['cashback'] ? $temp_order['cashback'] : 0;

    if(!empty($temp_order['cashback'])){
        db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','+".db_escape($temp_order['cashback'])."','Cash back received from order ".$order_key."','success','".$now."')");
    }
    if(!empty($temp_order['user_wallet'])){
        db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','-".$temp_order['user_wallet']."','Used wallet amount on order ".$order_key."','success','".$now."')");
    }

    //Get order data for given order id
    if(db_query("INSERT INTO `payments`(`user_id`, `order_id`, `amount`, `razorpay_order_id`, `razorpay_signature`, `razorpay_payment_id`, `mode`, `status`, `timestamp`) VALUES ('".$user_id."','".$order_key."','".$order_data['final_order_price']."','".makesafe($order_data['razorpay_order_id'])."','".makesafe($_POST['razorpay_signature'])."','".makesafe($_POST['razorpay_payment_id'])."','".makesafe($_POST['mode'])."','".makesafe($_POST['status'])."','".date('Y-m-d H:i:s')."')")){
        db_query("DELETE FROM `cart` WHERE `user_id` = '".$user_id."'");
        $resp['message'] = "successfully saved";
        $resp['body'] = array();
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