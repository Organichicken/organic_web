<?php
$API_ACCESS = true;
include("../lib.php");

/* Save data for API Insights*/
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
update_api_insights($url,$_POST ? json_encode($_POST) : '');

$resp = array();

$user_phone = db_escape($_POST['phone']);
$user_hash_key = db_escape($_POST['hash_key']);

// if(sqlValue("SELECT COUNT(*) FROM `employee_otp_key` WHERE `nkey` = '".$user_hash_key."' AND `user_phone` = '".$user_phone."'"))
{
    $offers = array();
    $resp['status'] = 200;
    $resp['message'] = "cart details";
    foreach (get_offers_data(null,true) as $row) {
        unset($row['updated_at']);
        $row['min_order_price'] = (string)round($row['min_order_price']);
        $row['offer_price'] = (string)round($row['offer_price']);
        $offers[] = $row;
    }
    $resp['body'] = $offers;
}
echo json_encode($resp);
?>