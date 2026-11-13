SELECT
    vehicules.modele,
    types_vehicules.nbplaces,
    ROUND(
        (
            COUNT(deplacements.employe) * 100 / types_vehicules.nbplaces
        ),
        2
    ) AS taux_remplissage
FROM
    vehicules
    LEFT JOIN types_vehicules ON vehicules.type_voiture = types_vehicules.id
    LEFT JOIN deplacements ON vehicules.id = deplacements.vehicule
GROUP BY
    vehicules.modele,
    types_vehicules.nbplaces,
    vehicules.id
ORDER BY
    taux_remplissage DESC,
    vehicules.id ASC;
