<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = db_escape($_POST['phone']);
$hash_key = db_escape($_POST['hash_key']);

$resp = array();
$usr_qry = db_query("SELECT * FROM `delivery_users` WHERE `hash_key` = '".$hash_key."' AND `phone` = '".$user_phone."' LIMIT 1");

if($row = db_fetch_assoc($usr_qry)){
    $resp['status'] = 200;
    $resp['message'] = "orders data";
    
    $res = db_query("SELECT od.quantity as order_quantity,od.item_price,od.price,od.discount_price,it.item_name,it.item_id,it.item_image,o.status as order_status,o.order_key,o.order_data,o.order_at,o.delivery_date,o.delivery_slot,p.amount,p.mode,p.timestamp,p.status as payment_status FROM `order_details` as od LEFT OUTER JOIN items as it ON od.`item_id` = it.item_id LEFT OUTER JOIN orders as o ON o.`order_key` = od.order_id LEFT OUTER JOIN payments as p ON p.`order_id` = o.order_key WHERE o.delivery_user = '".makesafe($row['delivery_user_id'])."'");

    while ($row = db_fetch_assoc($res)) {
        $row['price'] = (string)round($row['price']);
        $row['discount_price'] = (string)round($row['discount_price']);
        $row['item_price'] = (string)round($row['item_price']);
        $row['amount'] = (string)round($row['amount']);

        $order_data = $row['order_data'] ? json_decode($row['order_data'],true) : array();
        unset($row['order_data']);
        $row['delivery_address'] = $order_data['address'];
        $data[$row['order_status']][] = $row;
    }

    $resp['current_orders'] = $data[ORD_ASSIGN_TO_DELIVERY] ? $data[ORD_ASSIGN_TO_DELIVERY] : array();
    $resp['delivered_orders'] = $data[ORD_DELIVERED] ? $data[ORD_DELIVERED] : array();
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid credentials";
    $resp['body'] = array();
}
echo json_encode($resp);
?>