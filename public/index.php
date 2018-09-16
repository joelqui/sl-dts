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

$string = "school form 7 report";

 // allow only letters
 $res = preg_replace("/[^a-zA-Z]/", "", $string);

 $vowels = array("a", "e", "i", "o", "u", "A", "E", "I", "O", "U", " ");
$res = str_replace($vowels, "", $res);
 // trim what's left to 8 chars
 $res = substr($res, 0, 8);

 // make lowercase
 $res = strtoupper($res);
echo $res;
*/
/*
$newdoc = new Document;
$newdoc->doc_name="Accomplishment report";
$newdoc->doc_code="hgfhfghfgh";

$newdoc->personnel_id=3;
$newdoc->doc_owner="JOEL KEE QUILANTANG";
$newdoc->doc_type=3;
$newdoc->generate_trackingnum();
$newdoc->generate_code();
$newdoc->doc_status=1;
$newdoc->date_started=date('Y-m-d');

echo $newdoc->doc_trackingnum;
$newdoc->create();

$num = Document::daily_count()+1;
$str_length = 3;

// hardcoded left padding if number < $str_length
$str = substr("000{$num}", -$str_length);

$f = Document::find_by_id(92);
echo "<br>".$f->doc_trackingnum.'-'.$f->doc_type.'-'.$f->doc_code;
*/


$dhist = new DocumentHistory;

$dhist->dochist_type=2;
$dhist->user_id=3;
$dhist->dept_id=4;
$dhist->dochist_remarks='FUCKING SHIT';

$dhist->create();



?>