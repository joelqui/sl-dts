<?php
require_once("../includes/initialize.php");

/*$junk = new Junk();

$user = User::find_by_id(1);


echo $user->usertype;
$user->delete();
*/
//$users = User::find_all();
/*
foreach($users as $user) {
echo "User: ".$user->username."<br />";
echo "Name: ".$user->full_name()."<br /><br />";
}


$personnel = new User();
$personnel->username = "d";
$personnel->password = "d";
$personnel->first_name = "d";
$personnel->last_name = "d";
$personnel->usertype = 4;
$personnel->dept_id = 4;
$personnel->personnel_id = 4;
$personnel->create();


//$dept = Department::find_by_id(0);
//$dept->delete();

$dept = new Department();

$dept->dept_name = "HUMAN RESOURCE AND DEVELOPMENT UNIT";
$dept->dept_abbreviation = "SGOD_HRD";
$dept->dept_head = 134;

$dept->create();
*/

$newdoc = new Document;
$newdoc->doc_name="LITTLehfhgU";
$newdoc->doc_trackingnum=1823329;
$newdoc->doc_code="hgfhfghfgh";
$newdoc->doc_status=3;
$newdoc->date_started='2018-01-01';
$newdoc->date_completed='2018-02-02';
$newdoc->personnel_id=3;
$newdoc->doc_owner="JUDE lAW";
$newdoc->doc_type=3;

$newdoc->create();

?>