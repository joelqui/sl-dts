<?php
require_once("../includes/initialize.php");

$personnel = new User();

$personnel->username = $_POST['username'];
$personnel->password = $_POST['password'];
$personnel->first_name = $_POST['firstname'];
$personnel->last_name = $_POST['lastname'];
$personnel->usertype = $_POST['usertype'];
$personnel->dept_id = $_POST['dept'];

echo $personnel->add();

?>