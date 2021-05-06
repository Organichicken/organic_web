<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = array();

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    if(db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `transaction_id`, `description`, `status`, `updated_at`) VALUES ('".db_escape($_POST['user_id'])."','+".db_escape($_POST['amount'])."','".db_escape($_POST['transaction_id'])."','Added to wallet','".db_escape($_POST['status'])."','".date('Y-m-d H:i:s')."')")){
        $resp['message'] = "successfully amount added to wallet";
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