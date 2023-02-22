<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = array();
$resp['status'] = 200;
// if(db_query("INSERT INTO `fcm_tokens` ( `user_id`, `token`, `device`, `updated_at`) VALUES ('".makesafe($_POST['user_id'])."','".makesafe($_POST['token'])."','".makesafe($_POST['device'])."','".date('Y-m-d H:i:s')."')")){
// $pincodes = array("520001","520003","521226","520012","520008");
$pincodes = get_only_pincodes();
if(in_array($_POST['pincode'],$pincodes)){
    $resp['message'] = "delivery available";
    $resp['body'] = array("is_deliverable" => "1");
}else{
    $resp['body'] = array("is_deliverable" => "0");
    $resp['message'] = "delivery not available";
}

echo json_encode($resp);
?>