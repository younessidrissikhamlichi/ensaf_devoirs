-- Exemples d'insertion dans la table des classes
INSERT INTO classes (id_classe, code, nom) VALUES
(1, 'C1', 'Classe A'),
(2, 'C2', 'Classe B'),
(3, 'C3', 'Classe C');

-- Exemples d'insertion dans la table des élèves
INSERT INTO eleves (id_eleve, nom, prenom, id_classe) VALUES
(1, 'Alami', 'Driss', 1),
(2, 'Bennani', 'Sara', 1),
(3, 'Amrani', 'kamal', 2);

-- Exemples d'insertion dans la table des matières
INSERT INTO matieres (id_matiere, code, nom) VALUES
(1, 'PJ', 'Programmation Java'),
(2, 'PW', 'Programmation Web'),
(3, 'AS', 'Administration Systems');

-- Exemples d'insertion dans la table des devoirs
INSERT INTO devoirs (id_devoir, numero_devoir, date, id_matiere) VALUES
(1, 1, '2024-01-15', 1),
(2, 1, '2024-01-20', 2),
(3, 2, '2024-01-18', 1);

-- Exemples d'insertion dans la table des notes
INSERT INTO notes (id_note, valeur, id_devoir, id_eleve) VALUES
(1, 15.5, 1, 1),
(2, 12.0, 1, 2),
(3, 18.0, 1, 3),
(4, 14.5, 2, 1),
(5, 11.0, 2, 2),
(6, 16.0, 2, 3);
