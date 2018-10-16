<?php

require_once("../includes/initialize.php");

$doc = Document::find_by_id($_POST['doc_id']);
$remarks = $_POST['remarks'];
echo $doc->add_remarks($remarks);

?>