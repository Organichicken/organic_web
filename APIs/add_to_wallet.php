<?php
$API_ACCESS = true;
include("../lib.php");

//Include razorpay config files (VJ 05-06-21)
require('../razorpay/config.php');
require('../razorpay/razorpay-php/Razorpay.php');
use Razorpay\Api\Api;

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = array();

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);
if(empty($user_phone) || empty($user_hash_key)){
    send_response_warning(500,"phone or hash key is missing",array());
    exit;
}
if(empty($_POST['amount'])){
    send_response_warning(500,"amount cant be empty",array());
    exit;
}

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    
    $api = new Api($keyId, $keySecret);

    $walletData = [
        'receipt'         => 3456,
        'amount'          => makesafe($_POST['amount']) * 100, // amount rupees in paise
        'currency'        => 'INR' //Currency
    ];
    $razorpayOrder = $api->order->create($walletData);

    if(db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `razorpay_order_id`, `description`, `status`, `updated_at`) VALUES ('".$user_id."','+".db_escape($_POST['amount'])."','".$razorpayOrder['id']."','Added to wallet','pending','".date('Y-m-d H:i:s')."')")){
        $resp['message'] = "";
        $resp['razorpay_order_id'] = $razorpayOrder['id'];
        $resp['body'] = array();
    }else{
        $resp['status'] = 500;
        $resp['razorpay_order_id'] = '';
        $resp['message'] = "something went wrong";
    }
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>