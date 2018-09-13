<?php
require_once('database.php');

class Document extends DatabaseObject {

    protected static $primary_key = "doc_id";
    protected static $table_name="documents";
    protected static $db_fields = array('doc_id','doc_name','doc_type','doc_code',
    'doc_status','doc_started','doc_completed','personnel_id');
    public $doc_id;
    public $doc_name;
    public $doc_type;
    public $doc_code;
    public $doc_status;
    public $doc_started;
    public $doc_completed;
    public $personnel_id;


    

}

?>