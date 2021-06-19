<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['body'] = (object)[];
    if(!empty($_POST['order_id'])){
        if(order_handling(makesafe($_POST['order_id']),ORD_USER_CANCELED)){
            $resp['status'] = 200;
            $resp['message'] = "ordered canceled";
            $tokens = get_user_device_tokens($user_id,"user_id");
            $message = "Your order cancelled successfully.";
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
        $resp['status'] = 500;
        $resp['message'] = "invalid order id";
    }
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid credentials";
}
echo json_encode($resp);
?>