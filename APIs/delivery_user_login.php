<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = db_escape($_POST['phone']);
$user_password = db_escape($_POST['password']);

$resp = array();
$usr_qry = db_query("SELECT * FROM `delivery_users` WHERE `password` = '".md5($user_password)."' AND `phone` = '".$user_phone."' LIMIT 1");

if($row = db_fetch_assoc($usr_qry)){
    $resp['status'] = 200;
    $resp['message'] = "log in successful";
    $hash_key = md5($user_phone.date('Y-m-d H:i:s'));
    if(db_query("UPDATE `delivery_users` SET `hash_key`= '".$hash_key."',`hash_key_updated_at`= '".date('Y-m-d H:i:s')."' WHERE `delivery_user_id` = '".$row['delivery_user_id']."'")){
        if(!empty($_POST['fcm_token']) && !empty($row['delivery_user_id'])){
            $_POST['device'] = 'android';
            if(sqlValue("SELECT COUNT(*) FROM `fcm_tokens` WHERE `delivery_user_id` = '".$row['delivery_user_id']."'"))
                $res = db_query("UPDATE `fcm_tokens` SET `token` = '".makesafe($_POST['fcm_token'])."',`device` = '".makesafe($_POST['device'])."',`updated_at` = '".date('Y-m-d H:i:s')."' WHERE `delivery_user_id` = '".$row['delivery_user_id']."'");
            else
                $res = db_query("INSERT INTO `fcm_tokens` ( `delivery_user_id`, `token`, `device`, `updated_at`) VALUES ('".makesafe($row['delivery_user_id'])."','".makesafe($_POST['fcm_token'])."','".makesafe($_POST['device'])."','".date('Y-m-d H:i:s')."')");
        }
        $resp['body'] = array('nkey' => $hash_key, "user_id" => $row['delivery_user_id']);
    }else{
        $resp['status'] = 500;
        $resp['message'] = "something went wrong";
    }
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid password";
    $resp['body'] = array();
}
echo json_encode($resp);
?>