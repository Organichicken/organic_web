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

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;

    if(empty($_POST['razorpay_order_id'])){
        $resp['status'] = 500;
        $resp['message'] = "razorpay_order_id cant be empty";
        echo json_encode($resp);
        exit;
    }
    if(sqlValue("SELECT COUNT(*) FROM `user_wallet` WHERE `user_id` = '".$user_id."' AND `razorpay_order_id` = '".makesafe($_POST['razorpay_order_id'])."'")){
        if(db_query("UPDATE `user_wallet` SET `razorpay_signature` = '".makesafe($_POST['razorpay_signature'])."',`razorpay_payment_id` = '".makesafe($_POST['razorpay_order_id'])."',`status`='success',`updated_at`='".date('Y-m-d H:i:s')."' WHERE `user_id` = '".$user_id."' AND `razorpay_order_id` = '".makesafe($_POST['razorpay_order_id'])."'")){
            $resp['message'] = "successfully added to wallet";
            $resp['body'] = array();
        }else{
            $resp['status'] = 500;
            $resp['razorpay_order_id'] = '';
            $resp['message'] = "something went wrong";
        }
    }else{
        $resp['status'] = 500;
        $resp['razorpay_order_id'] = '';
        $resp['message'] = "invalid razorpay_order_id";
    }
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>