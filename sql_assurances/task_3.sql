SELECT
    vehicules.id,
    vehicules.modele
FROM
    vehicules
    LEFT JOIN contrats ON vehicules.id = contrats.vehicule
WHERE
    contrats.vehicule IS NULL;
