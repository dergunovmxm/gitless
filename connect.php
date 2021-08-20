<?php


define('DB_HOST', '127.0.0.1');
define('DB_USER', 'root');
define('DB_PASSWORD', '111');
define('DB_NAME', 'project_d');

$mysqli = new mysqli(DB_HOST,DB_USER, DB_PASSWORD, DB_NAME);
if ($mysqli->connect_errno) exit('Ошибка: Не можем подключиться');
$mysqli->set_charset('utf-8');


// $link = mysqli_connect("127.0.0.1", "root", "111", "project_d");


// if ($link === false) {
//     die("Ошибка: Не можем подключиться. " . mysqli_connect_error());
// }
// echo "Connect Successfully. Host info: " . mysqli_get_host_info($link) . "<br>";

// //mysqli_close($link);
?>