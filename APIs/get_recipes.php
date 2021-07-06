<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

/* $user_phone = makesafe($_POST['phone']);
$user_hash_key = makesafe($_POST['hash_key']); */

$resp = $data = array();

$resp['status'] = 200;
$resp['message'] = "success";
if(!empty($_POST['recipe_id']))
    $resp['body'] = get_recipes_data(makesafe($_POST['recipe_id']));
else
    $resp['body'] = get_recipes_data();

echo json_encode($resp);
?>