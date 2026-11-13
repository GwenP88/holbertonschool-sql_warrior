DELIMITER / / CREATE PROCEDURE ajouter_employe(
    nom VARCHAR(50),
    prenom VARCHAR(50),
    num_permis VARCHAR(12)
) BEGIN DECLARE max_id INT;

SELECT
    COALESCE(MAX(id), 0) INTO max_id
FROM
    employes;

INSERT INTO
    employes (id, nom, prenom, num_permis)
VALUES
    (max_id + 1, UPPER(nom), prenom, num_permis);

END / / DELIMITER;
