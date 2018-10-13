<?php
require_once("../includes/initialize.php");

$u=User::find_by_id($session->user_id);
$a1 = array();
$a1 = $u->get_onqueue();

foreach($a1 as $docs){
    $html .= '<option value="'.$docs['doc_id'];
    $html .= '">'.$docs['doc_code'].'</option>';;
}

echo $html;

?>