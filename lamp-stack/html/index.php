<?php
$servername = "db";
$username = "root";
$password = "root";
$database = "testdb";

// Créer une connexion
$conn = new mysqli($servername, $username, $password, $database);

// Vérifier la connexion
if ($conn->connect_error) {
    die("Connexion échouée: " . $conn->connect_error);
}
echo "Connexion réussie à la base de données MySQL!";
?>
