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

if(!empty($user_id))
    $res = db_query("SELECT items.*,COALESCE(cart.quantity,'') as cart_item_quantity,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id left outer join cart ON cart.item_id = items.item_id AND cart.user_id = '".db_escape($user_id)."' WHERE `in_stock` = '1' LIMIT 6");
else
    $res = db_query("SELECT items.*,COALESCE('') as cart_item_quantity,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id WHERE `in_stock` = '1' LIMIT 6");

while($row = db_fetch_assoc($res))
{
    $items_data[] = $row;
}
if(!empty($user_id))
    $res = db_query("SELECT items.*,COALESCE(cart.quantity,'') as cart_item_quantity,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id left outer join cart ON cart.item_id = items.item_id AND cart.user_id = '".db_escape($user_id)."' WHERE `in_stock` = '1' AND `is_trending` = '1' LIMIT 6");
else
    $res = db_query("SELECT items.*,COALESCE('') as cart_item_quantity,COALESCE(rec.recipe_id,'') as recipe_id,COALESCE(rec.recipe_name,'') as recipe_name FROM `items` left outer join recipe as rec ON rec.item_id = items.item_id WHERE `in_stock` = '1' AND `is_trending` = '1' LIMIT 6");

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
$final_video_data = $video_data ? json_decode($video_data,true) : array();
$final_data['video_links'] = $final_video_data;

//Get slider images data
$images_data = get_meta_value('slider_images');
$final_sliders_data = $images_data ? json_decode($images_data,true) : array();
$final_data['slider_images'] = $final_sliders_data;

//Get tales data
$tales_data = get_meta_value('tales');
$final_tales_data = $tales_data ? json_decode($tales_data,true) : array();
$final_data['tales'] = $final_tales_data;

$final_data['user_info'] = (object)array();
if(!empty($user_id))
    $final_data['user_info'] = sqlr("SELECT `user_id`, `first_name`, `email`, `phone`, `profile_pic`, `active`, `is_member`, `membership_ends` FROM `users` WHERE user_id = '".$user_id."' LIMIT 1");
    ;

$resp['status'] = 200;
$resp['message'] = "success";
$resp['body'] = $final_data;
// if(db_num_rows($res)){
    // $resp['status'] = 200;
    // $resp['message'] = "success";
    // $resp['body'] = $final_data;
// }else{
    // $resp['status'] = 500;
    // $resp['message'] = "something went wrong";
    // $resp['body'] = array();
// }
echo json_encode($resp);
?>