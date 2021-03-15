<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = db_escape($_POST['phone']);
// echo "SELECT user_id FROM `users` WHERE `phone` = '".$user_phone."'";
$resp = array();
$six_digit_random_number = mt_rand(100000, 999999);

if(sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    $resp['message'] = "valid user";
    if(sqlValue("SELECT `otp` FROM `employee_otp_key` WHERE `user_phone` = '".$user_phone."'")){
        if(db_query("UPDATE `employee_otp_key` SET `otp`= '".$six_digit_random_number."',`otp_created_at`= '".date('Y-m-d H:i:s')."' WHERE `user_phone` = '".$user_phone."'")){
            $resp['body'] = array('otp' => $six_digit_random_number);
        }else{
            $resp['status'] = 500;
            $resp['message'] = "something went wrong";
        }
    }else{
        if(db_query("INSERT INTO `employee_otp_key`(`user_phone`, `otp`, `otp_created_at`) VALUES ('".$user_phone."','".$six_digit_random_number."','".date('Y-m-d H:i:s')."')")){
            $resp['body'] = array('otp' => $six_digit_random_number);
        }else{
            $resp['status'] = 500;
            $resp['message'] = "something went wrong";
        }
    }        
}else{
    $resp['status'] = 404;
    $resp['message'] = "User doesnt exists";
    $resp['body'] = array();
}
echo json_encode($resp);
?>