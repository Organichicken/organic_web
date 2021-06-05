<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = makesafe($_POST['phone']);
$user_hash_key = makesafe($_POST['hash_key']);

$resp = $data = array();

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    
    $data['user_info'] = sqlr("SELECT `user_id`, `first_name`, `email`, `phone`, `profile_pic`, `active`, `is_member`, `membership_ends` FROM `users` WHERE user_id = '".$user_id."' LIMIT 1");
    $data['user_address'] = sqlr("SELECT `user_id`, `address_id`, `name`, `phone`, `alternative_phone`, `house_no`, `building_name`, `street`, `landmark`, `pincode`, `locality`, `city`, `address_type`, `is_default_address` FROM `address` WHERE user_id = '".$user_id."' AND is_default_address = '1' LIMIT 1");
    
    $resp['status'] = 200;
    $resp['message'] = "success";
    $resp['body'] = $data;
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}

echo json_encode($resp);
?>