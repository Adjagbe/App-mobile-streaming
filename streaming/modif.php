<?php 

$db= mysqli_connect("localhost","root","", "userdat");
if (!$db){
    echo "Database connect error" .mysqli_error();
}



?>