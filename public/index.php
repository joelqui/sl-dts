<?php
require_once("../includes/functions.php");
//require_once("../includes/database.php");
//require_once("../includes/user.php");

$junk = new Junk();
$user = User::find_by_id(1);
echo $user->full_name()."<br />";

$users = User::find_all();

foreach($users as $user) {
echo "User: ".$user->username."<br />";
echo "Name: ".$user->full_name()."<br /><br />";

}


?>