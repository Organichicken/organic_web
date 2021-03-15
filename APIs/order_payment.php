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

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    if(db_query("INSERT INTO `payments`(`user_id`, `order_id`, `amount`, `transaction_id`, `mode`, `status`, `timestamp` ) VALUES ('".makesafe($_POST['user_id'])."','".makesafe($_POST['order_id'])."','".makesafe($_POST['amount'])."','".makesafe($_POST['transaction_id'])."','".makesafe($_POST['mode'])."','".makesafe($_POST['status'])."','".date('Y-m-d H:i:s')."')")){
        $resp['message'] = "successfully saved";
        $resp['body'] = array();
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