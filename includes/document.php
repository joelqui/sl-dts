<?php
require_once('database.php');

class Document extends DatabaseObject {

    protected static $primary_key = "doc_id";
    protected static $table_name="documents";
    protected static $db_fields = array('doc_id','doc_name','doc_trackingnum','doc_code',
    'doc_status','date_started','date_completed','personnel_id','doc_owner','doc_type');
    public $doc_id;
    public $doc_name;
    public $doc_trackingnum=0;
    public $doc_code;
    public $doc_status;
    public $date_started;
    public $date_completed;
    public $personnel_id;
    public $doc_owner;
    public $doc_type;

    public $doc_ownertype;
    public $schoolname;
    public $districtname;

    
    public static function daily_count() {
        global $database;
        $sql = "SELECT COUNT(*) AS total_found FROM ";
        $sql .= static::$table_name." WHERE date_started = '".date('Y-m-d')."'";
        echo $sql;
        $result_set = $database->query($sql);

        return $result_set->fetch_assoc()['total_found'];
    }

    public function generate_trackingnum() {
        $num = self::daily_count() + 1;
        $str_length = 3;

        //hardcoded left padding if number < $str_length
        $str = substr("000{$num}", -$str_length);
        $this->doc_trackingnum = date('ymd').$str;
        echo '<br>'.$this->doc_trackingnum.'<br>';
    }

    public function generate_code() {
        $this->doc_code = static::generate_acronym($this->doc_owner).'-'.static::generate_acronym($this->doc_name);
    }

    public static function generate_acronym($string) {
        $words = explode(" ",$string);
        $acronym = "";

        foreach ($words as $w) {
        $acronym .= $w[0];
        }
        return strtoupper($acronym);
    }

    public function add_document(){
        $this->doc_status = 1;
        $this->generate_trackingnum();
        $this->generate_code();
        $this->date_started=date('Y-m-d');
        $this->create();

        $new_doc_hist = new DocumentHistory;
        $new_doc_hist->doc_id = $this->doc_id;
        $new_doc_hist->user_id = $_SESSION['user_id'];
        $new_doc_hist->dept_id = $_SESSION['dept_id'];
        $new_doc_hist->dochist_type = 1;    
        $new_doc_hist->create();
    }

    private function change_is_last(){
        //updates the last document history entry of the docuemnt
        $last_doc_hist = DocumentHistory::find_by_id(DocumentHistory::find_last($this->doc_id));
        //var_dump($last_doc_hist);
        $last_doc_hist->is_last = false;
        $last_doc_hist->update();
    }

    public function receive() {
        $this->change_is_last();
        $this->doc_status = 2;
        $this->update();

        $new_doc_hist = new DocumentHistory;
        $new_doc_hist->doc_id = $this->doc_id;
        $new_doc_hist->user_id = $_SESSION['user_id'];
        $new_doc_hist->dept_id = $_SESSION['dept_id'];
        $new_doc_hist->dochist_type = 1;    
        $new_doc_hist->create();
    }

    public function forward($dept) {
        $this->change_is_last();
        $this->doc_status = 2;
        $this->update();

        $new_doc_hist = new DocumentHistory;
        $new_doc_hist->doc_id = $this->doc_id;
        $new_doc_hist->user_id = $_SESSION['user_id'];
        $new_doc_hist->dept_id = $dept;
        $new_doc_hist->dochist_type = 2;
        $new_doc_hist->create();
    }

    public function add_remarks($remarks) {
        $new_doc_hist = new DocumentHistory;
        $new_doc_hist->doc_id = $this->doc_id;
        $new_doc_hist->user_id = $_SESSION['user_id'];
        $new_doc_hist->dept_id = $_SESSION['dept_id'];
        $new_doc_hist->dochist_remarks=strtoupper($remarks);
        $new_doc_hist->dochist_type = 3;
        $new_doc_hist->is_last = false;
        $new_doc_hist->create();
    }

    public function cancel_forward() {
        $this->change_is_last();
        $this->doc_status = 2;
        $this->update();

        $new_doc_hist = new DocumentHistory;
        $new_doc_hist->doc_id = $this->doc_id;
        $new_doc_hist->user_id = $_SESSION['user_id'];
        $new_doc_hist->dept_id = $_SESSION['dept_id'];
        $new_doc_hist->dochist_type = 4;
        $new_doc_hist->create();
    }

    public function mark_completed() {
        $this->change_is_last();
        $this->doc_status = 4;
        $this->update();

        $new_doc_hist = new DocumentHistory;
        $new_doc_hist->doc_id = $this->doc_id;
        $new_doc_hist->user_id = $_SESSION['user_id'];
        $new_doc_hist->dept_id = $_SESSION['dept_id'];
        $new_doc_hist->dochist_type = 5;
        $new_doc_hist->is_last = false;
        $new_doc_hist->create();
    }
    
    public function mark_cancelled() {
        $this->change_is_last();
        $this->doc_status = 3;
        $this->update();

        $new_doc_hist = new DocumentHistory;
        $new_doc_hist->doc_id = $this->doc_id;
        $new_doc_hist->user_id = $_SESSION['user_id'];
        $new_doc_hist->dept_id = $_SESSION['dept_id'];
        $new_doc_hist->dochist_type = 6;
        $new_doc_hist->is_last = false;
        $new_doc_hist->create();
    }

    public function get_dochist() {
        global $database;

        $sql = "SELECT documents_history.timestamp, CONCAT(documents_history.dochist_type,' ',departments.dept_abbreviation,";
        $sql .= "' BY ',users.user_abbreviation) AS dochist_specs, documents_history.dochist_remarks";
        $sql .= " FROM documents_history";
        $sql .= " INNER JOIN departments ON documents_history.dept_id = departments.dept_id";
        $sql .= " INNER JOIN users ON documents_history.user_id = users.user_id";
        $sql .= " WHERE documents_history.doc_id = ".$this->doc_id;
        $sql .= " ORDER BY documents_history.timestamp ASC";

        echo $sql;
        $result_set = $database->query($sql);
        $object_array = array();
        while ($row = $database->fetch_array($result_set)){
            $object_array[] = $row;
        }
        return $object_array;
    }

    

}

?>