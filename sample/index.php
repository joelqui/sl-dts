<?php
require_once("../includes/initialize.php");

$x=10;

if($x< 10)
    echo "Strike 1";
else if ($x <15)
    echo "Strike 2";
else if ($x <20)
    echo "Strike 3";
//echo $p1.' '.$p2.' '.$p3.' '.$p4.' '.$p5;

//echo $htmlContent;
/*
$page = 4;

$per_page = 3;

$total_count = DocumentHistory::count_all();




$pagination = new Pagination($page, $per_page, $total_count);

$sql = "SELECT * FROM documents_history ";
$sql .= "LIMIT {$per_page} ";
$sql .= "OFFSET {$pagination->offset()}";

$dhists = DocumentHistory::find_by_sql($sql);

var_dump($dhists);
*/
?>