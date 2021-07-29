<?php
error_reporting(0);
ini_set('display_errors', 0);
$url = basename($_SERVER['REQUEST_URI']);
$app = explode("/",$_SERVER['REQUEST_URI']);
$app_name = $app[1];

$VERSION = '1.0';//For CSS and JS files to prevent cache issue for new releases.
$AUTO_COMPLETE_CODE=' autocomplete="cc-csc" ';

session_start();

if($url != 'lcheck.php' && !isset($_SESSION['usr_email']) && !$API_ACCESS)
{
	header("location: login.php");
	exit;
}
include("db_connect.php");
include("constants.php");

date_default_timezone_set($tz);
session_write_close();
//Added htmlspecialchars for security issues (VJ 30/05/20)
function makesafe($string)
{
	// $string = (get_magic_quotes_gpc() ? stripslashes($string) : $string);
	return db_escape(htmlspecialchars(trim($string)));		
}
//Old make safe
function safetodisplay($string)
{
	// $string = (get_magic_quotes_gpc() ? stripslashes($string) : $string);
	return htmlspecialchars_decode(stripslashes(db_escape($string)));		
}
//Function to execute the given query	
function sql($statment, &$o){					

	if(!$result = db_query($statment))		
		exit;	

	return $result;
}
		
function sqlr($statment){					
	if(!$result = db_query($statment))		
		exit;
	
	$r = db_fetch_assoc($result);	
	return $r ? $r : (object)array();
}
function sqln($statment){				

	if(!$result = db_query($statment))		
		exit;
	
	while($r = db_fetch_assoc($result))
	{
		$r2[] = $r;
	}	
	return $r2;
}
// executes a statment that retreives a single data value and returns the value retrieved	
function sqlValue($statment){	
	if(!$res = sql($statment, $eo))
		return FALSE;
	
	if(!$row = db_fetch_array($res))
		return FALSE;
	
	return $row[0];
}

function loggedas()
{
	return $_SESSION['timeuser'];
}

//To get current time in 24hrs format
function get_current_time()
{
	return date('Y-m-d H:i:s');
}

// Insights to track user navigations	
function update_insights($page,$feature)		
{			
	$q = "INSERT INTO insights (id,page,feature,accessed_time) VALUES('".$_SESSION['user_id']."','".$page."','".$feature."','".get_current_time()."')";
	
	if(db_query($q)) return true;		
	
	return false;		
}
//Save user ip address data in database
function logs_data($req)
{	
	$time_now = date("Y-m-d H:i:s");
	$count=sqlValue("SELECT COUNT(`id`) as count FROM `logs_data` WHERE `ipaddress`='".$_SERVER["REMOTE_ADDR"]."' AND `request_type`='".$req."' ");
	
	if($count<1)
		$q = "INSERT INTO `logs_data`(`request_type`, `ipaddress`,`timestamp`) VALUES ('".$req."','".$_SERVER["REMOTE_ADDR"]."','".$time_now."')";
	else
		$q = "UPDATE `logs_data` SET `timestamp`='".$time_now."' WHERE `ipaddress`='".$_SERVER["REMOTE_ADDR"]."' ";

	$r = db_query($q);
	if($r)
		return true;
	else
		return false;
}

//Check time difference between user logins
function time_check()
{
	$time_now = date("Y-m-d H:i:s");
	$past_time = sqlValue("SELECT `timestamp` FROM `logs_data` WHERE `ipaddress`='".$_SERVER["REMOTE_ADDR"]."' ");
	
	if(strtotime($time_now) > $past_time)
		$diff = strtotime($time_now) - strtotime($past_time);
	else
		$diff = 0;
	
	return $diff;	
}

// Insights to track API calls
function update_api_insights($url,$post_data)		
{			
	$q = "INSERT INTO api_insights (url,parameters,timestamp) VALUES('".$url."','".$post_data."','".get_current_time()."')";
	
	if(db_query($q)) return true;		
	
	return false;		
}

function get_image_url($type,$folder = false){
    if(isset($_SERVER['HTTPS'])){
        $protocol = ($_SERVER['HTTPS'] && $_SERVER['HTTPS'] != "off") ? "https" : "http";
    }
    else{
        $protocol = 'http';
	}
	$folder_url = 'uploads/';
	if($type === 'category') $folder_url .= 'categories';
	else if($type === 'item') $folder_url .= 'items';
	else if($type === 'user_profile') $folder_url .= 'user_profile_pics';
	else if($type === 'recipe') $folder_url .= 'recipes';
	else if($type === 'slider_image') $folder_url .= 'slider_images';
	else if($type === 'tale') $folder_url .= 'tales';

	global $app_name;
	if($folder) return $folder_url."/";
    return $protocol . "://" . $_SERVER['HTTP_HOST'].'/'.$app_name.'/'.$folder_url.'/';
}

//Retrive all users from DB
function get_users_data($id = null){
	$users_data = array();
	$query = "";
	
	if(!empty($id)){
		$query = " WHERE user_id = '".$id."'";
	}
	$res = db_query("SELECT * FROM `users` ".$query);
	
	while($row = db_fetch_assoc($res))
	{
		$users_data[] = $row;
	}
	return $users_data;
}

//Retrive all/given categories from DB
function get_categories_data($id = null){
	$categories_data = array();
	$query = "";
	
	if(!empty($id)){
		$query = " WHERE category_id = '".$id."'";
	}
	$res = db_query("SELECT * FROM `categories` ".$query);
	
	while($row = db_fetch_assoc($res))
	{
		$categories_data[] = $row;
	}
	return $categories_data;
}

//Retrive all/given items from DB
function get_items_data($id = null){
	$items_data = array();
	$query = "";
	
	if(!empty($id)){
		$query = " WHERE item_id = '".$id."'";
	}
	$res = db_query("SELECT items.*,cat.category_name FROM `items` left outer join categories as cat ON cat.category_id = items.category_id ".$query);
	
	while($row = db_fetch_assoc($res))
	{
		$items_data[] = $row;
	}
	return $items_data;
}

// Add new category (21-01-2021)
function add_new_category($data)		
{		
	$q = "INSERT INTO categories (category_id,category_name,category_image,`quantity`, `weight_type`,created_at) VALUES('".makesafe(generate_unique_id('category',"5"))."','".makesafe($data['category_name'])."','".makesafe($data['img_path'])."','".makesafe($data['quantity'])."','".makesafe($data['weight_type'])."','".get_current_time()."')";
	
	if(db_query($q)) return true;		
	
	return false;		
}

// Update category (23-01-2021)
function update_category($data,$is_update_img)		
{
	$update_img = '';
	if($is_update_img){
		$img_path = sqlValue("SELECT `category_image` FROM `categories` WHERE `category_id` = '".$data['category_id']."'");
		//Remove the image from folder then delete the image
		unlink(get_image_url('category',true).$img_path);
		$update_img = ",`category_image`='".makesafe($path)."'";
	}
	
	$q = "UPDATE `categories` SET `category_name`='".makesafe($data['category_name'])."', `quantity`='".makesafe($data['quantity'])."', `weight_type`='".makesafe($data['weight_type'])."' ".$update_img.",`created_at`='".get_current_time()."' WHERE `category_id` = '".makesafe($data['category_id'])."'";
	
	if(db_query($q)) return true;		
	
	return false;		
}

// Delete given category (21-01-2021)
function delete_category($id)
{
	$img_path = sqlValue("SELECT `category_image` FROM `categories` WHERE `category_id` = '".$id."'");
	//Remove the image from folder then delete the image
	unlink(get_image_url('category',true).$img_path);
	if(db_query("DELETE FROM `categories` WHERE `category_id` = '".$id."'")){
		return true;
	}	
	return false;		
}

// Add new item (23-01-2021)
function add_new_item($data)		
{
	$q = "INSERT INTO `items`(`item_id`,`item_name`, `item_image`, `item_description`, `category_id`, `available_quantity`, `no_of_pieces`, `price_per_unit`, `gross_weight`, `net_weight`, `weight_type`, `serves`, `discount_price`, `in_stock`, `created_at`, `is_trending`) VALUES ('".makesafe(generate_unique_id('item',"5"))."','".makesafe($data['item_name'])."','".makesafe($data['img_path'])."','".makesafe($data['item_description'])."','".makesafe($data['category'])."','".makesafe($data['available_quantity'])."','".makesafe($data['no_of_pieces'])."','".makesafe($data['price_per_unit'])."','".makesafe($data['gross_weight'])."','".makesafe($data['net_weight'])."','".makesafe($data['weight_type'])."','".makesafe($data['serves'])."','".makesafe($data['discount_price'])."','".makesafe($data['in_stock'])."','".get_current_time()."','".makesafe($data['trending_now'])."')";
	
	if(db_query($q)) return true;
	
	return false;
}

// Delete given item (23-01-2021)
function delete_item($id)
{
	$img_path = sqlValue("SELECT `item_image` FROM `items` WHERE `item_id` = '".$id."'");
	//Remove the image from folder then delete the image
	unlink(get_image_url('item',true).$img_path);
	if(db_query("DELETE FROM `items` WHERE `item_id` = '".$id."'")){
		return true;
	}	
	return false;		
}

// Update category (24-01-2021)
function update_item($data,$is_update_img)		
{
	$update_img = '';
	if($is_update_img){
		$img_path = sqlValue("SELECT `item_image` FROM `items` WHERE `item_id` = '".$data['item_id']."'");
		//Remove the image from folder then delete the image
		unlink(get_image_url('item',true).$img_path);
		$update_img = ",`item_image`='".makesafe($data['img_path'])."'";
	}
	
	$q = "UPDATE `items` SET `item_name`='".makesafe($data['item_name'])."',`item_description`='".makesafe($data['item_description'])."',`category_id`='".makesafe($data['edit_category'])."',`available_quantity`='".makesafe($data['available_quantity'])."',`no_of_pieces`='".makesafe($data['no_of_pieces'])."',`price_per_unit`='".makesafe($data['price_per_unit'])."',`gross_weight`='".makesafe($data['gross_weight'])."',`net_weight`='".makesafe($data['net_weight'])."',`weight_type`='".makesafe($data['weight_type'])."',`serves`='".makesafe($data['serves'])."',`discount_price`='".makesafe($data['discount_price'])."',`in_stock`='".makesafe($data['in_stock'])."' ".$update_img.",`created_at`='".get_current_time()."',`is_trending`='".makesafe($data['trending_now'])."' WHERE `item_id` = '".makesafe($data['item_id'])."'";
	if(db_query($q)) return true;		
	
	return false;		
}

//Retrive all/given delivery_users from DB
function get_delivery_users_data($id = null){
	$delivery_users_data = array();
	$query = "";
	
	if(!empty($id)){
		$query = " WHERE delivery_user_id = '".$id."'";
	}
	$res = db_query("SELECT * FROM `delivery_users` ".$query);
	
	while($row = db_fetch_assoc($res))
	{
		$delivery_users_data[] = $row;
	}
	return $delivery_users_data;
}

// Add new delivery_user (24-01-2021)
function add_new_delivery_user($data){
	$q = "INSERT INTO `delivery_users`(`delivery_user_id`, `first_name`, `last_name`, `email`, `phone`, `password`, `gender`, `active`, `last_updated_at`) VALUES ('".makesafe(generate_unique_id('delivery_user',"5"))."','".makesafe($data['first_name'])."','".makesafe($data['last_name'])."','".makesafe($data['emailaddress'])."','".makesafe($data['mobile_num'])."','".md5('abcdef')."','".makesafe($data['gender'])."','1','".get_current_time()."')";

	if(db_query($q)){
		return true;
	};
	
	return false;
}

// Delete given delivery_user (25-01-2021)
function delete_delivery_user($id)
{
	if(!empty($id) && db_query("DELETE FROM `delivery_users` WHERE `delivery_user_id` = '".$id."'")){
		return true;
	}	
	return false;		
}

// Update given delivery_user (25-01-2021)
function update_delivery_user($data)
{
	$q = "UPDATE `delivery_users` SET `first_name`= '".makesafe($data['first_name'])."',`last_name`='".makesafe($data['last_name'])."',`email`='".makesafe($data['emailaddress'])."',`phone`='".makesafe($data['mobile_num'])."',`gender`='".makesafe($data['gender'])."',`last_updated_at`='".get_current_time()."' WHERE `delivery_user_id` = '".makesafe($data['delivery_user_id'])."'";

	if(db_query($q)){
		return true;
	}	
	return false;		
}

//Retrive all/given recipes from DB(13-02-2021)
function get_recipes_data($id = null){
	$recipes_data = array();
	$query = "";
	
	if(!empty($id)){
		$query = " WHERE recipe_id = '".$id."'";
	}
	$res = db_query("SELECT recipe.*,item.item_name FROM `recipe` left outer join items as item ON recipe.item_id = item.item_id ".$query);
	
	while($row = db_fetch_assoc($res))
	{
		$row['ingrediants'] = !empty($row['ingrediants']) ? json_decode($row['ingrediants'],true) : array();
		$row['method'] = !empty($row['method']) ? json_decode($row['method'],true) : array();
		$recipes_data[] = $row;
	}
	return $recipes_data;
}

// Add new recipe (13-02-2021)
function add_new_recipe($data)		
{		
	$q = "INSERT INTO recipe (`recipe_id`, `recipe_name`, `recipe_description`, `recipe_image`, `item_id`, `serves`, `time`, `dish`, `ingrediants`, `method`, `created_at`) VALUES('".makesafe(generate_unique_id('recipe',"5"))."','".makesafe($data['recipe_name'])."','".makesafe($data['recipe_description'])."','".makesafe($data['img_path'])."','".makesafe($data['item_id'])."','".$data['serves']."','".$data['time']."','".$data['dish']."','".$data['ingrediants']."','".$data['recipe_steps']."','".get_current_time()."')";
	
	if(db_query($q)) return true;		
	
	return false;		
}

// Delete given recipe (13-02-2021)
function delete_recipe($id)
{
	$img_path = sqlValue("SELECT `recipe_image` FROM `recipe` WHERE `recipe_id` = '".$id."'");
	//Remove the image from folder then delete the image
	unlink(get_image_url('recipe',true).$img_path);

	if(!empty($id) && db_query("DELETE FROM `recipe` WHERE `recipe_id` = '".$id."'")){
		return true;
	}	
	return false;		
}

// Update given recipe (13-02-2021)
function update_recipe($data,$is_update_img)
{
	$update_img = '';
	if($is_update_img){
		$img_path = sqlValue("SELECT `recipe_image` FROM `recipe` WHERE `recipe_id` = '".$data['recipe_id']."'");
		//Remove the image from folder then delete the image
		unlink(get_image_url('recipe',true).$img_path);
		$update_img = ",`recipe_image`='".makesafe($data['img_path'])."'";
	}

	$q = "UPDATE `recipe` SET `recipe_name`= '".makesafe($data['recipe_name'])."',`recipe_description`= '".makesafe($data['recipe_description'])."',`item_id`='".makesafe($data['item_id'])."',`serves`='".makesafe($data['serves'])."',`time`='".makesafe($data['time'])."',`dish`='".makesafe($data['dish'])."',`ingrediants`='".$data['ingrediants']."',`method`='".$data['recipe_steps']."',`created_at`='".get_current_time()."' ".$update_img." WHERE `recipe_id` = '".makesafe($data['recipe_id'])."'";

	if(db_query($q)){
		return true;
	}	
	return false;		
}

//Retrive all/given recipes from DB(23-02-2021)
function get_orders_data($id = null){
	$orders_data = array();
	$query = "";
	
	if(!empty($id)){
		$query = " WHERE order_id = '".$id."'";
	}
	$res = db_query("SELECT * FROM `orders` ".$query." ORDER BY order_at DESC");
	
	while($row = db_fetch_assoc($res))
	{
		$orders_data[] = $row;
	}
	return $orders_data;
}

//Retrive order details based on given order id(04-03-2021)
function get_order_details($id){
	$orders_data = array();
	if(empty($id)) return $orders_data;

	$res = db_query("SELECT od.quantity as order_quantity,od.item_price,od.price,od.discount_price,it.item_name,it.item_image,o.status as order_status,o.order_key,o.order_at,p.amount,p.mode,p.timestamp,p.status as payment_status FROM `order_details` as od LEFT OUTER JOIN items as it ON od.`item_id` = it.item_id LEFT OUTER JOIN orders as o ON o.`order_key` = od.order_id LEFT OUTER JOIN payments as p ON p.`order_id` = o.order_key WHERE o.`order_key` = '".$id."'");
	
	while($row = db_fetch_assoc($res))
	{
		$orders_data[] = $row;
	}
	return $orders_data;
}
//Get order status
function get_order_status($id){
	switch ($id) {
		case '0':
			return "pending";
			break;
		case '1':
			return "cancelled";
			break;
		case '2':
			return "accepted";
			break;
		case '3':
			return "assign to delivery";
			break;
		case '4':
			return "Out for delivery";
			break;
		case '5':
			return "delivered";
			break;
		case '6':
			return "user cancelled";
			break;
		
		default:
			return "N/A";
			break;
	}
}
//Update order status based on given parameters(07-03-2021)
function order_handling($order_id,$order_type)
{
	if(empty($order_type) || empty($order_id)) return false;

	if(db_query("UPDATE `orders` SET `status`='".$order_type."',`last_updated_time`='".get_current_time()."' WHERE `order_key` = '".$order_id."' ")){
		$user_data = sqlr("SELECT `user_id`,`delivery_user` FROM `orders` WHERE `order_key` = '".$order_id."' LIMIT 1");
		$user_name = sqlValue("SELECT `first_name` FROM `users` WHERE `user_id` =  '".$user_data['user_id']."'");
		$tokens = get_user_device_tokens($user_data['user_id'],"user_id");

		$message = "Hi ".$user_name.", ";
		if($order_type == ORD_USER_CANCELED)
        	$message .= "Your order cancelled successfully.";
		else if($order_type == ORD_ACCEPTED)
        	$message .= "Your order is accepted.";
		else if($order_type == ORD_CANCELED)
        	$message .= "Sorry! Your order is cancelled.";
		else if($order_type == ORD_DELIVERED)
        	$message .= "Your order has been delivered successfully. Please give rating and comments, might be helpful us to improve Organic Chicken service. Thank you.";
		else if($order_type == ORD_OUT_FOR_DELIVERY)
        	$message .= "Your order is out for delivery.";
		else if($order_type == ORD_ASSIGN_TO_DELIVERY){
			$del_user_name = sqlValue("SELECT `first_name` FROM `delivery_users` WHERE `delivery_user_id` =  '".$user_data['delivery_user']."'");
        	$message .= "Your order has been assgined to ".$del_user_name;
		}

		if(!empty($tokens['android'])){
			$data = array("notification"=>array("title"=>"Organic Chicken","notify_type"=>"order","order_type"=>$order_type,"order_id"=>$order_id));
			send_android_push_notification($tokens['android'], $message, $data);
		}
		if(!empty($tokens['ios'])){
			// $json_string_payload='{"aps":	{ "alert": { "action-loc-key": "Open","body": "'.$message.'"},"badge": 1,"content-available": 1},"notify_type":"order"}';
			// $result1 = send_apple_push_notifications($tokens['ios'],$json_string_payload);
		}
		return true;
	}	
	return false;
}
//Get orders count(08-03-2021)
function get_orders_count()
{
	$cnt = sqlValue('SELECT COUNT(*) FROM `orders`');
	return ($cnt > 0) ? $cnt : 0;
}
//Generate random string (09-03-2021)
function generateRandomString($length = 5) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

//Retrive all/given offer from DB(10-03-2021)
function get_offers_data($id = null,$filter = null){
	$offers_data = array();
	$query = "";
	
	if(!empty($id)){
		$query = " AND offer_id = '".$id."'";
	}
	if($filter){
		$query = " AND status = '1' AND offer_end > '".get_current_time()."'";
	}
	$res = db_query("SELECT * FROM `offers` WHERE is_deleted = '0' ".$query." ORDER BY offer_start DESC ");
	
	while($row = db_fetch_assoc($res))
	{
		$offers_data[] = $row;
	}
	return $offers_data;
}

// Add new offer (11-03-2021)
function add_new_offer($data){
	$q = "INSERT INTO `offers` (`offer_id`, `type`, `offer_start`, `offer_end`, `status`, `description`, `code`, `min_order_price`, `offer_price`, `updated_at`, `discount`) VALUES ('".makesafe(generate_unique_id('offer',"5"))."','".makesafe($data['offer_type'])."','".makesafe(set_date($data['offer_start']))."','".makesafe(set_date($data['offer_end']))."','".makesafe($data['is_active'])."','".makesafe($data['offer_description'])."','".strtoupper(makesafe($data['offer_code']))."','".makesafe($data['min_order_price'])."','".makesafe($data['offer_price'])."','".get_current_time()."','".makesafe($data['discount_value'])."')";

	if(db_query($q)) return true;
	
	return false;
}

function set_date($date)
{
	return date('Y-m-d H:i:s',strtotime(str_replace('/','-',$date)));
}

// Delete given offer (12-03-2021)
function delete_offer($id)
{
	if(!empty($id) && db_query("DELETE FROM `offers` WHERE `offer_id` = '".$id."'")){
		return true;
	}	
	return false;		
}

// Add new offer (13-03-2021)
function update_offer($data){
	$q = "UPDATE `offers` SET `type`= '".makesafe($data['offer_type'])."',`offer_start`= '".makesafe(set_date($data['offer_start']))."',`offer_end`='".makesafe(set_date($data['offer_end']))."',`code`='".strtoupper(makesafe($data['offer_code']))."',`description`='".makesafe($data['offer_description'])."',`min_order_price`='".makesafe($data['min_order_price'])."',`offer_price`='".makesafe($data['offer_price'])."',`discount`='".makesafe($data['discount_value'])."',`status`='".makesafe($data['is_active'])."',`updated_at`='".get_current_time()."' WHERE `offer_id` = '".makesafe($data['offer_id'])."'";

	if(db_query($q)) return true;
	
	return false;
}
//Get meta data value based on given meta key(17-03-2021)
function get_meta_value($meta_key)
{
	$meta_value = sqlValue("SELECT `meta_value` FROM `meta_data` WHERE `meta_key`='".$meta_key."'");
	if(!empty($meta_value))
		return $meta_value;
	
	return false;
}

//Update meta value based on meta key (17-03-2021)
function update_meta_value($meta_key,$meta_val)
{
	if(sqlValue("SELECT COUNT(*) FROM `meta_data` WHERE `meta_key` = '".$meta_key."'"))
		$meta_res = db_query("UPDATE `meta_data` SET `meta_value`='".safetodisplay($meta_val)."', `updated_at` = '".get_current_time()."' WHERE `meta_key`='".safetodisplay($meta_key)."'");
	else
		$meta_res = db_query("INSERT INTO `meta_data`(`meta_key`, `meta_value`, `updated_at`) VALUES ('".$meta_key."','".$meta_val."','".get_current_time()."')");
	return $meta_res;
}

//Add video link (17-03-2021)
function add_video($data)
{
	$video_data = get_meta_value('video_links');
	$final_data = $video_data ? json_decode($video_data,true) : array();

	array_push($final_data,array("id"=>generate_unique_id("home_video"),"name"=>makesafe($data['video_name']),"url"=>makesafe($data['video_url'])));
	
	return update_meta_value('video_links',json_encode($final_data));
}

//Add video link (17-03-2021)
function update_video($data)
{
	$video_data = get_meta_value('video_links');
	$final_data = $video_data ? json_decode($video_data,true) : array();
	$new_data = array();
	foreach ($final_data as $value) {
		if($value['id'] == $data['video_action_id'])
		{
			$value['name'] = makesafe($data['video_name']);
			$value['url'] = makesafe($data['video_url']);
		} 
		array_push($new_data,$value);
	}
	
	return update_meta_value('video_links',json_encode($new_data));
}

//Delete video link (17-03-2021)
function delete_video($id)
{
	$video_data = get_meta_value('video_links');
	$final_data = $video_data ? json_decode($video_data,true) : array();
	$new_data = array();
	foreach ($final_data as $value) {
		if($value['id'] != $id) array_push($new_data,$value);
	}
	
	return update_meta_value('video_links',json_encode($new_data));
}

//Delete slider image link (18-03-2021)
function delete_slider_image($id)
{
	$images_data = get_meta_value('slider_images');
	$final_data = $images_data ? json_decode($images_data,true) : array();
	$new_data = array();
	foreach ($final_data as $value) {
		if($value['id'] != $id) array_push($new_data,$value);
		else unlink(get_image_url('slider_image',true).$value['img_path']);
	}
	
	return update_meta_value('slider_images',json_encode($new_data));
}

//Add slider image (18-03-2021)
function add_slider_image($data)
{
	$images_data = get_meta_value('slider_images');
	$final_data = $images_data ? json_decode($images_data,true) : array();
	$img_id = generate_unique_id("slider_image");
	array_push($final_data,array("id"=>$img_id,"img_path"=>makesafe($data['img_path'])));
	
	if(update_meta_value('slider_images',json_encode($final_data)))
		return $img_id;
	else
		return false;
}
//Delete tale image link (18-03-2021)
function delete_tale_image($id)
{
	$images_data = get_meta_value('tales');
	$final_data = $images_data ? json_decode($images_data,true) : array();
	$new_data = array();
	foreach ($final_data as $value) {
		if($value['id'] != $id) array_push($new_data,$value);
		else{
			unlink(get_image_url('tale',true).$value['img_path']);
			unlink(get_image_url('tale',true).$value['thumb_img_path']);
		}
	}

	return update_meta_value('tales',json_encode($new_data));
}

//Add tale image (18-03-2021)
function add_tale_image($data)
{
	$images_data = get_meta_value('tales');
	$final_data = $images_data ? json_decode($images_data,true) : array();
	$img_id = generate_unique_id("tales");
	array_push($final_data,array("id"=>$img_id,"img_path"=>makesafe($data['img_path']),"thumb_img_path"=>makesafe($data['thumb_img_path'])));
	
	if(update_meta_value('tales',json_encode($final_data)))
		return $img_id;
	else
		return false;
}

//Get items based on given category (20-03-2021)
function get_items_by_category($cat_id,$user_id = null)
{
	$items_data = array();

	if(!empty($user_id))
		$res = db_query("SELECT items.*,COALESCE(cart.quantity,'') as cart_item_quantity,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id left outer join cart ON cart.item_id = items.item_id AND cart.user_id = '".db_escape($user_id)."' WHERE items.category_id = '".$cat_id."'");
	else
		$res = db_query("SELECT items.*,COALESCE('') as cart_item_quantity,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id WHERE items.category_id = '".$cat_id."'");
	
	while($row = db_fetch_assoc($res))
	{
		$items_data[] = $row;
	}
	return $items_data;
}


//Retrive all/given items from DB
function get_items_data_for_api($id = null,$user_id = null){
	$items_data = array();
	$query = "";
	
	if(!empty($id)){
		$query = " AND items.item_id = '".$id."'";
	}
	if(!empty($user_id)){
		$res = db_query("SELECT items.*,COALESCE(cart.quantity,'') as cart_item_quantity,rec.recipe_id,rec.recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id left outer join cart ON cart.item_id = items.item_id AND cart.user_id = '".db_escape($user_id)."' WHERE `in_stock` = '1' ".$query);
	}
	else
		$res = db_query("SELECT items.*,COALESCE('') as cart_item_quantity,rec.recipe_id,rec.recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id WHERE `in_stock` = '1' ".$query);
	
	while($row = db_fetch_assoc($res))
	{
		$items_data[] = $row;
	}
	return $items_data;
}

//Retrive user cart details from DB
function get_user_cart_data($user_id){
	$cart_data = array();
	$res = db_query("SELECT c.`cart_id`,c.`item_id`,c.`quantity`,it.price_per_unit,it.discount_price,it.net_weight,it.item_name,it.item_image FROM `cart` as c LEFT OUTER JOIN items as it ON it.item_id = c.item_id WHERE c.user_id = '".$user_id."' ORDER BY it.item_name");
	
	while($row = db_fetch_assoc($res))
	{
		$cart_data[] = $row;
	}
	return $cart_data;
}

//Retrive user cart details from DB
function get_user_cart_count($user_id){
	$cart_data = array();
	
	$res = db_query("SELECT COUNT(*) FROM `cart` as c LEFT OUTER JOIN items as it ON it.item_id = c.item_id WHERE user_id = '".$user_id."' ORDER BY it.item_name");
	
	while($row = db_fetch_assoc($res))
	{
		$cart_data[] = $row;
	}
	return $cart_data;
}

//Generate a unique ID for given item
function generate_unique_id($label,$length = 5){
	$items_array = array("category"=> "#OCCAT","item"=> "#OCITM","order"=> "#OCORD","recipe"=> "#OCRCP","offer"=> "#OCOFR","user"=> "#OCUSR","delivery_user"=> "#OCDUSR","referral"=> "#OCREF","slider_image"=> "#OCSIM","home_video"=> "#OCHVI","tales"=>"#OCTAL","cart"=>"#OCCRT","address"=>"#OCADD","member_ship_plan"=>"#OCPLN");
	
	if($label && $items_array[$label])
		return $items_array[$label]."_".generateRandomString($length);
	return false;
}

//To convert some items values to string (27-04-21)
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
//Conevert user readle address to geo co ordinates (08-05-21)
function geocode_address($address){
	global $map_key;

	$googleQuery = $address['street'].' '.$address['city'].' '.$address['state'];
	$url = 'https://maps.googleapis.com/maps/api/geocode/json?address=' . urlencode($googleQuery) . '&key='.$map_key;

	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

	$geoloc = json_decode(curl_exec($ch), true);
	$latitude = $geoloc['results'][0]['geometry']['location']['lat'];
	// get lat for json
	$longitude = $geoloc['results'][0]['geometry']['location']['lng'];
	// get long for json
	return array("latitue" => $latitude,"longitude" => $longitude);
}

function assign_delivery_user($order_id,$delivery_users_id,$assign = ''){
	if(empty($assign)){
		$res = db_query("SELECT * FROM `orders` WHERE `delivery_user` = '".$delivery_users_id."' AND (`status` = '".ORD_OUT_FOR_DELIVERY."' OR `status` = '".ORD_ASSIGN_TO_DELIVERY."' OR `order_key` = '".$order_id."')");
		$other_orders = array();
		/* echo "SELECT * FROM `orders` WHERE `delivery_user` = '".$delivery_users_id."' AND (`status` = '".ORD_OUT_FOR_DELIVERY."' OR `status` = '".ORD_ASSIGN_TO_DELIVERY."' OR `order_key` = '".$order_id."')";
		exit; */
		while ($row = db_fetch_assoc($res)) {
			if($row['order_key'] == $order_id){
				$cur_order_data = $row;
				continue;
			}
			$other_orders[$row['status']][] = $row;
		}
		
		$assgn_del = $out_del = 0;
		//Check delivery user is already out for delivery
		if(!empty($other_orders[ORD_OUT_FOR_DELIVERY])) $out_del++;
		//Check delivery user is assigned to any other delivery
		if(!empty($other_orders[ORD_ASSIGN_TO_DELIVERY])){
			foreach ($other_orders[ORD_ASSIGN_TO_DELIVERY] as $order) {
				if(strtotime($order['delivery_date']) == strtotime($cur_order_data['delivery_date'])){
					$cur_order_slot = explode('-',$cur_order_data['delivery_slot']);
					$cur_order_start = date('H:i:s',strtotime($cur_order_slot));
					$cur_order_end = date('H:i:s',strtotime($cur_order_slot));

					$order_slot = explode('-',$order['delivery_slot']);
					$order_start = date('H:i:s',strtotime($order_slot));
					$order_end = date('H:i:s',strtotime($order_slot));

					if(($cur_order_start >= $order_start && $cur_order_start <= $order_end) || ($cur_order_end >= $order_start && $cur_order_end <= $order_end))
						$assgn_del++;
				}
			}
		}
		if($assgn_del || $out_del){
			return array('status' => 'conflict','assgn_del' => $assgn_del,'out_del' => $out_del);
		}
	}
	if(db_query("UPDATE `orders` SET `delivery_user`= '".$delivery_users_id."',`last_updated_time` = '".get_current_time()."' WHERE `order_key` = '".$order_id."'") && order_handling($order_id,ORD_ASSIGN_TO_DELIVERY)){
		$tokens = get_user_device_tokens($delivery_users_id,"delivery_user_id");
        $message = "New order is assign to you. Check it once.";
        if(!empty($tokens['android'])){
            $data = array("notification"=>array("title"=>"Organic Chicken","notify_type"=>"order"));
            send_android_push_notification($tokens['android'], $message, $data);
        }
        if(!empty($tokens['ios'])){
            // $json_string_payload='{"aps":	{ "alert": { "action-loc-key": "Open","body": "'.$message.'"},"badge": 1,"content-available": 1},"notify_type":"order"}';
			// $result1 = send_apple_push_notifications($tokens['ios'],$json_string_payload);
        }
		return array('status' => 'success');
	}
	
	return array('status' => 'fail');
}

function sent_msg_to_user($numbers){
	if(!is_array($numbers)) return false;

	 // Account details
    $apiKey = urlencode('Dfti+cEHPyg-VWDXEcbM7MuoDHXUKJW73Hl0aLxRMN');

    // Message details
    // $numbers = array(918886810715);
    $sender = urlencode('QWPARC');
    $message = rawurlencode('Dear Customer, 1234 is OTP for your login request. Do Not disclose it to any one');

    $numbers = implode(',', $numbers);

    // Prepare data for POST request
    $data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message, "test" =>  true);

    // Send the POST request with cURL
    $ch = curl_init('https://api.textlocal.in/send/');
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    curl_close($ch);

    // Process your response here
    echo "RESP ".$response;
}
// sent_msg_to_user(array("8886810715"));

//Send android push notifications (VJ 16-05-21)
function send_android_push_notification($device_tokens, $message, $data){
	if(empty($device_tokens)) return false;
	
	global $ROOT_PATH;
	include_once($ROOT_PATH .'notifications/firebase.php');

	// $data = array("notification"=>array("title"=>"Organic Chicken","notify_type"=>"status"));

	//getting the token from database object 
	// $device_tokens = array('djeM-QY3SrGMzXHAqZYz6m:APA91bEqaA42R445-sFcqK8BpBAgkyLpjxah8-4Ly-UUVGLoJROKtMtFKQ1ViR5vqmHSeBpOB9v_8QTkEEgibBJU7hoJMsQuqfcPHgf-bIP8YfYhC2dtedCmCke-3HAcbI56ygxU1DjO');

	//creating firebase class object
	$firebase = new Firebase(); 

	//Set device tokens
	$firebase->setDevices($device_tokens);

	//sending push notification and displaying result 
	$firebase->send($message, $data);
}
//Send apple push notifications (VJ 16-05-21)
function send_apple_push_notifications($device_tokens,$json_string_payload)
{
	global $ROOT_PATH;
	$msg_count=0;
	try
	{	
		require_once($ROOT_PATH.'notifications/push_config.php');
		require_once($ROOT_PATH.'notifications/push.php');
		
		$mode = "production";
		$config = $config[$mode];		

		writeToLog("Push script started ($mode mode)");

		$obj = new APNS_Push($config);
		
		if(is_array($device_tokens))
		{			
			foreach($device_tokens as $single_token)
			{
				$obj->disconnectFromAPNS();
				$obj->connectToAPNS();
				if($obj->sendNotification($single_token,$json_string_payload))
					$msg_count++;
			}
		}
		else
		{	
			if($obj->sendNotification($device_tokens,$json_string_payload))
				$msg_count++;
		}
	}
	catch (Exception $e)
	{
		fatalError($e);
	}
	
	if($msg_count>0)
	{
		return true;
	}
	else
	{
		return false;
	}
}

function get_user_device_tokens($user_ids,$user_label){
	
	if(!is_array($user_ids)) $user_ids = array($user_ids);
	$tokens = array();
	// echo "SELECT `token`, `device` FROM `fcm_tokens` WHERE `".$user_label."` IN ('".implode('\',\'',$user_ids)."')";
	$res = db_query("SELECT `token`, `device` FROM `fcm_tokens` WHERE `".$user_label."` IN ('".implode('\',\'',$user_ids)."')");

	while ($row = db_fetch_assoc($res)) {
		$tokens[$row['device']][] = $row['token'];
	}
	return $tokens;
}

//Function to return multiple meta values for given meta key array values(VJ 25-05-21)
function get_meta_values($meta_keys){
	$meta_qry = db_query("SELECT `meta_value`,`meta_key` FROM `meta_data` WHERE `meta_key` IN ('".implode('\',\'',$meta_keys)."')");
	$data = array();
	while($row = db_fetch_assoc($meta_qry))
	{
		$data[$row['meta_key']] = $row['meta_value'];
	}
	
	return $data;
}

//Add member ship plan (19-06-2021)
function add_member_ship_plan($data)
{
	$plans_data = get_meta_value('member_ship_plans');
	$final_data = $plans_data ? json_decode($plans_data,true) : array();

	array_push($final_data,array("id"=>generate_unique_id("member_ship_plan"),"plan_days"=>makesafe($data['plan_days']),"plan_price"=>makesafe($data['plan_price']),"description"=>makesafe($data['plan_description'])));
	
	return update_meta_value('member_ship_plans',json_encode($final_data));
}

//Update member ship plan (19-06-2021)
function update_member_ship_plan($data)
{
	$plans_data = get_meta_value('member_ship_plans');
	$final_data = $plans_data ? json_decode($plans_data,true) : array();
	$new_data = array();
	foreach ($final_data as $value) {
		if($value['id'] == $data['new_plan_id'])
		{
			$value['plan_days'] = makesafe($data['plan_days']);
			$value['plan_price'] = makesafe($data['plan_price']);
			$value['description'] = makesafe($data['plan_description']);
		} 
		array_push($new_data,$value);
	}
	
	return update_meta_value('member_ship_plans',json_encode($new_data));
}

//Delete member ship plan (19-06-2021)
function delete_member_ship_plan($id)
{
	$plans_data = get_meta_value('member_ship_plans');
	$final_data = $plans_data ? json_decode($plans_data,true) : array();
	$new_data = array();
	foreach ($final_data as $value) {
		if($value['id'] != $id) array_push($new_data,$value);
	}
	
	return update_meta_value('member_ship_plans',json_encode($new_data));
}

//Function to return user wallet transactions (VJ 25-06-21)
function get_user_wallet_data($user_id){
	$wallet_trasactions = array();
	$meta_qry = db_query("SELECT  `amount`, `description`, `status`, `updated_at` FROM `user_wallet` WHERE `user_id` = '".$user_id."'");

	while($row = db_fetch_assoc($meta_qry))
	{
		$wallet_trasactions[] = $row;
	}
	
	return $wallet_trasactions;
}
//Function will send response to API's and exit (VJ 06-07-21)
function send_response_warning($status,$msg,$body){
	$resp['status'] = $status;
    $resp['message'] = $msg;
    $resp['body'] = $body;
    echo json_encode($resp);
}
?>