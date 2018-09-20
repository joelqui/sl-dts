<?php
require_once('database.php');

class User extends DatabaseObject {

    protected static $primary_key = "user_id";
    protected static $table_name="users";
    protected static $db_fields = array('user_id','username','password',
    'first_name','last_name','user_abbreviation','usertype','dept_id','personnel_id');
    public $user_id;
    public $username;
    public $password;
    public $first_name;
    public $last_name;
    public $dept_id;
    public $usertype;
    public $personnel_id;

    public $user_abbreviation;
  
    public function full_name() {
        if(isset($this->first_name) && isset($this->last_name)) {
            return $this->first_name . " " . $this->last_name;
        } else {
            return "";
        }
    }

    public static function authenticate ($username="", $password="") {
        global $database;
        $username = $database->escape_value($username);
        $password = $database->escape_value($password);

        $sql = "SELECT * FROM users ";
        $sql .= "WHERE username = '{$username}' ";
        $sql .= "AND password = '{$password}' ";
        $sql .= "LIMIT 1"; 

        $result_array = self::find_by_sql($sql);
        return !empty($result_array) ? array_shift($result_array) : false;
    }

    public function get_incoming() {
        global $database;
        $sql = "SELECT documents.doc_id, CONCAT(documents.doc_trackingnum,'-',documents.doc_type,'-',documents.doc_code) AS doc_code ";
        $sql .= "FROM documents ";
        $sql .= "INNER JOIN documents_history ON documents.doc_id = documents_history.doc_id ";
        $sql .= "WHERE documents_history.is_last=true ";
      // $sql .= "AND documents_history.dept_id=".$_SESSION['dept_id'];
        $sql .= "AND documents_history.dept_id=8";
        $sql .= " AND documents_history.dochist_type=2";

      //  echo $sql;
        $result_set = $database->query($sql);
        $object_array = array();
        while ($row = $database->fetch_array($result_set)){
            $object_array[] = $row;
        }
        return $object_array;
    }

    public function get_onqueue() {
        global $database;
        $sql = "SELECT documents.doc_id, CONCAT(documents.doc_trackingnum,'-',documents.doc_type,'-',documents.doc_code) AS doc_code ";
        $sql .= "FROM documents ";
        $sql .= "INNER JOIN documents_history ON documents.doc_id = documents_history.doc_id ";
        $sql .= "WHERE documents_history.is_last=true ";
      // $sql .= "AND documents_history.user_id=".$this->user_id';
        $sql .= "AND documents_history.user_id=1";
        $sql .= " AND (documents_history.dochist_type=1 OR documents_history.dochist_type=4)";

       // echo $sql;
        $result_set = $database->query($sql);
        $object_array = array();
        while ($row = $database->fetch_array($result_set)){
            $object_array[] = $row;
        }
        return $object_array;
    }

    public function get_forwarded() {
        global $database;
        $sql = "SELECT documents.doc_id, CONCAT(documents.doc_trackingnum,'-',documents.doc_type,'-',documents.doc_code) AS doc_code ";
        $sql .= "FROM documents ";
        $sql .= "INNER JOIN documents_history ON documents.doc_id = documents_history.doc_id ";
        $sql .= "WHERE documents_history.is_last=true ";
        $sql .= "AND documents_history.user_id=".$this->user_id;
        //$sql .= "AND documents_history.user_id=4";
        $sql .= " AND documents_history.dochist_type=2";

       echo $sql;
        $result_set = $database->query($sql);
        $object_array = array();
        while ($row = $database->fetch_array($result_set)){
            $object_array[] = $row;
        }
        return $object_array;
    }

    public function add() {
        $this->user_abbreviation = Document::generate_acronym($this->first_name).' '.strtoupper($this->last_name);
        $this->first_name = strtoupper($this->first_name);
        $this->last_name = strtoupper($this->last_name);
        echo $this->user_abbreviation;
        $this->create();

    }

    

    

    

 

}

?>