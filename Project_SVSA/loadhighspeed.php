<?php

$servername = "localhost";
$username = "root";
$password = "Srilanka123!@#";
$dbname = "svsa";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM vehicle";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    echo "<table class='table table-striped'>";
    echo "<tr><th>#Count</th><th>#Registration Number</th><th>#Speed</th><th>#Driver Name</th><th>#NIC</th><th>#Contact</th><th>Date</th><th></th></tr>";
    while ($row = $result->fetch_assoc()) {
        $number = $row['speed'];
        $speed = number_format($number, 2, '.', '');
        echo "<tr><td>" . $row['idvehicle'] . "</td><td>" . $row['registrationNumber'] . "</td><td>" . $speed . " kmph</td><td>D.I Kumara</td><td>960560432v</td><td>077808575</td><td>" . $row['date'] . "</td><td><a href=''>Send a Fine</a></td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>