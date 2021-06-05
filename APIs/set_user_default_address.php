<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = makesafe($_POST['phone']);
$user_hash_key = makesafe($_POST['hash_key']);

$resp = array();

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    
    $res = db_query("UPDATE `address` SET `is_default_address` = '0',`updated_at` = '".date('Y-m-d H:i:s')."' WHERE `user_id` = '".$user_id."'");
    $res1 =  db_query("UPDATE `address` SET `is_default_address` = '1',`updated_at` = '".date('Y-m-d H:i:s')."' WHERE `address_id` = '".makesafe($_POST['address_id'])."' AND `user_id` = '".$user_id."'");

    if($res && $res1){
        $resp['status'] = 200;
        $resp['message'] = "success";
    }else{
        $resp['status'] = 500;
        $resp['message'] = "fail";
    }
    $resp['body'] = array();
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}

echo json_encode($resp);
?>