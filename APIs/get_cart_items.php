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
    $resp['message'] = "cart details";
    $cart_data = (object)array();
    $actual_cart_total = $discount_cart_total = $final_cart_total = 0;
    $delivery_charges = "25";
    $user_cart_data = get_user_cart_data(db_escape($_POST['user_id']));
    foreach ($user_cart_data as $row) {
        $item = $row;
        
        $item['quantity'] = (string)round($row['quantity']);
        $item['price_per_unit'] = (string)round($row['price_per_unit']);
        $item['net_weight'] = (string)round($row['net_weight']);
        $item['discount_price'] = (string)round($row['discount_price']);   
        $item['item_final_price'] = (string)($item['quantity'] * $item['discount_price']);   
        
        $actual_cart_total += $item['item_final_price'];
        $discount_cart_total += ($item['price_per_unit'] - $item['discount_price']) * $item['quantity'];
        $final_cart_total += $item['item_final_price'];
        $cart_data['items'][] = $item;
    }
    if($user_cart_data){
        $cart_data['actual_cart_total'] = (string)$actual_cart_total;
        $cart_data['discount_cart_total'] = (string)$discount_cart_total;
        $cart_data['delivery_charges'] = (string)$delivery_charges;
        $cart_data['final_cart_total'] = (string)($final_cart_total + $delivery_charges);
    }
    $resp['body'] = $cart_data;
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>