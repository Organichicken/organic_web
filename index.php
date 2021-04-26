<?php
session_start();
if(isset($_SESSION['usr_email']))
{
	header("location: dashboard.php");
	exit;
}
else
	header("location: login.php");
?>