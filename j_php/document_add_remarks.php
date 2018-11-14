<?php

require_once("../includes/initialize.php");

$doc = Document::find_by_id($_POST['doc_id']);
$remarks = $_POST['remarks'];
$flag = $doc->add_remarks($remarks);
$shortened_remarks=$remarks;
if($flag == 1){
    //sample notification for remarks
    $s = new SMSNotification();
   // $s->doc_mobilenum = 639175610034;
    $s->doc_trackingnum = $doc->doc_trackingnum;
    $s->notify_remarks($shortened_remarks);

    echo $flag;
}

?>