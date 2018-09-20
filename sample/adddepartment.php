<?php
require_once("../includes/initialize.php");

//$dept = Department::find_by_id(0);
//$dept->delete();

$dept = new Department();

$dept->dept_name = "INFORMATION AND COMMUNICATIONS TECHNOLOGY SERVICES UNIT";
$dept->dept_abbreviation = "SDO_ICT";
$dept->dept_head = 69;

$dept->create();

?>