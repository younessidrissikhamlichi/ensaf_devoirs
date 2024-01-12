-- CREATE DATABASE ensaf_devoirs
-- use ensaf_devoirs

-- Table des classes
CREATE TABLE classes (
    id_classe INT PRIMARY KEY,
    code VARCHAR(10),
    nom VARCHAR(50)
);

-- Table des élèves
CREATE TABLE eleves (
    id_eleve INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES classes(id_classe)
);

-- Table des matières
CREATE TABLE matieres (
    id_matiere INT PRIMARY KEY,
    code VARCHAR(10),
    nom VARCHAR(50)
);

-- Table des devoirs
CREATE TABLE devoirs (
    id_devoir INT PRIMARY KEY,
    numero_devoir INT,
    date DATE,
    id_matiere INT,
    FOREIGN KEY (id_matiere) REFERENCES matieres(id_matiere)
);

-- Table des notes
CREATE TABLE notes (
    id_note INT PRIMARY KEY,
    valeur FLOAT,
    id_devoir INT,
    id_eleve INT,
    FOREIGN KEY (id_devoir) REFERENCES devoirs(id_devoir),
    FOREIGN KEY (id_eleve) REFERENCES eleves(id_eleve)
);
