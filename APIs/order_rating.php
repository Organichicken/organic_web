<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = $items_data = array();

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);
if(empty($user_phone) || empty($user_hash_key)){
    send_response_warning(500,"phone or hash key is missing",array());
    exit;
}

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    if(db_query("INSERT INTO `order_ratings`(`user_id`, `order_id`, `rating`, `review`, `created_at`) VALUES ('".$user_id."','".db_escape($_POST['order_id'])."','".db_escape($_POST['rating'])."','".db_escape($_POST['review'])."','".date('Y-m-d H:i:s')."')")){
        $resp['message'] = "successfully order review added";
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