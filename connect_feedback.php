<?php
// Enable error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Establish database connection
$conn = mysqli_connect("localhost", "root", "", "sarawakgoparks_db");

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    echo "Connected to the database successfully.";
}
?>
