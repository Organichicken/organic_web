<?php 
include("lib.php");
session_start();

// $result1=createAlter();// check all tables and creates if not exists and alter tables if necessary
// $params = session_get_cookie_params();
// setcookie("PHPSESSID", session_id(), 0, $params["path"], $params["domain"],true,true);

$uname = strtolower(safetodisplay(trim($_POST['username'])));
$passmd5 = safetodisplay($_POST['password']);

$diff = time_check();
if(isset($_SESSION['defualttime']))
	$def_time = 600;
else
	$def_time = 30;


if ($diff > $def_time)
{	
	$lquery = "SELECT * FROM `admin_users` WHERE LOWER(email)='".$uname."' AND `password`=md5('".$passmd5."')";
	/* echo $lquery;
	exit; */
	$lresp = db_query($lquery);
	$lres = db_fetch_assoc($lresp);

	if(db_num_rows($lresp))
	{
		unset($_SESSION['defualttime']);
		unset($_SESSION['atempt']);
		
		//If admin Logged in
		// $_SESSION['user_oldui'] = $passmd5;
		$_SESSION['user_id'] = $lres['admin_id'];
		$_SESSION['user_first_name'] = $lres['first_name'];
		$_SESSION['last_login_timestamp'] = time();
		$_SESSION['usr_email'] = $lres['email'];
		$_SESSION['usr_phone'] = $lres['phone'];
		
		update_insights('login','');
		
		header("location: dashboard.php");
		exit();
	}
	else
	{
		if(isset($_SESSION['atempt']))
		{			
			$_SESSION['atempt']=$_SESSION['atempt']+1;
			if($_SESSION['atempt']<=3)
			{
				$log = logs_data("Web_Login");
				header("location: login.php?signIn=1");
				exit();
			}else if($_SESSION['atempt']==4){
				$log = logs_data("Web_Login");
				header("location: login.php?signIn=4");
				exit();
			}
			else if($_SESSION['atempt']>4)
			{
				$log = logs_data("Web_Login");
				$_SESSION['defualttime']=600;
				header("location: login.php?signIn=5");
				exit();
			}
		}
		else
			$_SESSION['atempt']=1;
		
		header("location: login.php?signIn=1");
		exit();
	}
}
exit;
?>