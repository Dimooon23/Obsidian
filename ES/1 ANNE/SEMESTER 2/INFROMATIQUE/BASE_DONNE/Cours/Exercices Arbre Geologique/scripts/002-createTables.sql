/*
    Généalogie - Script de création du schéma
    
    dominique huguenin (dominique.huguenin AT rpn.ch)

    La base de données recetteDB doit contenir l'extension "uuid-ossp" 
    pour la génération des uuid avec la fonction uuid_generate_v4().

    CREATE EXTENSION "uuid-ossp";

    select uuid_generate_v4();
*/
-- Création de tables
CREATE TABLE IF NOT EXISTS personnes (
    uuid UUID NOT NULL, -- aid
    prenom TEXT NOT NULL,
    date_naissance DATE,
    parents_couples_uuid UUID,

    CONSTRAINT pk_personnes
        PRIMARY KEY (uuid)
)
;

CREATE TABLE IF NOT EXISTS couples (
    uuid UUID NOT NULL, -- aid
    partenaire1_personnes_uuid UUID,
    partenaire2_personnes_uuid UUID,
    debut_du_couple DATE,
    fin_du_couple DATE,

    CONSTRAINT pk_couples
        PRIMARY KEY (uuid)
)
;

ALTER TABLE IF EXISTS personnes
    DROP CONSTRAINT IF EXISTS fk1_personnes_couples,
    ADD CONSTRAINT fk1_personnes_couples
            FOREIGN KEY (parents_couples_uuid)
            REFERENCES couples (uuid)
;

ALTER TABLE IF EXISTS couples
    DROP CONSTRAINT IF EXISTS u1_couples,
    ADD CONSTRAINT u1_couples
            UNIQUE (partenaire1_personnes_uuid,partenaire2_personnes_uuid,debut_du_couple),
    DROP CONSTRAINT IF EXISTS fk1_couples_personnes_partenaire1,
    ADD CONSTRAINT fk1_couples_personnes_partenaire1
            FOREIGN KEY (partenaire1_personnes_uuid)
            REFERENCES personnes (uuid),
    DROP CONSTRAINT IF EXISTS fk1_couples_personnes_partenaire2,
    ADD CONSTRAINT fk1_couples_personnes_partenaire2
            FOREIGN KEY (partenaire2_personnes_uuid)
            REFERENCES personnes (uuid),
    DROP CONSTRAINT IF EXISTS ck1_couples_personnes,
    ADD CONSTRAINT ck1_couples_personnes
            CHECK (partenaire1_personnes_uuid <> partenaire2_personnes_uuid)
;
