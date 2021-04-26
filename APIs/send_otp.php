<?php
if($send_otp){
    // Account details
    $apiKey = urlencode('Dfti+cEHPyg-VWDXEcbM7MuoDHXUKJW73Hl0aLxRMN');

    // Message details
    $numbers = array(918886810715);
    $sender = urlencode('QWPARC');
    $message = rawurlencode('Dear Customer, 1234 is OTP for your login request. Do Not disclose it to any one');

    $numbers = implode(',', $numbers);

    // Prepare data for POST request
    $data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message, "test" =>  true);

    // Send the POST request with cURL
    $ch = curl_init('https://api.textlocal.in/send/');
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    curl_close($ch);

    // Process your response here
    echo $response;

}
?>