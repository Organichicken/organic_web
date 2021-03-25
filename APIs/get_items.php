<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = makesafe($_POST['phone']);
$user_hash_key = makesafe($_POST['hash_key']);

$resp = $data = array();

$resp['status'] = 200;
$resp['message'] = "success";
if(isset($_POST['item_id']) && !empty($_POST['item_id'])){
    $resp['body'] = get_items_data_for_api(makesafe($_POST['item_id']));
}else if(isset($_POST['category_id']) && !empty($_POST['category_id'])){
    $resp['body'] = get_items_by_category(makesafe($_POST['category_id']));
}else{
    $resp['body'] = get_items_data_for_api();
}

/* if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    
    $resp['message'] = "success";
    if(isset($_POST['item_id']) && !empty($_POST['item_id'])){
        $resp['body'] = get_items_data(makesafe($_POST['item_id']));
    }else if(isset($_POST['category_id']) && !empty($_POST['category_id'])){
        $resp['body'] = get_items_by_category(makesafe($_POST['category_id']));
    }else{
        $resp['body'] = get_items_data();
    }
    
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
} */

echo json_encode($resp);
?>