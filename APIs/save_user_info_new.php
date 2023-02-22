<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_REQUEST ? json_encode($_REQUEST) : '');

$user_phone = makesafe($_REQUEST['phone']);
$user_hash_key = makesafe($_REQUEST['hash_key']);

$resp = array();

if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'") && $user_id = sqlValue("SELECT `user_id` FROM `users` WHERE `phone` = '".$user_phone."'")){
    $resp['status'] = 200;
    $resp['body'] = array();

    if($_REQUEST['is_pic_changed'] == 1){
        $target_dir = "../uploads/user_profile_pics/";

        $img_name = explode(".", $_FILES["profile_pic"]["name"]);
        $encrypt_name = strtolower(str_replace('#','_',makesafe("user_".$user_id))).'_'.time();
        $target_file = $target_dir.$encrypt_name.'.'.end($img_name);
        $img_path = '';
        
        //Code will move file to local folder
        if(move_uploaded_file($_FILES['profile_pic']['tmp_name'],$target_file)){
            $img_path = $encrypt_name.'.'.end($img_name);
			// $old_img_path = sqlValue("SELECT `profile_pic` FROM `users` WHERE `user_id` = '".$user_id."'");
			//Remove the image from folder then delete the image
			/* if(!empty($old_img_path))
				unlink('../'.get_image_url('user_profile',true).$old_img_path);	 */			
        }
        $upload_img = ",`profile_pic` = '".makesafe($img_path)."'";
    }    

    if(db_query("UPDATE `users` SET `first_name` = '".makesafe($_REQUEST['name'])."',`email` = '".makesafe($_REQUEST['email'])."' ".$upload_img.", `last_updated_at` = '".date('Y-m-d H:i:s')."' WHERE `user_id` = '".$user_id."'")){
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