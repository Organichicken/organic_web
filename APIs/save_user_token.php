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

    if(db_query("SELECT COUNT(*) FROM `fcm_tokens` WHERE `user_id` = '".$user_id."'"))
        $res = db_query("UPDATE `fcm_tokens` SET `token` = '".makesafe($_POST['token'])."',`device` = '".makesafe($_POST['device'])."',`updated_at` = '".date('Y-m-d H:i:s')."' WHERE `user_id` = '".$user_id."'");
    else
        $res = db_query("INSERT INTO `fcm_tokens` ( `user_id`, `token`, `device`, `updated_at`) VALUES ('".makesafe($user_id)."','".makesafe($_POST['token'])."','".makesafe($_POST['device'])."','".date('Y-m-d H:i:s')."')");

    if($res){
        $resp['message'] = "successfully saved";
        $resp['body'] = (object)[];
    }else{
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