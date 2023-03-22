<?php 

$db= mysqli_connect("localhost","root","", "userdata");
if (!$db){
    echo "Database connect error" .mysqli_error();
}


$username = $_POST['username'];

$select = $db->query("SELECT * FROM login WHERE username = '".$username."' ");
$count = mysqli_num_rows( $select);
$data = mysqli_fetch_assoc($select);

$idData = $data ['id'];
$userData = $data ['username'];

if ($count){
    $url = 'http://'.$_SERVER['SERVER_NAME'].'/streaming - Copie (2)/streaming/modif.php?id='.$idData.'$username'.$userData;

    echo json_encode($url);
}else{
    echo json_encode("INVALIDUSER");
}


?>