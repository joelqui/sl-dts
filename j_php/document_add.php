<?php
require_once("../includes/initialize.php");

$newdoc = new Document;
$newdoc->doc_name=strtoupper($_GET['docname']);

$newdoc->doc_owner=strtoupper($_GET['docowner']);
$newdoc->doc_type=$_GET['doctype'];
$newdoc->personnel_id=$session->user_id;
if($newdoc->add_document()) {
    //sample notification for received
    
    $s = new SMSNotification();
    //$s->doc_mobilenum = 639173193264;
    $s->doc_trackingnum = $newdoc->doc_trackingnum;
    $s->notify_received();
    
    
    

    echo $newdoc->doc_trackingnum;
}
    

?>