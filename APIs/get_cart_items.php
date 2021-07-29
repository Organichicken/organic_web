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

    //Get and store global meta data here
    $global_meta_data = get_meta_values(array('delivery_charges','min_cart_val'));
    $delivery_charges = $global_meta_data['delivery_charges'];
    $min_cart_val = $global_meta_data['min_cart_val'];
    $user_cart_data = get_user_cart_data(db_escape($user_id));
    $user_wallet = sqlValue("SELECT SUM(`amount`) FROM `user_wallet` WHERE `user_id` = '".$user_id."' AND `status` = 'success'");
    $user_wallet = $user_wallet ? $user_wallet : 0;
    
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
    }
    //Not adding delivery charge is cart value is more that min cart value (VJ 25-05-21)
    if($is_premium_member ||$final_cart_total >= $min_cart_val){
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
    $resp['body'] = $cart_data;
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>