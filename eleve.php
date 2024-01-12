<?php
include('db.php');

// Récupère l'ID de l'élève à partir de la requête GET
$id_eleve = $_GET['id'];

// Sélectionne les détails de l'élève
$query_eleve = "SELECT * FROM eleves WHERE id_eleve = $id_eleve";
$result_eleve = $conn->query($query_eleve);

// Sélectionne les notes de l'élève
$query_notes = "SELECT matieres.nom as matiere, devoirs.numero_devoir, notes.valeur
                FROM notes
                INNER JOIN devoirs ON notes.id_devoir = devoirs.id_devoir
                INNER JOIN matieres ON devoirs.id_matiere = matieres.id_matiere
                WHERE notes.id_eleve = $id_eleve";
$result_notes = $conn->query($query_notes);

// Vérifie si l'élève existe
if ($result_eleve->num_rows > 0) {
    $row_eleve = $result_eleve->fetch_assoc();
?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Détails de l'élève</title>
    </head>

    <body>
        <h2>Détails de l'élève</h2>
        <p><strong>Nom:</strong> <?php echo $row_eleve['nom']; ?></p>
        <p><strong>Prénom:</strong> <?php echo $row_eleve['prenom']; ?></p>
        <p><strong>Classe:</strong> <?php echo $row_eleve['id_classe']; ?></p>

        <h3>Notes de l'élève</h3>
        <table border="1">
            <tr>
                <th>Matière</th>
                <th>Devoir</th>
                <th>Note</th>
            </tr>
            <?php
            // Affiche les notes de l'élève
            while ($row_notes = $result_notes->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row_notes['matiere'] . "</td>";
                echo "<td>" . $row_notes['numero_devoir'] . "</td>";
                echo "<td>" . $row_notes['valeur'] . "</td>";
                echo "</tr>";
            }
            ?>
        </table>

    </body>

    </html>

<?php
} else {
    echo "L'élève n'existe pas.";
}
?>
