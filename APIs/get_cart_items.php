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

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $user_info = sqlr("SELECT `first_name`, `is_member`, `membership_ends` FROM `users` WHERE user_id = '".$user_id."' LIMIT 1");
    
    $resp['status'] = 200;
    $resp['message'] = "cart details";
    $cart_data = array();
    
    //Set premium member variable (VJ 19-07-2021)
    $premium_discount_price = $is_premium_member = 0;
    if($user_info['is_member'] == '1' && strtotime($user_info['membership_ends']) > strtotime(date('Y-m-d H:i:s'))) $is_premium_member = 1;
    $actual_cart_total = $discount_cart_total = $final_cart_total = 0;
    $items_cnt = array();
    //Get and store global meta data here
    $global_meta_data = get_meta_values(array('delivery_charges','min_cart_val'));
    
    $min_cart_val = $global_meta_data['min_cart_val'];
	//Added user default address to response (VJ 01-03-2022)
    $user_cart_data = get_user_cart_data(db_escape($user_id));
	if($_POST['address_id']){
		$user_default_address = sqlr("SELECT `phone`, `alternative_phone`, `house_no`, `building_name`, `street`, `landmark`, `pincode`, `address`, `city`, `address_type`, `latitude`, `longitude` FROM `address` WHERE address_id = '".makesafe($_POST['address_id'])."'");
	}else{
		$user_default_address = sqlr("SELECT `address_id`, `phone`, `alternative_phone`, `house_no`, `building_name`, `street`, `landmark`, `pincode`, `address`, `latitude`, `longitude`, `city`, `address_type` FROM `address` WHERE user_id = '".$user_id."' AND is_default_address = '1' LIMIT 1");
	}

	//Setting delivery charge based on pincode (VJ 01-03-2022)
    $pincode_delivery_charge = (array)$user_default_address ? get_delivery_charge_pincode($user_default_address['pincode']) : 0;
    $delivery_charges = $pincode_delivery_charge ? $pincode_delivery_charge : $global_meta_data['delivery_charges'];

    foreach ($user_cart_data as $row) {
        $items_cnt[$row['item_id']] = $items_cnt[$row['item_id']] ? 0 : ++$items_cnt[$row['item_id']];
    }
    if($_POST['offer_id'] == '#OCOFR_i32Jo' && $items_cnt['#OCITM_TDY5G'] > 0 && $items_cnt['#OCITM_WoLr9'] < 1){
        db_query("INSERT INTO `cart`(`cart_id`, `item_id`, `user_id`, `quantity`, `updated_at`) VALUES ('".generate_unique_id("cart")."','#OCITM_WoLr9','".$user_id."','1','".date('Y-m-d H:i:s')."')");
    }
    if($_POST['offer_id'] == '#OCOFR_4Nlnw' && $items_cnt['#OCITM_VjyaH'] > 0 && $items_cnt['#OCITM_WoLr9'] < 1){
        db_query("INSERT INTO `cart`(`cart_id`, `item_id`, `user_id`, `quantity`, `updated_at`) VALUES ('".generate_unique_id("cart")."','#OCITM_WoLr9','".$user_id."','1','".date('Y-m-d H:i:s')."')");
    }
	$user_cart_data = get_user_cart_data(db_escape($user_id));

    $user_wallet = sqlValue("SELECT SUM(`amount`) FROM `user_wallet` WHERE `user_id` = '".$user_id."' AND `status` = 'success'");
    $user_wallet = $user_wallet ? $user_wallet : 0;
    $items_cnt = array();
    foreach ($user_cart_data as $row) {
        $item = $row;
        
        $item['quantity'] = (string)round($row['quantity']);
        $item['price_per_unit'] = (string)round($row['price_per_unit']);
        $item['net_weight'] = (string)round($row['net_weight']);
        $item['discount_price'] = (string)round($row['discount_price']);   
        $item['item_final_price'] = (string)($row['quantity'] * $row['discount_price']);   
        
        $actual_cart_total += $item['item_final_price'];
        $discount_cart_total += ($item['price_per_unit'] - $item['discount_price']) * $item['quantity'];
        $final_cart_total += $item['item_final_price'];
        $cart_data['items'][] = $item;
        $items_cnt[$row['item_id']] = $items_cnt[$row['item_id']] ? 0 : ++$items_cnt[$row['item_id']];
    }
    //Not adding delivery charge is cart value is more that min cart value (VJ 25-05-21)
    if($is_premium_member > 0 || $final_cart_total >= $min_cart_val){
        $delivery_charges = 0;
    }else{
        $final_cart_total += $delivery_charges;
    }

    $cart_offer = array();
    $cart_offer['msg'] = '';
    $cart_offer['status'] = $cart_offer['offer_price'] = $cart_offer['cashback'] = '0';
    if($user_cart_data){
        //Offer calculation
        if(!empty($_POST['offer_id'])){
            $offer = get_offers_data($_POST['offer_id'])[0];
            if($offer['status'] == "1"){
				if($offer['offer_id'] == '#OCOFR_i32Jo'){
                    if($items_cnt['#OCITM_TDY5G'] < 1 || $items_cnt['#OCITM_WoLr9'] < 1){
                        echo json_encode(array('status'=>404,'message'=>'Coupon cant work on these cart items. Please check the offer description once.'));
						exit;
                    }
				}
				if($offer['offer_id'] == '#OCOFR_4Nlnw'){
                    if($items_cnt['#OCITM_VjyaH'] < 1 || $items_cnt['#OCITM_WoLr9'] < 1){
                        echo json_encode(array('status'=>404,'message'=>'Coupon cant work on these cart items. Please check the offer description once.'));
						exit;
                    }
				}
				if(sqlValue("SELECT COUNT(*) FROM `user_offers_used` WHERE `user_id` = '".$user_id."' AND `offer_id` = '".$offer['offer_id']."' AND `offer_code` = '".$offer['code']."'")){
					echo json_encode(array('status'=>404,'message'=>'Sorry! You have applied already '.$offer['code'].' coupon code before.'));
					exit;
				}
				if(strtotime($offer['offer_end']) >= strtotime(date('Y-m-d H:i:s'))){
					if($final_cart_total >= $offer['min_order_price']){
						$cart_offer['status'] = '1';
						$cart_offer['offer_price'] = $offer['offer_price'];
						if(empty($offer['discount'])){
							// $cart_offer['offer_price'] -= $offer['offer_price'];
						}else{
							$offer_price = round(($final_cart_total * $offer['discount'] / 100));
							if($offer_price < $offer['offer_price']){
								$cart_offer['offer_price'] = $offer_price;
							}else{
								$cart_offer['offer_price'] = $offer['offer_price'];
							}
						}
						
						if($offer['type'] == 'discount'){
						   $cart_offer['cashback'] = '0';
						   $cart_offer['offer_price'] = (string)round($cart_offer['offer_price']);
						}else{
							$cart_offer['cashback'] = (string)round($cart_offer['offer_price']);
							$cart_offer['offer_price'] = '0';
						}
						$final_cart_total -= $cart_offer['offer_price'];
					}else{
						$cart_offer['status'] = '0';
						$cart_offer['msg'] = 'to get this offer min order is '.$offer['min_order_price'];
					}
				}else{
					$cart_offer['status'] = '0';
					$cart_offer['msg'] = 'offer expired';
				}
            }else{
                $cart_offer['status'] = '0';
                $cart_offer['msg'] = 'invalid offer';
            }    
        }
        $cart_data['used_wallet'] = 0;
        //Premium calculation
        if($is_premium_member){
            $premium_discount_price = round(($final_cart_total * 5 / 100));
            $final_cart_total -= $premium_discount_price;
        }
        //Wallet calculation
        if(!empty($_POST['use_wallet'] && $_POST['use_wallet'] == '1')){
            if($user_wallet > $final_cart_total){
                $cart_data['used_wallet'] = $final_cart_total;
                $final_cart_total = 0;
            }else{
                $final_cart_total -= $user_wallet;
                $cart_data['used_wallet'] = $user_wallet;
            }
        }
        $cart_data['actual_cart_total'] = (string)$actual_cart_total;
        $cart_data['discount_cart_total'] = (string)$discount_cart_total;
        $cart_data['delivery_charges'] = (string)$delivery_charges;
        $cart_data['final_cart_total'] = (string)($final_cart_total);
    }else{
        $cart_data['actual_cart_total'] = $cart_data['discount_cart_total'] = $cart_data['delivery_charges'] = $cart_data['final_cart_total'] = $cart_data['used_wallet'] = '0';
		$cart_data['items'] = array();
    }
    
    $cart_data['wallet_amount'] = (string)($user_wallet - $cart_data['used_wallet']);
    $cart_data['min_cart_value'] = (string)$min_cart_val;
    $cart_data['offer_details'] = $cart_offer;
    $cart_data['taxes_charges'] = "0";
    $cart_data['premium_discount_price'] = (string)$premium_discount_price;
    $cart_data['user_default_address'] = $user_default_address;

    //Set delivery slots
    $delivery_date = date('Y-m-d H:i:s');
    // $delivery_date = date('Y-12-07 00:00:00');
    // $delivery_slots = array("7:00 AM - 9:00 AM","10:00 AM - 12:00 PM","01:00 PM - 3:00 PM","4:00 PM - 6:00 PM");
	$delivery_slots = array("8:00 AM - 11:00 AM","11:00 AM - 03:00 PM","3:00 PM - 6:00 PM");
    $final_delivery_slots = $today_slots = array();

    foreach ($delivery_slots as $slot) {
        $time_slots = explode(' - ',$slot);
        $delivery_start = date('Y-m-d H:i:s',strtotime(date('Y-m-d').trim($time_slots[0])));
        if(strtotime($delivery_date) < strtotime($delivery_start)){
            array_push($today_slots,$slot);
        }
    }
    $i = 0;
    if(!empty($today_slots)){
        $final_delivery_slots[] = array("date" => date('Y-m-d'),"slots"=>$today_slots);
        $i = 1;
    }
    while($i<5){
        $delivery_date = date('Y-m-d',strtotime($delivery_date.'+1 day'));
        $final_delivery_slots[] = array("date" => $delivery_date,"slots"=>$delivery_slots);
        $i++;
    }
    $cart_data['delivery_slots'] = $final_delivery_slots;
    $resp['body'] = $cart_data;
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>