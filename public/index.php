<?php
require_once("../includes/initialize.php");


$session->login(1);


echo 'user_id = '.$_SESSION['user_id'];
echo 'dept_id = '.$_SESSION['dept_id'];


$session->logout();

?>