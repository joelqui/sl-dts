<?php

require_once("../includes/initialize.php");


$session->login(4);
echo $_SESSION['dept_id'].'<br>';
$doc = Document::find_by_id(3);
echo $doc->doc_name.'<br>';
//echo $doc->doc_name;
$doc->cancel_forward();

?>