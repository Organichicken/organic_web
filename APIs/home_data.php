<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = $items_data = $trending_items = array();

$res = db_query("SELECT items.*,COALESCE(cart.quantity,'') as cart_item_quantity FROM `items` left outer join cart ON cart.item_id = items.item_id AND cart.user_id = '".db_escape($_POST['user_id'])."' WHERE `in_stock` = '1' LIMIT 6");
while($row = db_fetch_assoc($res))
{
	$row['price_per_unit'] = (string)round($row['price_per_unit']);
    $items_data[] = $row;
}
$res = db_query("SELECT items.*,COALESCE(cart.quantity,'') as cart_item_quantity FROM `items` left outer join cart ON cart.item_id = items.item_id AND cart.user_id = '".db_escape($_POST['user_id'])."' WHERE `in_stock` = '1' AND `is_trending` = '1' LIMIT 6");
while($row = db_fetch_assoc($res))
{
	$row['price_per_unit'] = (string)round($row['price_per_unit']);
    $trending_items[] = $row;
}

$final_data['trending_items'] = $trending_items;
$final_data['recommended_items'] = $items_data;

$final_data['categories'] = get_categories_data();
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