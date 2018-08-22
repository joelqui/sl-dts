<?php
require_once("../includes/database.php");
require_once("../includes/user.php");

$record = User::find_by_id(3);
$user = new User();
$user->userid = $record['user_id'];
$user->username = $record['user_name'];

echo $user->full_name();



?>