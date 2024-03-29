<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);

if(empty($user_phone) || empty($user_hash_key)){
    send_response_warning(500,"phone or hash key is missing",array());
    exit;
}

if(empty($_POST['order_id'])){
    $resp['status'] = 500;
    $resp['message'] = "invalid order id";
    echo json_encode($resp);
    exit;
}
if(!empty($user_hash_key) && !empty($user_phone) && sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['body'] = (object)[];

    $order_key = makesafe($_POST['order_id']);
    if(order_handling($order_key,ORD_USER_CANCELED)){
        $resp['status'] = 200;
        $resp['message'] = "ordered canceled";

        $now = date('Y-m-d H:i:s');
        //Get cancelled order data (VJ 23-06-21)
        $order_data = sqlr("SELECT `order_key`,`order_data`,`order_at` FROM `orders` WHERE `order_key` = '".$order_key."' LIMIT 1");
        $temp_order = $order_data['order_data'] ? json_decode($order_data['order_data'],true) : array();
        $temp_order['user_wallet'] = $temp_order['user_wallet'] ? $temp_order['user_wallet'] : 0;
        $temp_order['cashback'] = $temp_order['cashback'] ? $temp_order['cashback'] : 0;
		$order_offer = $temp_order['offer_data'] ? $temp_order['offer_data'] : array();
		
		//Remove offer used from db when cancellation (VJ 02-12-2021)
		if(!empty($order_offer))
			db_query("DELETE FROM `user_offers_used` WHERE `user_id` = '".$user_id."' AND `offer_id` = '".$order_offer['offer_id']."' AND `offer_code` = '".$order_offer['code']."'");
        //Remove cashback when order canceled (VJ 23-06-21)
        if(!empty($temp_order['cashback'])){
            db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','-".db_escape($temp_order['cashback'])."','Deducting cashback for cancelled order ".$order_key."','success','".$now."')");
        }
        //Add used wallet amount back to users wallet (VJ 23-06-21)
        if(!empty($temp_order['user_wallet'])){
            db_query("INSERT INTO `user_wallet`(`user_id`, `amount`, `description`, `status`, `updated_at`) VALUES ('".db_escape($user_id)."','+".$temp_order['user_wallet']."','Wallet amount added back for cancelled order ".$order_key."','success','".$now."')");
        }
		//Adding items quantities back if user canceled the order (VJ 17-11-2021)
		foreach ($temp_order['item_quantities'] as $item_id => $quantity) {
			db_query('UPDATE `items` SET `available_quantity` = available_quantity + '.$quantity.' WHERE `item_id` = "'.$item_id.'"');
			db_query("DELETE FROM `items_quantities` WHERE `item_id` = '".$item_id."' AND `added_at` = '".$order_data['order_at']."'");
		}
		//Saving user cancellation msg (VJ 08-10-2021)
        $temp_order['cancellation_msg'] = makesafe($_POST['cancel_msg']);
        db_query("UPDATE `orders` set `order_data` = '".json_encode($temp_order)."',`last_updated_time` = '".date('Y-m-d H:i:s')."' WHERE `order_key` = '".$order_key."'");
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