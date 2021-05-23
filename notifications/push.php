<?php
// This script should be run as a background process on the server. It checks
// every few seconds for new messages in the database table push_queue and 
// sends them to the Apple Push Notification Service.
//
// Usage: php push.php development &
//    or: php push.php production &
//
// The & will detach the script from the shell and run it in the background.
//
// The "development" or "production" parameter determines which APNS server
// the script will connect to. You can configure this in "push_config.php".
// Note: In development mode, the app should be compiled with the development
// provisioning profile and it should have a development-mode device token.
//
// If a fatal error occurs (cannot establish a connection to the database or
// APNS), this script exits. You should probably have some type of watchdog
// that restarts the script or at least notifies you when it quits. If this
// script isn't running, no push notifications will be delivered!


////////////////////////////////////////////////////////////////////////////////
function writeToLog($message)
{
	global $config,$ROOT_PATH;
	if ($fp = fopen($ROOT_PATH."notifications/".$config['logfile'], 'at'))
	{
		fwrite($fp, date('c') . ' ' . $message . PHP_EOL);
		fclose($fp);
	}
}
function fatalError($message)
{
	writeToLog('Exiting with fatal error: ' . $message);
	exit;
}

////////////////////////////////////////////////////////////////////////////////

class APNS_Push
{
	private $fp = NULL;
	private $server;
	private $certificate;
	private $passphrase;

	function __construct($config)
	{
		$this->server = $config['server'];
		$this->certificate = $config['certificate'];
		$this->passphrase = $config['passphrase'];
		$this->connectToAPNS();		
	}

	// Opens an SSL/TLS connection to Apple's Push Notification Service (APNS).
	// Returns TRUE on success, FALSE on failure.
	function connectToAPNS()
	{
		$ctx = stream_context_create();
		stream_context_set_option($ctx, 'ssl', 'local_cert', $this->certificate);
		stream_context_set_option($ctx, 'ssl', 'passphrase', $this->passphrase);

		$this->fp = stream_socket_client('ssl://' . $this->server, $err, $errstr, 60,
			STREAM_CLIENT_CONNECT|STREAM_CLIENT_PERSISTENT, $ctx);

		if (!$this->fp)
		{
			writeToLog("Failed to connect: $err $errstr");
			return FALSE;
		}
		//echo "connection OK";
		writeToLog('Connection OK');
		return TRUE;
	}

	// Drops the connection to the APNS server.
	function disconnectFromAPNS()
	{
		fclose($this->fp);
		$this->fp = NULL;
	}

	// Attempts to reconnect to Apple's Push Notification Service. Exits with
	// an error if the connection cannot be re-established after 3 attempts.
	function reconnectToAPNS()
	{
		$this->disconnectFromAPNS();
	
		$attempt = 1;
	
		while (true)
		{
			writeToLog('Reconnecting to ' . $this->server . ", attempt $attempt");

			if ($this->connectToAPNS()) return;

			if ($attempt++ > 3) fatalError('Could not reconnect after 3 attempts');

			sleep(60);
		}
	}

	// Sends a notification to the APNS server. Returns FALSE if the connection
	// appears to be broken, TRUE otherwise.
	function sendNotification( $deviceToken,$payload)
	{
		
		/*	$msg = chr(0)                       // command (1 byte)
			. pack('n', 32)                // token length (2 bytes)
			. pack('H*', $deviceToken)     // device token (32 bytes)
			. pack('n', strlen($payload))  // payload length (2 bytes)
			. $payload;                    // the JSON payload
		*/ 
		$msg = chr(0) . chr(0) . chr(32) . pack('H*', str_replace(' ', '', $deviceToken)) . chr(0) . chr(strlen($payload)) . $payload;

		$result = @fwrite($this->fp, $msg, strlen($msg));
 
		if($result)
		{	
			return true;
		}
		else
		{
			
			writeToLog('Message not delivered');
			return FALSE;
		}
	}
}
