<?php
require_once('database.php');
// This is a helper class to help in preparing sms messages.

class SMSNotification {
    public $doc_trackingnum;
    public $doc_mobilenum=639989720348;
    public $curent_dept;
    private $counter=0;

    public function __construct(){
        $d = Department::find_by_id($_SESSION['dept_id']);
        $this->current_dept = $d->dept_abbreviation;  
    }

    private function send($message) {
        $this->counter++;
        $filename=date("Ymdhis",time());
        $file = 'c://xampp/htdocs/sl-dts/sms_outgoing/'.$this->doc_trackingnum.'-'.$filename.'-'.$this->counter.'.sms';
        $content = "To: ".$this->doc_mobilenum."\n\n".$message." \n";
        $size = file_put_contents($file, $content);
        //save log
        logs::sms($this->doc_mobilenum);
        return isset($size) ? $size : false;
    }

    public function notify_cancelled() {
        $msg ='sl-dts update on doc#';
        $msg .= $this->doc_trackingnum;
        $msg .= ': Canceled @ ';
        $msg .= $this->current_dept;
        $msg .= ', Please call the Division Office @ (053)570-8933 or email @ southernleyte.division@deped.gov.ph.';
    
        if($this->send($msg)){
            return true;
        }
    }

    public function notify_completed() {
        $msg ='sl-dts update on doc#';
        $msg .= $this->doc_trackingnum;
        $msg .= ': Completed @ ';
        $msg .= $this->current_dept;
        $msg .= '.';
    
        if($this->send($msg)){
            return true;
        }
    }

    public function notify_received() {
        $msg ='sl-dts update on doc#';
        $msg .= $this->doc_trackingnum;
        $msg .= ': Received @ ';
        $msg .= $this->current_dept;
        $msg .= '. You may follow up using this document tracking number.';
    
        if($this->send($msg)){
            $this->send_basic();
            return true;
        }
    }

    public function notify_remarks($remarks) {
        //global $database;
        $msg ='sl-dts update on doc#';
        $msg .= $this->doc_trackingnum;
        $msg .= ': Remarks added @ ';
        $msg .= $this->current_dept;
        $msg .= ', ';
        
        $small = strtoupper(substr($remarks, 0, 95));
        $msg .= $small;
        if($this->send($msg)){
            return true;
        }
    }

    private function send_basic() {
        $msg = '***This is a system-generated SMS. Please do not reply to this message. You may contact the office at 570-8933/ southernleyte.division@deped.gov.ph.***';
        return $this->send($msg);
    }



    

}


?>