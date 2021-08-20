<?php

$select_db = "USE project_d";
include_once("connect.php");


if (mysqli_query($link, $select_db)) {
    echo "Database selected successfully.";
} else {
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

$sql = "CREATE TABLE users(
    id INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    education VARCHAR(30) NOT NULL,
    role VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    email VARCHAR(70) NOT NULL UNIQUE,
    password VARCHAR(250) NOT NULL,
    file VARCHAR(250) NOT NULL,
    information VARCHAR(250) NOT NULL)";

if (mysqli_query($link, $sql)) {
    echo "Table created successfully.";
} else {
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

// Close connection
mysqli_close($link);
?>