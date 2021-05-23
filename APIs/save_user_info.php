<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$user_phone = makesafe($_POST['phone']);
$user_hash_key = makesafe($_POST['hash_key']);

$resp = array();

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'")){   
    $resp['status'] = 200;
    $resp['body'] = array();
    $target_dir = "../uploads/user_profile_pics/";

	$img_name = explode(".", $_FILES["profile_pic"]["name"]);
	$encrypt_name = strtolower(str_replace(' ', '_',makesafe("user_".$_POST['user_id']))).'_'.time();
	$target_file = $target_dir.$encrypt_name.'.'.end($img_name);
	$img_path = '';
    
	//Code will move file to local folder
	if(move_uploaded_file($_FILES['profile_pic']['tmp_name'],$target_file)){
		$img_path = $encrypt_name.'.'.end($img_name);		
	}

    if(db_query("UPDATE `users` SET `first_name` = '".makesafe($_POST['name'])."',`email` = '".makesafe($_POST['email'])."',`profile_pic` = '".makesafe($img_path)."', `last_updated_at` = '".date('Y-m-d H:i:s')."' WHERE `user_id` = '".makesafe($_POST['user_id'])."'")){
        $resp['message'] = "successfully saved";
    }else{
        $resp['status'] = 500;
        $resp['message'] = "something went wrong";
    }
}else{
    $resp['status'] = 404;
    $resp['message'] = "invalid user";
    $resp['body'] = array();
}

echo json_encode($resp);
?>