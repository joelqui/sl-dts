<?php
require_once("../includes/initialize.php");

$u=User::find_by_id($session->user_id);
$a1 = array();
$a1 = $u->get_onqueue();

foreach($a1 as $docs){
    $html .= '<option value="'.$docs['doc_id'].'" title="Document Name: '.$docs['doc_name'].'&#013;Document Owner: '.$docs['doc_owner'].'&#013;Date Received: '.$docs['date_started'].'&#013;Queue Time: '.$docs['queue'].'day/s';
    $html .= '">'.$docs['doc_code'].'</option>';;
}

echo $html;

?>