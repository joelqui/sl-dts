<?php
require_once("../includes/initialize.php");

echo $_SESSION['username'];

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