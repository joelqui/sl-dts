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
        $sql .= static::$table_name." WHERE date_started = CURDATE() ";
        $result_set = $database->query($sql);

        return $result_set->fetch_assoc()['total_found'];
    }

    public function generate_trackingnum() {
        $num = self::daily_count() + 1;
        $str_length = 3;

        //hardcoded left padding if number < $str_length
        $str = substr("000{$num}", -$str_length);
        $this->doc_trackingnum = date('ymd').$str;
    }

    public function generate_code() {
        $this->doc_code = static::generate_acronym($this->doc_owner).'-'.static::generate_acronym($this->doc_name);
    }

    private static function generate_acronym($string) {
        $words = explode(" ",$string);
        $acronym = "";

        foreach ($words as $w) {
        $acronym .= $w[0];
        }
        return strtoupper($acronym);
    }



    


    

}

?>