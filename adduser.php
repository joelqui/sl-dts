<?php
require_once("includes/initialize.php");

$s = new SMSNotification();
echo $s->current_dept;
$s->doc_mobilenum = '63'.'9173193264';
echo $s->send('ahhhhhh');


?>