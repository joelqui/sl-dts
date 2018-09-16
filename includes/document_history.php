<?php

require_once('database.php');

class DocumentHistory extends DatabaseObject {

    protected static $primary_key = "dochist_id";
    protected static $table_name="documents_history";
    protected static $db_fields = array('dochist_id','dochist_type','user_id',
    'dept_id','dochist_remarks','is_last');
    public $dochist_id;
    public $dochist_type;
    public $user_id;
    public $dept_id;
    public $dochist_remarks;
    public $is_last=true;

}

?>