<?php
include('db.php');

$query = "SELECT * FROM eleves";
$result = $conn->query($query);

// Afficher la liste des élèves avec des liens vers leurs pages individuelles
while ($row = $result->fetch_assoc()) {
    echo "<a href='eleve.php?id=" . $row['id_eleve'] . "'>" . $row['nom'] . " " . $row['prenom'] . "</a><br>";
}
?>
