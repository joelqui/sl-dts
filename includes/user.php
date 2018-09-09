<?php
require_once('database.php');

class User extends DatabaseObject {

    protected static $primary_key = "user_id";
    protected static $table_name="users";
    protected static $db_fields = array('user_id','username','password',
    'first_name','last_name','usertype','dept_id','personnel_id');
    public $user_id;
    public $username;
    public $password;
    public $first_name;
    public $last_name;
    public $dept_id;
    public $usertype;
    public $personnel_id;
  
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

    

    

    public function save() {
        return isset($this->user_id) ? $this->update() : $this->create();
    }

    

    

    

 

}

?>