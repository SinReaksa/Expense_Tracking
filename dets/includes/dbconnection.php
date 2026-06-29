<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$maxAttempts = 10;
$attempt = 0;
$con = false;

while ($attempt < $maxAttempts) {
    $con = @mysqli_connect("db", "detsuser", "detspassword", "detsdb");
    if ($con) {
        break;
    }
    $attempt++;
    sleep(2);
}

if (!$con) {
    $error = mysqli_connect_error();
    die("Connection Failed after $maxAttempts attempts: " . $error);
}
?>