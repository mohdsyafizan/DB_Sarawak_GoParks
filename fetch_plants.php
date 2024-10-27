<?php
include 'connect_feedback.php';

$sql = "SELECT * FROM plants";
$result = $conn->query($sql);

$data = array();
if ($result->num_rows > 0) {
    // Fetch each row and add to the data array
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

// Return the data in JSON format
echo json_encode($data);

// Close connection
$conn->close();
?>