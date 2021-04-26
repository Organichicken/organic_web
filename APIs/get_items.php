<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = makesafe($_POST['phone']);
$user_hash_key = makesafe($_POST['hash_key']);
$user_id = !empty($_POST['user_id']) ? makesafe($_POST['user_id']) : ''; 
if(!empty($user_phone) && !empty($user_hash_key) && !sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'")){
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
    echo json_encode($resp);
    exit;
}
$resp = $items_data = array();

$resp['status'] = 200;
$resp['message'] = "success";
if(isset($_POST['item_id']) && !empty($_POST['item_id'])){
    $resp['body'] = parse_items_data(get_items_data_for_api(makesafe($_POST['item_id']),$user_id));
}else if(isset($_POST['category_id']) && !empty($_POST['category_id'])){
    $resp['body']['items'] = parse_items_data(get_items_by_category(makesafe($_POST['category_id']),$user_id));
    $resp['body']['categories'] = get_categories_data();
}else{
    $resp['body'] = parse_items_data(get_items_data_for_api('',$user_id));
}

function parse_items_data($items_data){
    $items = array();
    foreach ($items_data as $row) {
        $item = array();
        $item['item_id'] = $row['item_id'];
        $item['item_name'] = $row['item_name'];
        $item['item_image'] = $row['item_image'];
        $item['item_description'] = $row['item_description'];
        $item['category_id'] = $row['category_id'];
        $item['no_of_pieces'] = $row['no_of_pieces'];
        $item['available_quantity'] = (string)round($row['available_quantity']);
        $item['price_per_unit'] = (string)round($row['price_per_unit']);
        $item['gross_weight'] = (string)round($row['gross_weight']);
        $item['net_weight'] = (string)round($row['net_weight']);
        $item['weight_type'] = (string)round($row['weight_type']);
        $item['discount_price'] = (string)round($row['discount_price']);   
        $item['serves'] = $row['serves'];
        $item['in_stock'] = $row['in_stock'];
        $item['recipe_id'] = $row['recipe_id'];
        $item['recipe_name'] = $row['recipe_name'];
        $item['cart_item_quantity'] = $row['cart_item_quantity'];
        
        $items[] = $item;
    }
    return $items;
}
echo json_encode($resp);
?>