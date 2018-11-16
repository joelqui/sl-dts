<?php
// This is used to save logs of documents' movement and user activity.

class logs {
    public $username;
    public $doc_trackingnum;
    public $curent_dept;


    public function __construct(){
        date_default_timezone_set("Asia/Manila");
        $this->username = $_SESSION['username'];  
    }

    private function save($log) {
        
        $filename = 'sl.dts.movement.logs.'.date("Y-m",time()).'.log';
        $file = 'c://xampp/htdocs/sl-dts/logs/'.$filename;
        $handle = fopen($file, "a");
        fwrite($handle,$log);
        fclose($handle);
    }

  //  $content=date("Y-m-d H:i:s", time()).": ".$_SESSION['username']." logged in.\r";
    public function login() {

        $log = date("Y-m-d H:i:s", time()).": ".$this->username." logged in.\r";
        $this->save($log);
    }

    public function logout() {
        
        $log = date("Y-m-d H:i:s", time()).": ".$this->username." logged out.\r";
        $this->save($log);
    }

    public function add_document() {
        
        $log = date("Y-m-d H:i:s", time()).": ".$this->username." added document#".$this->doc_trackingnum.".\r";
        $this->save($log);
    }

    public function accept_document() {
        
        $log = date("Y-m-d H:i:s", time()).": ".$this->username." received document#".$this->doc_trackingnum.".\r";
        $this->save($log);
    }

    public function add_remarks() {
        
        $log = date("Y-m-d H:i:s", time()).": ".$this->username." added remarks to document#".$this->doc_trackingnum.".\r";
        $this->save($log);
    }

    public function forward_document() {
        
        $log = date("Y-m-d H:i:s", time()).": ".$this->username." forwarded document#".$this->doc_trackingnum.".\r";
        $this->save($log);
    }

    public function cforward_document() {
        
        $log = date("Y-m-d H:i:s", time()).": ".$this->username." cancelled the forwarding of document#".$this->doc_trackingnum.".\r";
        $this->save($log);
    }

    public function mark_completed() {
        
        $log = date("Y-m-d H:i:s", time()).": ".$this->username." marked document#".$this->doc_trackingnum." completed.\r";
        $this->save($log);
    }

    public function mark_cancelled() {
        
        $log = date("Y-m-d H:i:s", time()).": ".$this->username." marked document#".$this->doc_trackingnum." cancelled.\r";
        $this->save($log);
    }

}

?>