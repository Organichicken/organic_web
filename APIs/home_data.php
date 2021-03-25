<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = $items_data = array();
// $res = db_query("SELECT items.*,cat.category_name,recp.recipe_name FROM `items` left outer join categories as cat ON cat.category_id = items.category_id left outer join recipe as recp ON recp.recipe_id = items.recipe_id ");
// $res = db_query("SELECT items.*,cat.category_name FROM `items` left outer join categories as cat ON cat.category_id = items.category_id");
$res = db_query("SELECT `item_id`,`item_name`,`item_image`,`item_description`,`price_per_unit` FROM `items` WHERE `in_stock` = '1' LIMIT 6");
while($row = db_fetch_assoc($res))
{
    $items_data[] = $row;
}

$final_data['trending_items'] = $items_data;
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

if(db_num_rows($res)){
    $resp['status'] = 200;
    $resp['message'] = "success";
    $resp['body'] = $final_data;
}else{
    $resp['status'] = 500;
    $resp['message'] = "something went wrong";
    $resp['body'] = array();
}
echo json_encode($resp);
?>