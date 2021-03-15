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
    db_query("DELETE FROM `cart` WHERE `item_id` = '".db_escape($_POST['user_id'])."' AND `user_id` = '".db_escape($_POST['item_id'])."'");
    if(db_query("INSERT INTO `cart`(`item_id`, `user_id`, `quantity`, `updated_at`) VALUES ('".db_escape($_POST['item_id'])."','".db_escape($_POST['user_id'])."','".db_escape($_POST['quantity'])."','".date('Y-m-d H:i:s')."')")){
        $resp['message'] = "successfully added to cart";
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