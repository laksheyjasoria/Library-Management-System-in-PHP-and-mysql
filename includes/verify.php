<?php 
if ($_SESSION['login'] == false) {
 echo header("Location:main_login.php");
}
?>