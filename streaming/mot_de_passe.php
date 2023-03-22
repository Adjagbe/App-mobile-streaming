<?php
	$db = mysqli_connect('localhost','root','','userdat');
	if (!$db) {
		echo "Database connection faild";
	}

	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = $_POST['password'];

	$sql = "SELECT username FROM login WHERE username = '".$username."'";

	$result = mysqli_query($db,$sql);
	$count = mysqli_num_rows($result);

	if ($count == 1) {<?php
	$db = mysqli_connect('localhost','root','','userdat');
	if (!$db) {
		echo "Database connection faild";
	}

	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = $_POST['password'];

	$sql = "SELECT username FROM login WHERE username = '".$username."'";

	$result = mysqli_query($db,$sql);
	$count = mysqli_num_rows($result);

	if ($count == 1) {
        $insert = "INSERT INTO login(username,email,password)VALUES('".$username."','".$email."','".$password."')";
		$query = mysqli_query($db,$insert);
		if ($query) {
			echo json_encode("Success");
		}
		
	}else{
		

        echo json_encode("Error");
	}

?>
		
	}else{
		$insert = "INSERT INTO login(username,email,password)VALUES('".$username."','".$email."','".$password."')";
		$query = mysqli_query($db,$insert);
		if ($query) {
			echo json_encode("Success");
		}
	}

?>