<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = makesafe($_POST['phone']);
$user_hash_key = makesafe($_POST['hash_key']);

$resp = $data = array();

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'")){

    $res = db_query("SELECT od.quantity as order_quantity,o.order_id,od.item_price,od.price,od.discount_price,it.item_name,it.item_id,it.item_image,o.status as order_status,o.order_key,o.order_at,p.amount,p.mode,p.timestamp,p.status as payment_status,ors.rating,ors.review,ors.created_at as review_at,ors.id as rating_id FROM `order_details` as od LEFT OUTER JOIN items as it ON od.`item_id` = it.item_id LEFT OUTER JOIN orders as o ON o.`order_id` = od.order_id LEFT OUTER JOIN payments as p ON p.`order_id` = o.order_id LEFT OUTER JOIN order_ratings as ors ON ors.`order_id` = o.order_id WHERE o.user_id = ".makesafe($_POST['user_id']));
    while($row = db_fetch_assoc($res))
    {
        $items_data = $payment_data = $ratings_data = $order_data = array();

        $items_data['item_id'] = $row['item_id'];
        $items_data['item_name'] = $row['item_name'];
        $items_data['item_image'] = $row['item_image'];
        $items_data['order_quantity'] = $row['order_quantity'];
        $items_data['item_price'] = $row['item_price'];
        $items_data['price'] = $row['price'];
        $items_data['discount_price'] = $row['discount_price'];
        
        $payment_data['amount'] = $row['amount'];
        $payment_data['mode'] = $row['mode'];
        $payment_data['timestamp'] = $row['timestamp'];
        $payment_data['payment_status'] = $row['payment_status'];
        
        $ratings_data['rating_id'] = $row['rating_id'];
        $ratings_data['rating'] = $row['rating'];
        $ratings_data['review'] = $row['review'];
        $ratings_data['review_at'] = $row['review_at'];
       
        $order_data['order_id'] = $row['order_id'];
        $order_data['order_status'] = $row['order_status'];
        $order_data['order_key'] = $row['order_key'];
        $order_data['order_at'] = $row['order_at'];

        $orders_data[$row['order_key']]['items_data'][] = $items_data;
        $orders_data[$row['order_key']]['payment_data'] = $payment_data;
        $orders_data[$row['order_key']]['ratings_data'] = $ratings_data;
        $orders_data[$row['order_key']]['order_data'] = $order_data;
    }

    $resp['status'] = 200;
    $resp['message'] = "success";
    $resp['body'] = $orders_data;
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>