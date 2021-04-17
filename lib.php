<?php
error_reporting(0);
$url = basename($_SERVER['REQUEST_URI']);
$app = explode("/",$_SERVER['REQUEST_URI']);
$app_name = $app[1];

/* $referer_app  = explode("/",$_SERVER['HTTP_REFERER']);
$referer_name = $referer_app[4]; */

$VERSION = '1.0';//For CSS and JS files to prevent cache issue for new releases.
$AUTO_COMPLETE_CODE=' autocomplete="cc-csc" ';

session_start();

if($url != 'lcheck.php' && !isset($_SESSION['usr_email']) && !$API_ACCESS)
{
	header("location: login.php");
	exit;
}
include("db_connect.php");

date_default_timezone_set($tz);
session_write_close();
//Added htmlspecialchars for security issues (VJ 30/05/20)
function makesafe($string)
{
	$string = (get_magic_quotes_gpc() ? stripslashes($string) : $string);
	return db_escape(htmlspecialchars(trim($string)));		
}
//Old make safe
function safetodisplay($string)
{
	$string = (get_magic_quotes_gpc() ? stripslashes($string) : $string);
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
	return $r;
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
	
	if($id && is_numeric($id)){
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
	
	if($id && is_numeric($id)){
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
	
	if($id && is_numeric($id)){
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
	$q = "INSERT INTO categories (category_name,category_image,`quantity`, `weight_type`,created_at) VALUES('".makesafe($data['category_name'])."','".makesafe($data['img_path'])."','".makesafe($data['quantity'])."','".makesafe($data['weight_type'])."','".get_current_time()."')";
	
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
	$q = "INSERT INTO `items`(`item_name`, `item_image`, `item_description`, `ingrediants`, `category_id`, `available_quantity`, `no_of_pieces`, `price_per_unit`, `gross_weight`, `net_weight`, `weight_type`, `serves`, `discount_price`, `in_stock`, `created_at`, `is_trending`) VALUES ('".makesafe($data['item_name'])."','".makesafe($data['img_path'])."','".makesafe($data['item_description'])."','".makesafe($data['ingrediants'])."','".makesafe($data['category'])."','".makesafe($data['available_quantity'])."','".makesafe($data['no_of_pieces'])."','".makesafe($data['price_per_unit'])."','".makesafe($data['gross_weight'])."','".makesafe($data['net_weight'])."','".makesafe($data['weight_type'])."','".makesafe($data['serves'])."','".makesafe($data['discount_price'])."','".makesafe($data['in_stock'])."','".get_current_time()."','".makesafe($data['trending_now'])."')";
	
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

//Retrive all/given employees from DB
function get_employees_data($id = null){
	$employees_data = array();
	$query = "";
	
	if($id && is_numeric($id)){
		$query = " WHERE employee_id = '".$id."'";
	}
	$res = db_query("SELECT * FROM `employees` ".$query);
	
	while($row = db_fetch_assoc($res))
	{
		$employees_data[] = $row;
	}
	return $employees_data;
}

// Add new employee (24-01-2021)
function add_new_employee($data){
	$q = "INSERT INTO `employees`(`first_name`, `last_name`, `email`, `phone`, `password`, `gender`, `active`, `last_updated_at`) VALUES ('".makesafe($data['first_name'])."','".makesafe($data['last_name'])."','".makesafe($data['emailaddress'])."','".makesafe($data['mobile_num'])."','','".makesafe($data['gender'])."','1','".get_current_time()."')";
	// echo $q;
	if(db_query($q)) return true;
	
	return false;
}

// Delete given employee (25-01-2021)
function delete_employee($id)
{
	if(!empty($id) && db_query("DELETE FROM `employees` WHERE `employee_id` = '".$id."'")){
		return true;
	}	
	return false;		
}

// Update given employee (25-01-2021)
function update_employee($data)
{
	$q = "UPDATE `employees` SET `first_name`= '".makesafe($data['first_name'])."',`last_name`='".makesafe($data['last_name'])."',`email`='".makesafe($data['emailaddress'])."',`phone`='".makesafe($data['mobile_num'])."',`gender`='".makesafe($data['gender'])."',`last_updated_at`='".get_current_time()."' WHERE `employee_id` = '".makesafe($data['employee_id'])."'";

	if(db_query($q)){
		return true;
	}	
	return false;		
}

//Retrive all/given recipes from DB(13-02-2021)
function get_recipes_data($id = null){
	$recipes_data = array();
	$query = "";
	
	if($id && is_numeric($id)){
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
	$q = "INSERT INTO recipe (`recipe_name`, `recipe_description`, `recipe_image`, `item_id`, `serves`, `time`, `dish`, `ingrediants`, `method`, `created_at`) VALUES('".makesafe($data['recipe_name'])."','".makesafe($data['recipe_description'])."','".makesafe($data['img_path'])."','".makesafe($data['item_id'])."','".$data['serves']."','".$data['time']."','".$data['dish']."','".$data['ingrediants']."','".$data['recipe_steps']."','".get_current_time()."')";
	
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
	
	if($id && is_numeric($id)){
		$query = " WHERE order_id = '".$id."'";
	}
	// echo "SELECT orders.*,od.* FROM `orders` left outer join order_details as od ON orders.order_id = od.order_id ".$query;
	// $res = db_query("SELECT orders.*,od.* FROM `orders` left outer join order_details as od ON orders.order_id = od.order_id ".$query);
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

	$res = db_query("SELECT od.quantity as order_quantity,od.item_price,od.price,od.discount_price,it.item_name,it.item_image,o.status as order_status,o.order_key,o.order_at,p.amount,p.mode,p.timestamp,p.status as payment_status FROM `order_details` as od LEFT OUTER JOIN items as it ON od.`item_id` = it.item_id LEFT OUTER JOIN orders as o ON o.`order_id` = od.order_id LEFT OUTER JOIN payments as p ON p.`order_id` = o.order_id WHERE o.`order_id` = ".$id);
	
	while($row = db_fetch_assoc($res))
	{
		$orders_data[] = $row;
	}
	return $orders_data;
}

function get_order_status($id){
	switch ($id) {
		case '0':
			return "pending";
			break;
		case '1':
			return "cancelled";
			break;
		case '2':
			return "in process";
			break;
		case '4':
			return "completed";
			break;
		
		default:
			return "N/A";
			break;
	}
}
//Update order status based on given parameters(07-03-2021)
function order_handling($order_id,$label)
{
	if($label == 'approve'){
		$order_type = 2;
	}else if($label == 'cancel'){
		$order_type = 1;
	}
	if(db_query("UPDATE `orders` SET `status`='".$order_type."',`last_updated_time`='".get_current_time()."' WHERE `order_id` = ".$order_id))
		return true;
	
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
	
	if($id && is_numeric($id)){
		$query = " WHERE offer_id = '".$id."'";
	}
	if($filter){
		$query = " WHERE status = '1'";
	}
	$res = db_query("SELECT * FROM `offers` ".$query." ORDER BY offer_start DESC ");
	
	while($row = db_fetch_assoc($res))
	{
		$offers_data[] = $row;
	}
	return $offers_data;
}

// Add new offer (11-03-2021)
function add_new_offer($data){
	$q = "INSERT INTO `offers` (`type`, `offer_start`, `offer_end`, `status`, `description`, `code`, `min_order_price`, `offer_price`, `updated_at`, `discount`) VALUES ('".makesafe($data['offer_type'])."','".makesafe(set_date($data['offer_start']))."','".makesafe(set_date($data['offer_end']))."','".makesafe($data['is_active'])."','".makesafe($data['offer_description'])."','".strtoupper(makesafe($data['offer_code']))."','".makesafe($data['min_order_price'])."','".makesafe($data['offer_price'])."','".get_current_time()."','".makesafe($data['discount_value'])."')";

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

	array_push($final_data,array("id"=>"VID_".generateRandomString(4),"name"=>makesafe($data['video_name']),"url"=>makesafe($data['video_url'])));
	
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
	$img_id = "IMG_".generateRandomString(4);
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
	$img_id = "TALE_".generateRandomString(4);
	array_push($final_data,array("id"=>$img_id,"img_path"=>makesafe($data['img_path']),"thumb_img_path"=>makesafe($data['thumb_img_path'])));
	
	if(update_meta_value('tales',json_encode($final_data)))
		return $img_id;
	else
		return false;
}

//Get items based on given category (20-03-2021)
function get_items_by_category($cat_id)
{
	$items_data = array();

	// $res = db_query("SELECT * FROM `items` WHERE `category_id` = ".$cat_id);
	$res = db_query("SELECT items.*,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id WHERE items.category_id = ".$cat_id);
	
	while($row = db_fetch_assoc($res))
	{
		$items_data[] = $row;
	}
	return $items_data;
}


//Retrive all/given items from DB
function get_items_data_for_api($id = null){
	$items_data = array();
	$query = "";
	
	if($id && is_numeric($id)){
		$query = " WHERE items.item_id = '".$id."'";
	}
	$res = db_query("SELECT items.*,rec.recipe_id,rec.recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id ".$query);
	
	while($row = db_fetch_assoc($res))
	{
		$items_data[] = $row;
	}
	return $items_data;
}

//Retrive user cart details from DB
function get_user_cart_data($user_id){
	$cart_data = array();
	
	$res = db_query("SELECT c.`cart_id`,c.`item_id`, c.`quantity`,it.price_per_unit,it.discount_price,it.net_weight,it.item_name,it.item_image FROM `cart` as c LEFT OUTER JOIN items as it ON it.item_id = c.item_id WHERE user_id = '".$user_id."'");
	
	while($row = db_fetch_assoc($res))
	{
		$cart_data[] = $row;
	}
	return $cart_data;
}

//Generate a unique ID for given item
function generate_unique_id($label,$length = 5){
	$items_array = array("category"=> "#OCCAT","item"=> "#OCITM","order"=> "#OCORD","recipe"=> "#OCRCP","offer"=> "#OCOFR","user"=> "#OCUSR","employee"=> "#OCEMP","referral"=> "#OCREF");
	
	if($label && $items_array[$label])
		return $items_array[$label].generateRandomString($length);
	return false;
}
?>