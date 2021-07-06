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
if(empty($user_phone) || empty($user_hash_key)){
    send_response_warning(500,"phone or hash key is missing",array());
    exit;
}
if(empty($_POST['item_id'])){
	send_response_warning(500,"item id cant be empty",array());
	exit;
}

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    db_query("DELETE FROM `cart` WHERE `item_id` = '".db_escape($_POST['item_id'])."' AND `user_id` = '".$user_id."'");
    if(empty($_POST['quantity']) || db_query("INSERT INTO `cart`(`cart_id`, `item_id`, `user_id`, `quantity`, `updated_at`) VALUES ('".generate_unique_id("cart")."','".db_escape($_POST['item_id'])."','".$user_id."','".db_escape($_POST['quantity'])."','".date('Y-m-d H:i:s')."')")){
        $resp['message'] = "success";

		$user_wallet = 0;
        $cart_data = array();
		$cart_data['items'] = array();
        if(!empty($_POST['cart_data'])){
			$actual_cart_total = $discount_cart_total = $final_cart_total = 0;
			$delivery_charges = get_meta_value("delivery_charges");
			$user_cart_data = get_user_cart_data(db_escape($user_id));
			// echo json_encode($user_cart_data);
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
		}
        $cart_data['cart_count'] = (string)sqlValue("SELECT COUNT(*) FROM `cart` as c LEFT OUTER JOIN items as it ON it.item_id = c.item_id WHERE user_id = '".db_escape($user_id)."'");
		$cart_data['wallet_amount'] = (string)$user_wallet;
        $resp['body'] = $cart_data;
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