<?php
require_once('database.php');

class Document extends DatabaseObject {

    protected static $primary_key = "doc_id";
    protected static $table_name="documents";
    protected static $db_fields = array('doc_id','doc_name','doc_trackingnum','doc_code',
    'doc_status','date_started','date_completed','personnel_id','doc_owner','doc_type');
    public $doc_id;
    public $doc_name;
    public $doc_trackingnum;
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


    

}

?>