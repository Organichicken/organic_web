<?php
/*
	Author : VJ (06-01-2021)
	This file will connect database and set default timezone
*/
include("db.php");

define('ROOTPATH', __DIR__);

$dbServer = "localhost";
$dbUsername = "vijay";
$dbPassword = "vijay";
$dbDatabase = "organic_chicken";
$tz = "Asia/Kolkata";

$ROOT_PATH = __DIR__ . '/';

$link = db_connect($dbServer, $dbUsername, $dbPassword,$dbDatabase);
$map_key = 'AIzaSyBp84A3bZLkm31wFNul_UazxmBTEEuZIaQ';

date_default_timezone_set($tz);
?>