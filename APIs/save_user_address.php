<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = $items_data = array();
$default_address = 0;

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);
if(empty($user_phone) || empty($user_hash_key)){
    send_response_warning(500,"phone or hash key is missing",array());
    exit;
}

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
	$pincodes = get_only_pincodes();

	if(!in_array($_POST['pincode'],$pincodes)){
		$resp['message'] = "delivery not available";
		$resp['body'] = array("is_delivarable"=>"0");
		echo json_encode($resp);
		exit;
	}
	$resp['body'] = array("is_delivarable"=>"1");
	$default_address = db_escape($_POST['is_default_address']);
	//Setting is_default_address to 0 for all addresses for given user if current address is set to 1 (VJ 23-07-21).
	if($default_address == '1')
		db_query("UPDATE `address` SET `is_default_address`='0' WHERE `user_id` = '".$user_id."'");

	$latitude = $longitude = 0;
	/* if(!empty($_POST['street_name']) || !empty($_POST['city']))
	{
		$googleQuery = db_escape($_POST['street_name']). ' ' .db_escape($_POST['city']). '+' .db_escape($_POST['pincode']);
		$url = 'https://maps.googleapis.com/maps/api/geocode/json?address=' . urlencode($googleQuery) . '&key='.$map_key;

		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

		$geoloc = json_decode(curl_exec($ch), true);
		// get lat for json
		$latitude = $geoloc['results'][0]['geometry']['location']['lat'];
		// get long for json	
		$longitude = $geoloc['results'][0]['geometry']['location']['lng'];
	} */
	
	$latitude = db_escape($_POST['latitude']);
	$longitude = db_escape($_POST['longitude']);
    if(!empty($_POST['address_id'])){
		if(sqlValue("SELECT COUNT(*) FROM `address` WHERE `user_id` = '".$user_id."'") == 1)
			$default_address = 1;
		if(db_query("UPDATE `address` SET `name`='".db_escape($_POST['name'])."',`phone`='".db_escape($_POST['mobile'])."',`alternative_phone`='".db_escape($_POST['alt_mobile'])."',`house_no`='".db_escape($_POST['house_no'])."',`building_name`='".db_escape($_POST['house_no'])."',`street`='".db_escape($_POST['street_name'])."',`landmark`='".db_escape($_POST['landmark'])."',`pincode`='".db_escape($_POST['pincode'])."',`address`='".db_escape($_POST['address'])."',`city`='".db_escape($_POST['city'])."',`address_type`='".db_escape($_POST['address_type'])."',`is_default_address`='".$default_address."',`latitude`='".$latitude."',`longitude`='".$longitude."',`updated_at`='".date('Y-m-d H:i:s')."' WHERE `address_id` = '".db_escape($_POST['address_id'])."'")){
			$resp['message'] = "successfully updated address";
			$resp['body'] = $_POST;
		}else{
			$resp['status'] = 500;
			$resp['message'] = "something went wrong";
		}
	}else{
		if(sqlValue("SELECT COUNT(*) FROM `address` WHERE `user_id` = '".$user_id."'") < 1)
			$default_address = 1;

		if(db_query("INSERT INTO `address`(`user_id`, `address_id`, `name`, `phone`, `alternative_phone`, `house_no`, `building_name`, `street`, `landmark`, `pincode`, `address`, `city`, `address_type`, `is_default_address`,`latitude`,`longitude`, `updated_at`) VALUES ('".$user_id."', '".generate_unique_id('address')."','".db_escape($_POST['name'])."','".db_escape($_POST['mobile'])."','".db_escape($_POST['alt_mobile'])."','".db_escape($_POST['house_no'])."','".db_escape($_POST['house_no'])."','".db_escape($_POST['street_name'])."','".db_escape($_POST['landmark'])."','".db_escape($_POST['pincode'])."','".db_escape($_POST['address'])."','".db_escape($_POST['city'])."','".db_escape($_POST['address_type'])."','".$default_address."','".$latitude."','".$longitude."','".date('Y-m-d H:i:s')."')")){
			$resp['message'] = "successfully address saved";
		}else{
			$resp['status'] = 500;
			$resp['message'] = "something went wrong";
			$resp['body'] = $_POST;
		}
	}
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>