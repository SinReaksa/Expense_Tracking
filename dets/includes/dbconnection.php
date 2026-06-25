<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$con = mysqli_connect("localhost", "root", "", "detsdb");

if (!$con) {
    die("Connection Failed: " . mysqli_connect_error());
}
?>