<?php

// file_put_contents: shortcut for fopen/fwrite/fclose
// overwrites existing file by default (so be CAREFUL)
$file = 'sms_outgoing/filetest.sms';
$number = "639173193264";
$msg = "you cannot sing the same old romance when there is no more pain.";
$content = "To: ".$number."\n\n".$msg." \n";
//echo $content;
if($size = file_put_contents($file, $content)) {
  echo "A file of {$size} bytes was created.";
}

?>