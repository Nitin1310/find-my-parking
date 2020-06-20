 <?php 

 $db_host		= 'localhost';
	$db_user		= 'root';
	$db_pass		= '';
	$db_database	= 'cpms'; 
	$conn = new mysqlii($db_host, $db_user, $db_pass, $db_database);
 
if (session_status() == PHP_SESSION_NONE) {
    session_start();
		
}

if (isset($_POST['Submit'])) {
	
	$phone=$_POST['phone'];
	$password=$_POST['password'];

	// To protect mysqli injection for Security purpose
	$phone = stripslashes($phone);
	$password = stripslashes($password);
	$phone = mysqli_real_escape_string($phone);
	$password = mysqli_real_escape_string($password);
	// Establishing Connection with Server by passing server_name, user_id and password as a parameter
	//$connection = mysqli_connect("localhost", "root", "");
	// Selecting Database
	//$db = mysqli_select_db("cpms", $connection);
	// SQL query to fetch information of registerd users and finds user match.
	$query = mysqli_query($conn,"select * from users where password='$password' AND phone='$phone'", $connection);
	$rows = mysqli_num_rows($query);
	//echo $rows;
	$row=mysqli_fetch_array($query);
	if ($rows == 1) {
		$_SESSION['phone']=$phone; // Initializing Session
		$_SESSION['password']=$password; // Initializing Session
	$_SESSION['access']=$row['access'];
	if ($row['access']==2){
	header("Location: ../index.php");
	}
	if ($row['access']==0){
	
	header("Location: ../0/index.php");
	}
	}
	
	
	
}

//
?>