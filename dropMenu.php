<!DOCTYPE html>
<html>
<head>
    <title>Basic CRUD</title>
</head>
<body>

<?php
require 'config.php'; // include file connect to db
include 'menu.php'; //include menu list from menu.php, you may edit accordingly

// Retrieve pelanggan names from database
$sql = "SELECT idPelanggan, namaSendiri FROM pelanggan";
$result = $conn->query($sql);

// Form submission handling
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $idPelanggan = $_POST['namaSendiri'];
    $kereta = $_POST['kereta'];
    $plat = $_POST['noPlat'];

    // Insert into kereta table
    $insertSql = "INSERT INTO kereta (idPelanggan, kereta, plat) VALUES ('$idPelanggan', '$kereta', '$plat')";
    if ($conn->query($insertSql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $insertSql . "<br>" . $conn->error;
    }
}

?>

<form action="" method="post">
    <label for="namaSendiri">Nama Sendiri:</label>
    <select name="namaSendiri" id="namaSendiri">
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<option value='" . $row['idPelanggan'] . "'>" . $row['namaSendiri'] . "</option>";
            }
        }
        ?>
    </select><br>
    
    <label for="kereta">Kereta:</label>
    <input type="text" name="kereta" id="kereta" required><br>
    
    <label for="noPlat">No Plat:</label>
    <input type="text" name="noPlat" id="noPlat" required><br>
    
    <input type="submit" value="Submit">
</form>
<br>
<?php
// Display table of data
$sql = "SELECT pelanggan.idPelanggan, pelanggan.namaSendiri, kereta.kereta, kereta.plat FROM pelanggan JOIN kereta ON pelanggan.idPelanggan = kereta.idPelanggan";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Kereta</th>
                <th>Plat</th>
            </tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["idPelanggan"] . "</td>
                <td>" . $row["namaSendiri"] . "</td>
                <td>" . $row["kereta"] . "</td>
                <td>" . $row["plat"] . "</td>
             </tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
include 'footer.php';

?>

</body>
</html>
