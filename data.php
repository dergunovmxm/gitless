<?php

require 'connect.php';

header('Content-Type: application/json');
if (isset($_POST['id'])) {

    $users = $mysqli->query("SELECT * FROM users");


    while ($res = mysqli_fetch_array($users, MYSQLI_ASSOC)) {
        $result[] = $res;
    }
    echo json_encode($result);
}
