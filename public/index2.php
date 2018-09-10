<?php
require_once("../includes/initialize.php");

/*$junk = new Junk();*/

/*
//$users = User::find_all();

foreach($users as $user) {
echo "User: ".$user->username."<br />";
echo "Name: ".$user->full_name()."<br /><br />";
}
*/

$personnel = new User();
$personnel->username = "a";
$personnel->password = "a";
$personnel->first_name = "a";
$personnel->last_name = "a";
$personnel->usertype = 1;
$personnel->dept_id = 1;
$personnel->personnel_id = 1;
$personnel->create();




?>