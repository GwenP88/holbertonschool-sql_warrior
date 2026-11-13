SELECT
    assureurs.nom,
    COUNT(contrats.assureur) AS nombre_de_contrats
FROM
    assureurs
    JOIN contrats ON assureurs.id = contrats.assureur
GROUP BY
    assureurs.nom
ORDER BY
    nombre_de_contrats DESC
LIMIT
    1;
