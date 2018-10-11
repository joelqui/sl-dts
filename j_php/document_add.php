<?php
require_once("../includes/initialize.php");

$newdoc = new Document;
$newdoc->doc_name=strtoupper($_GET['docname']);

$newdoc->doc_owner=strtoupper($_GET['docowner']);
$newdoc->doc_type=$_GET['doctype'];
$newdoc->add_document();

echo $newdoc->doc_trackingnum;

?>