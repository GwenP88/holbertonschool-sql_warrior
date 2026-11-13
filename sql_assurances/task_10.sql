DELIMITER / / CREATE FUNCTION vehicule_est_assure (p_id_vehicule INT) RETURNS INT DETERMINISTIC BEGIN DECLARE date_fin DATE;

SELECT
    DATE_ADD(date_effet, INTERVAL duree MONTH) INTO date_fin
FROM
    contrats
WHERE
    p_id_contrat = contrats.id;

RETURN date_fin;

END / / DELIMITER;
