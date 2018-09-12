<?php
require_once("../includes/initialize.php");

/*$junk = new Junk();*/

$user = User::find_by_id(1);

/*
echo $user->usertype;
$user->delete();
*/
//$users = User::find_all();
/*
foreach($users as $user) {
echo "User: ".$user->username."<br />";
echo "Name: ".$user->full_name()."<br /><br />";
}
*/
/*
$personnel = new User();
$personnel->username = "a";
$personnel->password = "a";
$personnel->first_name = "a";
$personnel->last_name = "a";
$personnel->usertype = 1;
$personnel->dept_id = 1;
$personnel->personnel_id = 1;
$personnel->create();
*/

$dept = Department::find_by_id(0);
$dept->delete();
/*
$dept = new Department();

$dept->dept_name = "SCHOOL GOVERNANCE AND OPERATIONS DIVISION";
$dept->dept_abbreviation = "SGOD_OFFICE";
$dept->dept_head = 144;

$dept->create();
*/



?>