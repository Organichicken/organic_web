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

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;

    if(empty($_POST['razorpay_order_id'])){
        $resp['status'] = 500;
        $resp['message'] = "razorpay_order_id cant be empty";
        echo json_encode($resp);
        exit;
    }
    $res = db_query("SELECT member_ship_end FROM `user_member_ship_data` WHERE `user_id` = '".$user_id."' AND `razorpay_order_id` = '".makesafe($_POST['razorpay_order_id'])."' LIMIT 1");
    if($row = db_fetch_assoc($res)){
        if(db_query("UPDATE `user_member_ship_data` SET `razorpay_signature` = '".makesafe($_POST['razorpay_signature'])."',`razorpay_payment_id` = '".makesafe($_POST['razorpay_order_id'])."',`payment_status`='".makesafe($_POST['status'])."',`payment_type`='".makesafe($_POST['mode'])."',`updated_at`='".date('Y-m-d H:i:s')."' WHERE `user_id` = '".$user_id."' AND `razorpay_order_id` = '".makesafe($_POST['razorpay_order_id'])."'")){
            if($_POST['status'] == 'success'){
                db_query("UPDATE `users` SET `is_member`='1',`membership_ends`='".$row['member_ship_end']."',`last_updated_at`='".date('Y-m-d H:i:s')."' WHERE `user_id` = '".$user_id."'");
				$resp['message'] = "successfully member ship activated";
            }else if($_POST['status'] == 'Failed'){
				$resp['message'] = "member ship activated failed";
			}
            
            $resp['body'] = array();
        }else{
            $resp['status'] = 500;
            $resp['message'] = "something went wrong";
        }
    }else{
        $resp['status'] = 500;
        $resp['message'] = "invalid razorpay_order_id";
    }
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>