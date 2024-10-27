<?php

include 'connect_feedback.php';

// Define variables and initialize with empty values
$local_name = $scientific_name = $family = $other_common_name = $botanical_description = $ecology = $distribution = $conservation_status = $uses = "";
$success_message = $error_message = "";

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data and sanitize it
    $local_name = $conn->real_escape_string($_POST['local_name']);
    $scientific_name = $conn->real_escape_string($_POST['scientific_name']);
    $family = $conn->real_escape_string($_POST['family']);
    $other_common_name = $conn->real_escape_string($_POST['other_common_name']);
    $botanical_description = $conn->real_escape_string($_POST['botanical_description']);
    $ecology = $conn->real_escape_string($_POST['ecology']);
    $distribution = $conn->real_escape_string($_POST['distribution']);
    $conservation_status = $conn->real_escape_string($_POST['conservation_status']);
    $uses = $conn->real_escape_string($_POST['uses']);

    // Insert the data into the 'plants' table
    $sql = "INSERT INTO plants (local_name, scientific_name, family, other_common_name, botanical_description, ecology, distribution, conservation_status, uses)
            VALUES ('$local_name', '$scientific_name', '$family', '$other_common_name', '$botanical_description', '$ecology', '$distribution', '$conservation_status', '$uses')";

    // Execute the query
    if ($conn->query($sql) === TRUE) {
        $success_message = "New plant information inserted successfully.";
    } else {
        $error_message = "Error: " . $conn->error;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Plant Information Form</title>
</head>
<body>
    <h2>Plant Information Form</h2>
    <div class="form-container">
        <!-- Display success or error message -->
        <?php if (!empty($success_message)) echo "<p class='success'>$success_message</p>"; ?>
        <?php if (!empty($error_message)) echo "<p class='error'>$error_message</p>"; ?>

        <form method="post" action="">
            <label for="local_name">Local Name:</label>
            <input type="text" id="local_name" name="local_name" placeholder="Enter local name" required>

            <label for="scientific_name">Scientific Name:</label>
            <input type="text" id="scientific_name" name="scientific_name" placeholder="Enter scientific name" required>

            <label for="family">Family:</label>
            <input type="text" id="family" name="family" placeholder="Enter family">

            <label for="other_common_name">Other Common Name:</label>
            <input type="text" id="other_common_name" name="other_common_name" placeholder="Enter other common name">

            <label for="botanical_description">Botanical Description:</label>
            <textarea id="botanical_description" name="botanical_description" placeholder="Enter botanical description"></textarea>

            <label for="ecology">Ecology:</label>
            <textarea id="ecology" name="ecology" placeholder="Enter ecology information"></textarea>

            <label for="distribution">Distribution:</label>
            <textarea id="distribution" name="distribution" placeholder="Enter distribution"></textarea>

            <label for="conservation_status">Conservation Status:</label>
            <input type="text" id="conservation_status" name="conservation_status" placeholder="Enter conservation status">

            <label for="uses">Uses:</label>
            <textarea id="uses" name="uses" placeholder="Enter uses"></textarea>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
