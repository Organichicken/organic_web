<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = $items_data = $trending_items = array();

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);
$user_id = '';

if(!empty($user_phone) && !empty($user_hash_key)){
    if(!sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'")){
        $resp['status'] = 404;
        $resp['message'] = "invalid user";
        $resp['body'] = array();
        echo json_encode($resp);
        exit;
    }else
        $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'");
}

//Get user info data
$final_data['user_info'] = (object)array('is_member' => '0');
$user_plan = array();
if(!empty($user_id)){
    $final_data['user_info'] = sqlr("SELECT `user_id`, `first_name`, `email`, `phone`, `profile_pic`, `active`, `is_member`, `membership_ends` FROM `users` WHERE user_id = '".$user_id."' LIMIT 1");
    if($user_plan = sqlValue("SELECT `extra_data`,`member_ship_end` FROM `user_member_ship_data` WHERE `user_id` = '".$user_id."'  AND member_ship_end > '".date('Y-m-d H:i:s')."' ORDER BY `member_ship_end` DESC LIMIT 1")){
        $user_plan = json_decode($user_plan,true);        
    }
}

//Get member ship plans (VJ 19/06/21)
$plans_data = get_meta_value('member_ship_plans');
$plans_data = $plans_data ? json_decode($plans_data,true) : array();
$final_plans_data = array();
$plan_exists = 0;
foreach ($plans_data as $plan) {
    $plan['user_current_plan'] = "0";
    if(!empty($user_plan) && $plan['id'] == $user_plan['id']){
        $plan_exists++;
        $plan['user_current_plan'] = "1";
    }
    if($plan['plan_days'] <= 45){
        $plan['days_label'] = "days";
    }else if($plan['plan_days'] < 360){
        $plan['plan_days'] = (string)round($plan['plan_days'] / 30);
        $plan['days_label'] = "months";
    }else{
        $plan['plan_days'] = (string)round($plan['plan_days'] / 365);
        $plan['days_label'] = "year";
    }
    $final_plans_data[] = $plan;
}
//If plan deleted adding existing plan to current plans
if(empty($plan_exists))
{
    $user_plan['user_current_plan'] = "1";
    if($user_plan['plan_days'] <= 45){
        $user_plan['days_label'] = "days";
    }else if($user_plan['plan_days'] < 360){
        $user_plan['plan_days'] = (string)round($user_plan['plan_days'] / 30);
        $user_plan['days_label'] = "months";
    }else{
        $user_plan['plan_days'] = (string)round($user_plan['plan_days'] / 365);
        $user_plan['days_label'] = "year";
    }
    $final_plans_data[] = $user_plan;
}
$final_data['member_ship_plans'] = $final_plans_data;

if(!empty($user_id))
    $res = db_query("SELECT items.*,COALESCE(cart.quantity,'') as cart_item_quantity,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id left outer join cart ON cart.item_id = items.item_id AND cart.user_id = '".db_escape($user_id)."' WHERE `in_stock` = '1' AND `is_deleted` = '0' ORDER BY items.item_name ASC LIMIT 6");
else
    $res = db_query("SELECT items.*,COALESCE('') as cart_item_quantity,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id WHERE `in_stock` = '1' AND `is_deleted` = '0' LIMIT 6");

while($row = db_fetch_assoc($res))
{
    $items_data[] = $row;
}
if(!empty($user_id))
    $res = db_query("SELECT items.*,COALESCE(cart.quantity,'') as cart_item_quantity,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id left outer join cart ON cart.item_id = items.item_id AND cart.user_id = '".db_escape($user_id)."' WHERE `in_stock` = '1' AND `is_deleted` = '0' AND `is_trending` = '1' ORDER BY items.item_name ASC LIMIT 6");
else
    $res = db_query("SELECT items.*,COALESCE('') as cart_item_quantity,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id WHERE `in_stock` = '1' AND `is_deleted` = '0' AND `is_trending` = '1' LIMIT 6");

while($row = db_fetch_assoc($res))
{
    $trending_items[] = $row;
}

$final_data['trending_items'] = parse_items_data($trending_items);
$final_data['recommended_items'] = parse_items_data($items_data);

$final_data['categories'] = get_categories_data();
$final_data['cart_count'] = empty($user_id) ? '0' : (string)sqlValue("SELECT COUNT(*) FROM `cart` as c LEFT OUTER JOIN items as it ON it.item_id = c.item_id WHERE user_id = '".$user_id."'");

//Get video links data
$video_data = get_meta_value('video_links');
$final_data['video_links'] = $video_data ? json_decode($video_data,true) : array();

//Get slider images data
$images_data = get_meta_value('slider_images');
$final_data['slider_images'] = $images_data ? json_decode($images_data,true) : array();

//Get tales data
$tales_data = get_meta_value('tales');
$final_data['tales'] = $tales_data ? json_decode($tales_data,true) : array();

//Get banner data
$banner_data = get_meta_value('banner');
$final_data['banner_image'] = $banner_data ? json_decode($banner_data,true) : array();

$resp['status'] = 200;
$resp['message'] = "success";
$resp['body'] = $final_data;

echo json_encode($resp);
?>