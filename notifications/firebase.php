<?php
class Firebase {
 
    $devices = array();

    //defined a new constant for firebase api key
    define('FIREBASE_API_KEY', 'AAAAJ9OpIow:APA91bHUiKfX8BFoVI61O6mGSwYykOObuyZfck0jE_HY-46n8Me4fydynxKb6GM_w4h1feVtvUy1SXTjT934_yJzNchVmUUd6RrMJw92s2exLGPKJpndxq5z466KBueen2WBhd_c5r5z');

    public function send($message, $data) {
        $fields = array(
            'registration_ids' => $this->devices,
            'data' => array( "message" => $message ),
        );
        if(is_array($data)){
			foreach ($data as $key => $value) {
				$fields['data'][$key] = $value;
			}
		}
        return $this->sendPushNotification($fields);
    }
    
    /*
		Set the devices to send to
		@param $deviceIds array of device tokens to send to
	*/
	function setDevices($deviceIds){
	
		if(is_array($deviceIds)){
			$this->devices = $deviceIds;
		} else {
			$this->devices = array($deviceIds);
		}
	}

    /*
    * This function will make the actuall curl request to firebase server
    * and then the message is sent 
    */
    private function sendPushNotification($fields) {
        
        //firebase server url to send the curl request
        $url = 'https://fcm.googleapis.com/fcm/send';   

        //building headers for the request
        $headers = array(
            'Authorization: key=' . FIREBASE_API_KEY,
            'Content-Type: application/json'
        );
 
        //Initializing curl to open a connection
        $ch = curl_init();
 
        //Setting the curl url
        curl_setopt($ch, CURLOPT_URL, $url);
        
        //setting the method as post
        curl_setopt($ch, CURLOPT_POST, true);
 
        //adding headers 
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
 
        //disabling ssl support
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        
        //adding the fields in json format 
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
 
        //finally executing the curl request 
        $result = curl_exec($ch);
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }
 
        //Now close the connection
        curl_close($ch);
 
        //and return the result 
        return $result;
    }
}
?>