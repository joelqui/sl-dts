<?php
header("Content-Type: text/javascript; charset=utf-8");
require_once("../includes/initialize.php");

global $database;

$sql = "SELECT district_id,district_name ";
$sql .= "FROM districts ";
$sql .= "ORDER BY district_name ASC";

//echo $sql;
$htmlContent = "";

$result_set = $database->query($sql);
$object_array = array();
while ($row = $database->fetch_array($result_set)){
    $object_array[] = $row;
}

if(empty($object_array)) {
    echo 'No Shit!';
}
else {
    foreach($object_array as $dist) {
        $htmlContent .= '<option value="'.$dist['district_id'].'">'.$dist['district_name'].'</option>';
    }
 
}

echo $htmlContent;

?>



      
                              


                                
                            


