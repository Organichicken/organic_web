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
}
$resp = $out_for_delivery_orders = $assigned_delivery_orders = array();
$usr_qry = db_query("SELECT * FROM `delivery_users` WHERE `hash_key` = '".$hash_key."' AND `phone` = '".$user_phone."' LIMIT 1");

if($row = db_fetch_assoc($usr_qry)){
    $resp['status'] = 200;
    $resp['message'] = "orders data";
    
    $res = db_query("SELECT od.quantity as order_quantity,o.final_order_price,od.item_price,od.price,od.discount_price,it.item_name,it.item_id,it.item_image,o.status as order_status,o.order_key,o.order_data,o.order_at,o.delivery_date,o.delivery_slot,p.amount,p.mode,p.timestamp,p.status as payment_status,u.`phone` FROM `order_details` as od LEFT OUTER JOIN items as it ON od.`item_id` = it.item_id LEFT OUTER JOIN orders as o ON o.`order_key` = od.order_id LEFT OUTER JOIN payments as p ON p.`order_id` = o.order_key LEFT OUTER JOIN users as u ON u.`user_id` = o.user_id WHERE o.delivery_user = '".makesafe($row['delivery_user_id'])."' ORDER BY o.last_updated_time DESC");
	
    while($row = db_fetch_assoc($res))
    {
        $items_data = $payment_data = $order_data = array();

        $items_data['item_id'] = $row['item_id'];
        $items_data['item_name'] = $row['item_name'];
        $items_data['item_image'] = $row['item_image'];
        $items_data['order_quantity'] = $row['order_quantity'];
        $items_data['price'] = (string)round($row['price']);
        $items_data['item_price'] = (string)round($row['item_price']);
        $items_data['discount_price'] = (string)round($row['discount_price']);
        
        $payment_data['amount'] = $row['amount'] ? $row['amount'] : '';
        $payment_data['mode'] = $row['mode'] ? $row['mode'] : '';
        $payment_data['timestamp'] = $row['timestamp'] ? $row['timestamp'] : '';
        $payment_data['payment_status'] = $row['payment_status'] ? $row['payment_status'] : '';
       
        $order_data['order_id'] = $row['order_key'];
        $order_data['order_status'] = $row['order_status'];
        $order_data['order_key'] = $row['order_key'];
        $order_data['order_at'] = $row['order_at'];
        $order_data['final_order_price'] = (string)round($row['final_order_price']);
        $order_data['delivery_slot'] = $row['delivery_slot'];
        $order_data['delivery_date'] = $row['delivery_date'];

        $orders_data[$row['order_key']]['items_data'][] = $items_data;
        $orders_data[$row['order_key']]['payment_data'] = $payment_data;
        $orders_data[$row['order_key']]['order_data'] = $order_data;
        $orders_data[$row['order_key']]['delivery_address'] = json_decode($row['order_data'],true)['address'] ? json_decode($row['order_data'],true)['address'] : (object)[];
        $orders_data[$row['order_key']]['delivery_address']['phone'] = $row['phone'];;
    }

    foreach ($orders_data as $order_key => $order) {
        $final_orders[$order['order_data']['order_status']][] = $order;
    }

    $out_for_delivery_orders = $final_orders[ORD_OUT_FOR_DELIVERY] ? $final_orders[ORD_OUT_FOR_DELIVERY] : array();
    $assigned_delivery_orders = $final_orders[ORD_ASSIGN_TO_DELIVERY] ? $final_orders[ORD_ASSIGN_TO_DELIVERY] : array();
    
    $resp['current_orders'] = array_merge($out_for_delivery_orders,$assigned_delivery_orders);
    $resp['delivered_orders'] = $final_orders[ORD_DELIVERED] ? $final_orders[ORD_DELIVERED] : array();
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid credentials";
    $resp['body'] = array();
}
echo json_encode($resp);
?>