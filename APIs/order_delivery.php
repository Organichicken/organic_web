<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = db_escape($_POST['phone']);
$hash_key = db_escape($_POST['hash_key']);

$resp = array();
$usr_qry = db_query("SELECT `delivery_user_id` FROM `delivery_users` WHERE `hash_key` = '".$hash_key."' AND `phone` = '".$user_phone."' LIMIT 1");
$resp['body'] = array();

if($row = db_fetch_assoc($usr_qry) && $order_id = makesafe($_POST['order_id'])){
    $user_id = sqlValue("SELECT `user_id` FROM `orders` WHERE `order_key` = '".$order_id."'");
    if(makesafe($_POST['order_type']) == 'order_delivered' && order_handling($order_id,ORD_DELIVERED)){
        $resp['status'] = 200;
        $resp['message'] = "ordered delivered";
    
        $tokens = get_user_device_tokens($user_id,"user_id");
        $message = "Your order is successfully delivered.";
        if(!empty($tokens['android'])){
            $data = array("notification"=>array("title"=>"Organic Chicken","notify_type"=>"order"));
            send_android_push_notification($tokens['android'], $message, $data);
        }
        if(!empty($tokens['ios'])){
            // $json_string_payload='{"aps":	{ "alert": { "action-loc-key": "Open","body": "'.$message.'"},"badge": 1,"content-available": 1},"notify_type":"order"}';
			// $result1 = send_apple_push_notifications($tokens['ios'],$json_string_payload);
        }
    }else if(makesafe($_POST['order_type']) == 'order_start' && order_handling(makesafe($_POST['order_id']),ORD_OUT_FOR_DELIVERY)){
        $resp['status'] = 200;
        $resp['message'] = "ordered started";
        $tokens = get_user_device_tokens($user_id,"user_id");
        $message = "Your order is out for delivery";
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
    $resp['message'] = "invalid credentials";
}
echo json_encode($resp);
?>