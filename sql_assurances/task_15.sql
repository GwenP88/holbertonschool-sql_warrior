SELECT
    vehicules.id,
    vehicules.modele,
    COUNT(DISTINCT(deplacements.debut_dep)) AS nombre_total_de_trajets
FROM
    vehicules
    RIGHT JOIN deplacements ON vehicules.id = deplacements.vehicule
GROUP BY
    deplacements.vehicule
ORDER BY
    nombre_total_de_trajets DESC,
    vehicules.id ASC;
