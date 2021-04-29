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
    $cart_data = array();
    $actual_cart_total = $discount_cart_total = $final_cart_total = 0;
    $delivery_charges = get_meta_value("delivery_charges");
    $user_cart_data = get_user_cart_data(db_escape($_POST['user_id']));
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
        $cart_offer = array();
        $cart_offer['status'] = $cart_offer['offer_price'] = '0';

        if(!empty($_POST['offer_id'])){
            $offer = get_offers_data($_POST['offer_id'])[0];
            // echo json_encode($offer);
            if($offer['status'] == "1"){
                if(strtotime($offer['offer_end']) >= strtotime(date('Y-m-d H:i:s'))){
                    if($final_cart_total >= $offer['min_order_price']){
                        // echo "VJ";
                        $cart_offer['status'] = '1';
                        $cart_offer['offer_price'] = $offer['offer_price'];
                        if(empty($offer['discount'])){
                            $final_cart_total -= $offer['offer_price'];
                        }else{
                            // echo "VJ";
                            $offer_price = round(($final_cart_total * $offer['discount'] / 100));
                            if($offer_price < $offer['offer_price']){
                                $cart_offer['offer_price'] = $offer_price;
                            }else{
                                $final_cart_total -= $offer['offer_price'];
                            }
                        }
                        
                        if($offer['type'] == 'discount'){
                           $cart_offer['cashback'] = '0';
                           $cart_offer['offer_price'] = (string)round($cart_offer['offer_price']);
                        }else{
                            // echo "VJa";
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

        $cart_data['actual_cart_total'] = (string)$actual_cart_total;
        $cart_data['discount_cart_total'] = (string)$discount_cart_total;
        $cart_data['delivery_charges'] = (string)$delivery_charges;
        $cart_data['final_cart_total'] = (string)($final_cart_total + $delivery_charges);
    }else
		$cart_data['items'] = array();
    $cart_data['offer_details'] = $cart_offer;
    $resp['body'] = $cart_data;
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>