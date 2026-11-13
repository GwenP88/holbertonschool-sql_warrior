DELIMITER / / CREATE TRIGGER trg_verifier_places BEFORE
INSERT
    ON deplacements FOR EACH ROW BEGIN DECLARE capacite INT;

DECLARE nb_occupants INT;

SELECT
    types_vehicules.nbplaces INTO capacite
FROM
    vehicules
    JOIN types_vehicules ON vehicules.type_voiture = types_vehicules.id
WHERE
    NEW.vehicule = vehicules.id;

SELECT
    COUNT(*) INTO nb_occupants
FROM
    deplacements
WHERE
    deplacements.vehicule = NEW.vehicule
    AND NEW.debut_dep < deplacements.fin_dep
    AND NEW.fin_dep > deplacements.debut_dep;

IF nb_occupants >= capacite THEN SIGNAL SQLSTATE '45000'
SET
    MESSAGE_TEXT = 'Capacite du vehicule depassee';

END IF;

END / / DELIMITER;
