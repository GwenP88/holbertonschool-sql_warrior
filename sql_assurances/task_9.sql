DELIMITER / / CREATE FUNCTION date_fin_contrat (p_id_contrat INT) RETURNS DATE DETERMINISTIC BEGIN DECLARE date_fin DATE;

SELECT
    DATE_ADD(date_effet, INTERVAL duree MONTH) INTO date_fin
FROM
    contrats
WHERE
    p_id_contrat = contrats.id;

RETURN date_fin;

END / / DELIMITER;
