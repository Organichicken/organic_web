<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = $items_data = array();

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    if(!empty($_POST['address_id'])){
		if(db_query("UPDATE `address` SET `name`='".db_escape($_POST['name'])."',`phone`='".db_escape($_POST['mobile'])."',`alternative_phone`='".db_escape($_POST['alt_mobile'])."',`house_no`='".db_escape($_POST['house_no'])."',`building_name`='".db_escape($_POST['building_name'])."',`street`='".db_escape($_POST['street_name'])."',`landmark`='".db_escape($_POST['landmark'])."',`pincode`='".db_escape($_POST['pincode'])."',`locality`='".db_escape($_POST['locality'])."',`city`='".db_escape($_POST['city'])."',`address_type`='".db_escape($_POST['address_type'])."',`is_default_address`='".db_escape($_POST['is_default_address'])."',`updated_at`='".date('Y-m-d H:i:s')."' WHERE `id` = '".db_escape($_POST['address_id'])."'")){
			$resp['message'] = "successfully updated address";
			$resp['body'] = array();
		}else{
			$resp['status'] = 500;
			$resp['message'] = "something went wrong";
		}
	}else{
		if(db_query("INSERT INTO `address`(`user_id`, `address_id`, `name`, `phone`, `alternative_phone`, `house_no`, `building_name`, `street`, `landmark`, `pincode`, `locality`, `city`, `address_type`, `is_default_address`, `updated_at`) VALUES ('".db_escape($_POST['user_id'])."', '".generate_unique_id('address')."','".db_escape($_POST['name'])."','".db_escape($_POST['mobile'])."','".db_escape($_POST['alt_mobile'])."','".db_escape($_POST['house_no'])."','".db_escape($_POST['building_name'])."','".db_escape($_POST['street_name'])."','".db_escape($_POST['landmark'])."','".db_escape($_POST['pincode'])."','".db_escape($_POST['locality'])."','".db_escape($_POST['city'])."','".db_escape($_POST['address_type'])."','".db_escape($_POST['is_default_address'])."','".date('Y-m-d H:i:s')."')")){
			$resp['message'] = "successfully address saved";
			$resp['body'] = array();
		}else{
			$resp['status'] = 500;
			$resp['message'] = "something went wrong";
		}
	}
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}
echo json_encode($resp);
?>