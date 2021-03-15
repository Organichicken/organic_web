<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = $items_data = array();
// $res = db_query("SELECT items.*,cat.category_name,recp.recipe_name FROM `items` left outer join categories as cat ON cat.category_id = items.category_id left outer join recipe as recp ON recp.recipe_id = items.recipe_id ");
$res = db_query("SELECT items.*,cat.category_name FROM `items` left outer join categories as cat ON cat.category_id = items.category_id");
while($row = db_fetch_assoc($res))
{
    $items_data[$row['category_id']][] = $row;
}

if(db_num_rows($res)){
    $resp['status'] = 200;
    $resp['message'] = "success";
    $resp['data'] = $items_data;
}else{
    $resp['status'] = 500;
    $resp['message'] = "something went wrong";
    $resp['body'] = array();
}
echo json_encode($resp);
?>