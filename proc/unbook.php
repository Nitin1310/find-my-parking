 <?php 
 
if (session_status() == PHP_SESSION_NONE) {
    session_start();
    $db_host		= 'localhost';
	$db_user		= 'root';
	$db_pass		= '';
	$db_database	= 'cpms'; 
	$conn = new mysqli($servername, $username, $password, $dbname);
	//$connection = mysql_connect("localhost", "root", "");
	//$db = mysql_select_db("cpms", $connection);
	$phone=$_SESSION['phone'];
	$query = mysqli_query($conn,"select * from users where pl_booked='YES' AND phone='$phone'", $connection);
	$rows = mysqli_num_rows($query);
	//echo $rows;
	$row=mysqli_fetch_array($query);
	//if ($rows == 1) {
	//mysql_connect("localhost", "root", "") or die(mysql_error());
    //mysql_select_db("cpms") or die(mysql_error());
	$sql = "UPDATE users SET pl_booked = 'NO' WHERE phone = '$phone'";
	mysqli_query($connn,$sql);
	$sql = "UPDATE zones SET status = 'UNBOOKED' WHERE phone = '$phone'";
	mysqli_query($conn,$sql);
	 header("Location: ../success_unbook.php");
	//}
		
}