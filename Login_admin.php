<?php

include 'connect_feedback.php';
$adminId = '';
$password = '';
$errors = [];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $adminId = trim($_POST['adminId']);
    $password = trim($_POST['password']);

    // Validation for empty inputs
    if (empty($adminId)) {
        $errors['adminId'] = "Admin ID is required.";
    }
    if (empty($password)) {
        $errors['password'] = "Password is required.";
    }

    if (empty($errors)) {
        $stmt = $conn->prepare("SELECT admin_pass FROM admin WHERE admin_ID = ?");
        $stmt->bind_param("s", $adminId);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            // Fetch the data
            $row = $result->fetch_assoc();
            $storedPassword = $row['admin_pass'];

            // Verify the password
            if ($password === $storedPassword) {
                // Login successful
                $_SESSION['admin_id'] = $adminId;
                header("Location: insert_plant.php");
                exit;
            } else {
                // Incorrect password
                $errors['password'] = "Incorrect password.";
            }
        } else {
            // Admin ID not found
            $errors['adminId'] = "Unknown Admin ID.";
        }

        $stmt->close();
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
    <title>Login</title>
</head>
<body>
    <h2>Admin Login</h2>
    <div class="form-container">
        <form method="post" action="">
            <label for="adminId">Admin ID:</label>
            <input type="text" id="adminId" name="adminId" value="<?php echo htmlspecialchars($adminId); ?>" placeholder="Enter admin ID">
            <div class="error"><?php echo $errors['adminId'] ?? ''; ?></div>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter password">
            <div class="error"><?php echo $errors['password'] ?? ''; ?></div>

            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
