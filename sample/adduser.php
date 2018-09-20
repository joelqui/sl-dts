<?php
require_once("../includes/initialize.php");

//edit dept_if 
$user = User::find_by_id(1);
$user->dept_id=11;
$user->update();
$user = User::find_by_id(2);
$user->dept_id=22;
$user->update();
$user = User::find_by_id(3);
$user->dept_id=33;
$user->update();
$user = User::find_by_id(4);
$user->dept_id=44;
$user->update();
$user = User::find_by_id(5);
$user->dept_id=55;
$user->update();
$user = User::find_by_id(6);
$user->dept_id=66;
$user->update();

//echo $user->usertype;
//$user->delete();
/*
$users = User::find_all();

foreach($users as $user) {
echo "User: ".$user->username."<br />";
echo "Name: ".$user->full_name()."<br /><br />";
}

$personnel = new User();
$personnel->username = "h";
$personnel->password = "h";
$personnel->first_name = "h";
$personnel->last_name = "h";
$personnel->usertype = 7;
$personnel->dept_id = 7;
$personnel->personnel_id = 7;
$personnel->create();
*/
?>