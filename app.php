<?php

require 'connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // $servername = "127.0.0.1";
    // $username = "root";
    // $password = "111";
    // $dbname = "project_d";



    // $mysqli = mysqli_connect($servername, $username, $password, $dbname);
    // if (!$mysqli) {
    //     die("Ошибка: Не можем подключиться. " . mysqli_connect_error());
    // }


    $name = trim($_REQUEST['name']);
    $num = trim($_REQUEST['num']);
    $email = trim($_REQUEST['email']);
    $message = trim($_REQUEST['message']);

    $mysqli->query("INSERT INTO app (name, number, mail, message) VALUES ('$name', '$num', '$email', '$message')");


    require 'applications.html';
}
