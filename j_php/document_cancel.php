<?php
require_once("../includes/initialize.php");

$doc = Document::find_by_id($_GET['doc_id']);
$flag = $doc->mark_cancelled();

//since there are 3 conditions to satisfy for a document to be cancelled.
if($flag == 3){
    //sample notification for cancelled
    $s = new SMSNotification();
    $s->doc_mobilenum = $doc->doc_mobilenum;
    $s->doc_trackingnum = $doc->doc_trackingnum;
    $s->notify_cancelled();
    echo $flag;
}

?>