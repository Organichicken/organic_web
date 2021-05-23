<?php
// Configuration file for push.php
$config = array(
	// These are the settings for development mode
	'development' => array(
		// The APNS server that we will use
		'server' => 'gateway.sandbox.push.apple.com:2195',

		// The SSL certificate that allows us to connect to the APNS servers
		'certificate' => $ROOT_PATH.'notifications/pushProCertificate.pem',
		'passphrase' => 'Polygon123@',

		// Configuration of the MySQL database
		'db' => array(
			'host'     => 'localhost',
			'dbname'   => '',
			'username' => '',
			'password' => '',
			),

		// Name and path of our log file
		'logfile' => 'push_development.log',
		),

	// These are the settings for production mode
	'production' => array(
		// The APNS server that we will use
		'server' => 'gateway.push.apple.com:2195',

		// The SSL certificate that allows us to connect to the APNS servers
		'certificate' => $ROOT_PATH.'notifications/pushProCertificate.pem',
		'passphrase' => 'Polygon123@',

		// Configuration of the MySQL database
		'db' => array(
			'host'     => 'localhost',
			'dbname'   => '',
			'username' => '',
			'password' => '',
			),
			
		// Name and path of our log file
		'logfile' => 'push_production.log',
		),
	);
