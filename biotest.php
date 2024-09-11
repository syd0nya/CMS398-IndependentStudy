<?php
$servername = "localhost";
$username = "root";
$password = "Sydave2417!";
$dbname = "biologydata";

// Create connection
$connection = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$connection) {
    die("Couldn't connect: " . mysqli_connect_error());
} else {
    echo 'Connection established';
}

// Function to sanitize user input
function sanitize_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

// Handle form submissions
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['add']) && !empty($_POST['add_query'])) {
        $sql = sanitize_input($_POST['add_query']);
        if (mysqli_query($connection, $sql)) {
            echo "Record added successfully";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($connection);
        }
    } elseif (isset($_POST['update']) && !empty($_POST['update_query'])) {
        $sql = sanitize_input($_POST['update_query']);
        if (mysqli_query($connection, $sql)) {
            echo "Record updated successfully";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($connection);
        }
    } elseif (isset($_POST['select']) && !empty($_POST['select_query'])) {
        $sql = sanitize_input($_POST['select_query']);
        $result = mysqli_query($connection, $sql);
        if ($result) {
            echo "<table border='1'>";
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                foreach ($row as $key => $value) {
                    echo "<td>" . $key . ": " . $value . "</td>";
                }
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($connection);
        }
    } elseif (isset($_POST['remove']) && !empty($_POST['remove_query'])) {
        $sql = sanitize_input($_POST['remove_query']);
        if (mysqli_query($connection, $sql)) {
            echo "Record removed successfully";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($connection);
        }
    } elseif ($_SERVER["REQUEST_METHOD"] == "POST") {
        echo "Please enter a query before submitting.";
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biology Data</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .container { width: 80%; margin: 0 auto; }
        .form-group { margin-bottom: 20px; }
        .form-group label { display: block; margin-bottom: 5px; }
        .form-group textarea { width: 100%; height: 100px; }
        input[type="submit"] { padding: 10px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Biology Data</h1>
        
        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <div class="form-group">
                <label for="add_query">Add to Database:</label>
                <textarea name="add_query" id="add_query" placeholder="Insert into table"></textarea>
            </div>
            <input type="submit" name="add" value="Add">
        </form>

        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <div class="form-group">
                <label for="update_query">Update Database:</label>
                <textarea name="update_query" id="update_query" placeholder="Update table"></textarea>
            </div>
            <input type="submit" name="update" value="Update">
        </form>

        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <div class="form-group">
                <label for="select_query">Select/Print from Database:</label>
                <textarea name="select_query" id="select_query" placeholder="Select"></textarea>
            </div>
            <input type="submit" name="select" value="Select/Print">
        </form>

        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <div class="form-group">
                <label for="remove_query">Remove from Database:</label>
                <textarea name="remove_query" id="remove_query" placeholder="Delete from table"></textarea>
            </div>
            <input type="submit" name="remove" value="Remove">
        </form>
    </div>
</body>
</html>