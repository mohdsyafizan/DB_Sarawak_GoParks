<?php
require_once 'connect_feedback.php';

// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Check if fb_rating and fb_comment are set in the POST request
    if (isset($_POST['fb_rating']) && isset($_POST['fb_comment'])) {
        $fb_rating = mysqli_real_escape_string($conn, $_POST['fb_rating']);
        $fb_comment = mysqli_real_escape_string($conn, $_POST['fb_comment']);

        $sql = "INSERT INTO feedback (fb_rating, fb_comment) VALUES ('$fb_rating', '$fb_comment')";

        if (mysqli_query($conn, $sql)) {
            $result["success"] = "1";
            $result["message"] = "Success";
        } else {
            $result["success"] = "0";
            $result["message"] = "Error executing query: " . mysqli_error($conn);
        }
    } else {
        // Handle the case where the required POST parameters are missing
        $result["success"] = "0";
        $result["message"] = "Missing feedback data";
    }

    // Output the result as JSON
    echo json_encode($result);

    // Close the connection
    mysqli_close($conn);
}
?>
