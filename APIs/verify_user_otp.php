<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = db_escape($_POST['phone']);
$user_otp = db_escape($_POST['otp']);

$resp = array();

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `otp` = '".$user_otp."' AND `user_phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    $resp['message'] = "valid OTP";
    if(db_query("UPDATE `employee_otp_key` SET `nkey`= '".md5($user_phone.date('Y-m-d H:i:s'))."',`nkey_updated_at`= '".date('Y-m-d H:i:s')."' WHERE `user_phone` = '".$user_phone."'")){
        $resp['body'] = array('nkey' => md5($user_phone.date('Y-m-d H:i:s')));
    }else{
        $resp['status'] = 500;
        $resp['message'] = "something went wrong";
    }
}else{
    $resp['status'] = 404;
    $resp['message'] = "Invalid OTP";
    $resp['body'] = array();
}
echo json_encode($resp);
?>