DELIMITER // 
CREATE FUNCTION vehicule_est_assure (p_id_vehicule INT) RETURNS INT NOT DETERMINISTIC
READS SQL DATA
BEGIN
DECLARE assurance_valide BOOL;

SELECT
  COUNT(contrats.id) INTO assurance_valide
FROM
  contrats
WHERE
  CURDATE() < DATE_ADD(date_effet, INTERVAL duree MONTH)
  AND date_effet <= CURDATE()
  AND p_id_vehicule = contrats.vehicule;

RETURN assurance_valide >= 1;

END // 
DELIMITER ;