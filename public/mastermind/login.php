<?php
require_once("../../includes/functions.php");
require_once("../../includes/session.php");
require_once("../../includes/database.php");
require_once("../../includes/user.php");

if($session->is_logged_in()) {
    redirect_to(index.php);
}

echo 'YOU\'RE NOT LOGGED IN'.'<br />';
$username = 'queennie';
$password = 'parola';

$found_user = User::authenticate($username, $password);
if ($found_user) {
    echo 'User FOUND';
} else {
    echo 'Incorrect credentials';
}

?>