<?php
/* Database config */
$db_host		= 'localhost';
	$db_user		= 'root';
	$db_pass		= '';
	$db_database	= 'cpms'; 
	//$conn = new mysqli($db_host, $db_user, $db_pass, $db_database);

/* End config */

$db = new PDO('mysql:host='.$db_host.';dbname='.$db_database, $db_user, $db_pass);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cpms";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

//connection
//mysqli_connect("localhost", "root", " ") or die(mysqli_error());
			//mysqli_select_db("cpms") or die(mysqli_error());
?>