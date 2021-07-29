<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = db_escape($_POST['phone']);
$hash_key = db_escape($_POST['hash_key']);
if(empty($user_phone) || empty($hash_key)){
    send_response_warning(500,"phone or hash key is missing",array());
    exit;
}if(empty($_POST['order_type'])){
    send_response_warning(500,"order type is missing",array());
    exit;
}

$resp = array();
$usr_qry = db_query("SELECT `delivery_user_id` FROM `delivery_users` WHERE `hash_key` = '".$hash_key."' AND `phone` = '".$user_phone."' LIMIT 1");
$resp['body'] = array();

if($row = db_fetch_assoc($usr_qry) && $order_id = makesafe($_POST['order_id'])){
    $user_id = sqlValue("SELECT `user_id` FROM `orders` WHERE `order_key` = '".$order_id."'");
    if(makesafe($_POST['order_type']) == 'order_delivered' && order_handling($order_id,ORD_DELIVERED)){
        $resp['status'] = 200;
        $resp['message'] = "ordered delivered";
    }else if(makesafe($_POST['order_type']) == 'out_for_delivery' && order_handling($order_id,ORD_OUT_FOR_DELIVERY)){
        $resp['status'] = 200;
        $resp['message'] = "order is out for delivery";
    }else{
        $resp['status'] = 500;
        $resp['message'] = "something went wrong";
    }
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid credentials";
}
echo json_encode($resp);
?>