<?php
require_once("../includes/initialize.php");

$doc = Document::find_by_id($_GET['doc_id']);

$flag = $doc->mark_completed();

if($flag == 3) {
    //sample notification for completed
    $s = new SMSNotification();
    //$s->doc_mobilenum = 639175610034;
    $s->doc_trackingnum = $doc->doc_trackingnum;
    $s->notify_completed();
    
    echo $flag;
}

?>