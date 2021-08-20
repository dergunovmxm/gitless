<?php

require 'connect.php';

header('Content-Type: application/json');
if (isset($_POST['id'])) {

    // $servername = "127.0.0.1";
    // $username = "root";
    // $password = "111";
    // $dbname = "project_d";


    // $connect = mysqli_connect($servername, $username, $password, $dbname);
    // mysqli_set_charset($connect, 'utf-8');

   $app =  $mysqli->query("SELECT * FROM app");

    while ($result_app = mysqli_fetch_array($app, MYSQLI_ASSOC)) {
        $app_array[] = $result_app;
    }
    echo json_encode($app_array);
}
