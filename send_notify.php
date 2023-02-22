<?php 
//importing required files
include('lib.php');

$tokens = get_user_device_tokens('#OCUSR_JtIKX',"user_id");
// echo json_encode($tokens);
$data = array("notification"=>array("title"=>"Organic Chicken","notify_type"=>"order"));
$message = "Order placed";
send_android_push_notification($tokens['android'], $message, $data);
?>