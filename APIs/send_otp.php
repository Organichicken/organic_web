<?php
// $send_otp =  true;
if($send_otp){
    // Account details
    $apiKey = urlencode('NzI0NDQ4NDczMDc2Mzc1MTM5NDU1NTM1NzM3NTMzNDI=');

    // Message details
    $numbers = array("91".$user_phone);
    $sender = urlencode('GGFPL');
    // $message = rawurlencode('Dear Customer, 1234 is OTP for your login request. Do Not disclose it to any one');
    $message = rawurlencode('GGFPL: Hi, '.$six_digit_random_number.' is your verification code. Thanks for using Organichicken. Please use this to confirm your account.');

    $numbers = implode(',', $numbers);

    // Prepare data for POST request
    $data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message, "test" =>  false);

    // Send the POST request with cURL
    $ch = curl_init('https://api.textlocal.in/send/');
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    curl_close($ch);

    // Process your response here
    // echo $response;
}
?>