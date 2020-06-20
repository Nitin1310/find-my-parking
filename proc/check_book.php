 <?php 
 
if (session_status() == PHP_SESSION_NONE) {
    session_start();
    $db_host		= 'localhost';
			$db_user		= 'root';
			$db_pass		= '';
			$db_database	= 'cpms'; 
			$conn = new mysqli($servername, $username, $password, $dbname);
	//$connection = mysqli_connect("localhost", "root", "");
	//$db = mysqli_select_db("cpms", $connection);
	$phone=$_SESSION['phone'];
	$query = mysqli_query($conn,"select * from users where pl_booked='YES' AND phone='$phone'", $connection);
	$rows = mysqli_num_rows($query);
	//echo $rows;
	$row=mysqli_fetch_array($query);
	if ($rows == 1) {
	 header("Location: ../booked.php");
	}else{
	 header("Location: ../your_car.php");
		}
		
}