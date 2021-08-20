<?php
include_once("connect.php");
$sql = "CREATE DATABASE project_d CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci";
if (mysqli_query($link, $sql)) {
    echo "Database created successfully";
} else {
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

?>