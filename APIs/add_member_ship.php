<?php
$API_ACCESS = true;
include("../lib.php");

//Include razorpay config files (VJ 19-06-21)
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

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;

    $plans_data = get_meta_value('member_ship_plans');
    $plans_data = $plans_data ? json_decode($plans_data,true) : array();
    $plan_data = array();
    // echo $_POST['plan_id'];
    foreach ($plans_data as $plan) {
        if($plan['id'] == $_POST['plan_id']){
            $plan_data = $plan;
        }
    }
    if(empty($plan_data)){
        $resp['status'] = 500;
        $resp['message'] = "invalid plan";
        echo json_encode($resp);
        exit;
    }

    $api = new Api($keyId, $keySecret);

    $member_ship_data = [
        'receipt'         => 6789,
        'amount'          => makesafe($plan_data['plan_price']) * 100, // amount rupees in paise
        'currency'        => 'INR' //Currency
    ];
    $razorpayOrder = $api->order->create($member_ship_data);
    $plan_start = date('Y-m-d H:i:s');
    if($plan_data['plan_days'] <= 45){
        $plan_end = date('Y-m-d H:i:s',strtotime($plan_start.' + '.$plan_data['plan_days'].' day'));
    }else if($plan_data['plan_days'] < 365){
        $plan_end = date('Y-m-d H:i:s',strtotime($plan_start.' + '.$plan_data['plan_days']/30 .' month'));
    }else if($plan_data['plan_days'] >= 365){
        $plan_end = date('Y-m-d H:i:s',strtotime($plan_start.' + '.$plan_data['plan_days']/365 .' year'));
    }

    if(db_query("INSERT INTO `user_member_ship_data`(`user_id`, `razorpay_order_id`, `amount`, `member_ship_start`, `member_ship_end`, `payment_status`, `updated_at`, `extra_data`) VALUES ('".$user_id."','".$razorpayOrder['id']."','".db_escape($plan_data['plan_price'])."','".$plan_start."','".$plan_end."','pending','".date('Y-m-d H:i:s')."','".json_encode($plan_data)."')")){
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