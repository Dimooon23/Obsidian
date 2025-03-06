# DEVOIR

```SQL title:"SQL Creation table sondage"
CREATE TABLE Localite (
    npa VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(255),
    canton VARCHAR(255),
    
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6)
);

CREATE TABLE Centre (
    nom VARCHAR(255) PRIMARY KEY
);

CREATE TABLE Manifestation (
    nom VARCHAR(255),
    dateEvenement DATE,
    PRIMARY KEY (nom, dateEvenement)
);

CREATE TABLE Reponse_au_sondage (
    uuid CHAR(36) PRIMARY KEY,
    date_de_la_reponse DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Formation_disponible (
    id SERIAL PRIMARY KEY
);

CREATE TABLE Formation_choisie (
    annee_debut_formation YEAR,
    PRIMARY KEY (annee_debut_formation)
);

CREATE TABLE Metier (
    nom VARCHAR(255) PRIMARY KEY,
    detail TEXT
);

-- Relations
CREATE TABLE Localite_Centre (
    npa VARCHAR(10),
    centre_nom VARCHAR(255),
    FOREIGN KEY (npa) REFERENCES Localite(npa),
    FOREIGN KEY (centre_nom) REFERENCES Centre(nom),
    PRIMARY KEY (npa, centre_nom)
);

CREATE TABLE Manifestation_Reponse (
    manifestation_nom VARCHAR(255),
    manifestation_date DATE,
    reponse_uuid CHAR(36),
    FOREIGN KEY (manifestation_nom, manifestation_date) REFERENCES Manifestation(nom, dateEvenement),
    FOREIGN KEY (reponse_uuid) REFERENCES Reponse_au_sondage(uuid),
    PRIMARY KEY (manifestation_nom, manifestation_date, reponse_uuid)
);

CREATE TABLE Formation_choisie_Reponse (
    annee_debut_formation YEAR,
    reponse_uuid CHAR(36),
    FOREIGN KEY (annee_debut_formation) REFERENCES Formation_choisie(annee_debut_formation),
    FOREIGN KEY (reponse_uuid) REFERENCES Reponse_au_sondage(uuid),
    PRIMARY KEY (annee_debut_formation, reponse_uuid)
);

CREATE TABLE Enseigner (
    formation_id INT,
    metier_nom VARCHAR(255),
    FOREIGN KEY (formation_id) REFERENCES Formation_disponible(id),
    FOREIGN KEY (metier_nom) REFERENCES Metier(nom),
    PRIMARY KEY (formation_id, metier_nom)
);

-- Insertion des données d'exemple
INSERT INTO Localite (npa, nom, canton, latitude, longitude) VALUES
('1000', 'Lausanne', 'Vaud', 46.5191, 6.5668),
('1200', 'Genève', 'Genève', 46.2044, 6.1432),
('2000', 'Neuchâtel', 'Neuchâtel', 46.9899, 6.9293);

INSERT INTO Centre (nom) VALUES
('Centre A'),
('Centre B'),
('Centre C');

INSERT INTO Manifestation (nom, dateEvenement) VALUES
('Conférence Tech', '2024-01-15'),
('Salon Formation', '2024-02-10'),
('Job Fair', '2024-03-20');

INSERT INTO Reponse_au_sondage (uuid) VALUES
(UUID()), 
(UUID()), 
(UUID());

INSERT INTO Formation_disponible (id) VALUES
(1), 
(2), 
(3);

INSERT INTO Formation_choisie (annee_debut_formation) VALUES
(2023), 
(2024), 
(2025);

INSERT INTO Metier (nom, detail) VALUES
('Informatique', 'Programmation, Systèmes, Réseaux'),
('Commerce', 'Marketing, Vente, Gestion'),
('Médecine', 'Soins, Diagnostiques, Pharmacie');

-- Relier les entités (Exemples pour les relations)
INSERT INTO Localite_Centre (npa, centre_nom) VALUES
('1000', 'Centre A'),
('1200', 'Centre B'),
('2000', 'Centre C');

INSERT INTO Manifestation_Reponse (manifestation_nom, manifestation_date, reponse_uuid) VALUES
('Conférence Tech', '2024-01-15', (SELECT uuid FROM Reponse_au_sondage LIMIT 1 OFFSET 0)),
('Salon Formation', '2024-02-10', (SELECT uuid FROM Reponse_au_sondage LIMIT 1 OFFSET 1)),
('Job Fair', '2024-03-20', (SELECT uuid FROM Reponse_au_sondage LIMIT 1 OFFSET 2));

INSERT INTO Formation_choisie_Reponse (annee_debut_formation, reponse_uuid) VALUES
(2023, (SELECT uuid FROM Reponse_au_sondage LIMIT 1 OFFSET 0)),
(2024, (SELECT uuid FROM Reponse_au_sondage LIMIT 1 OFFSET 1)),
(2025, (SELECT uuid FROM Reponse_au_sondage LIMIT 1 OFFSET 2));

INSERT INTO Enseigner (formation_id, metier_nom) VALUES
(1, 'Informatique'),
(2, 'Commerce'),
(3, 'Médecine');

```

# Création des tables Sondage

```SQL
DROP TABLE IF EXISTS manifestations;
DROP TABLE IF EXISTS reponses;
DROP TABLE IF EXISTS formations_choisies;
DROP TABLE IF EXISTS localites;
DROP TABLE IF EXISTS centres;
DROP TABLE IF EXISTS metiers;
DROP TABLE IF EXISTS formations_disponibles;


CREATE TABLE manifestations(
	uuid INT,
	nom VARCHAR(255),
	date_evenement DATE
	localite_uuid INT
);

CREATE TABLE reponses(
	uuid INT,
	date_reponse DATE,
	manifestations_uuid INT,
	habitations_localites_uuid INT
);

CREATE TABLE formations_choisies(
	reponses_uuid INT,
	formations_disponibles_uuid INT,
	anne_debut_formation DATE
);

CREATE TABLE formations_disponibles(
	uuid INT,
	centres_uuid INT,
	metiers_uuid INT
);

CREATE TABLE centres(
	uuid INT,
	nom VARCHAR(255),
	localite_uuid INT
);

CREATE TABLE metiers(
	uuid INT,
	nom VARCHAR(255),
	detail VARCHAR(255)
);

CREATE TABLE localites(
	uuid INT,
	npa VARCHAR(255),
	nom VARCHAR(255),
	canton VARCHAR(255),
	latitude DOUBLE,
	longitude DOUBLE
);

ALTER TABLE manifestations
ADD CONSTRAINT 
```

# Ecran Intention de formation

```SQL
SELECT LOCALET.NPA, LOCALET.NOM, CENTRES.NOM, LOCALHAB.NOM
FROM LOCALITE LOCALET

```