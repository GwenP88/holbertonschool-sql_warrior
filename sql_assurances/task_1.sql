SELECT
    types_vehicules.libelle,
    types_vehicules.nbplaces,
    vehicules.modele,
    vehicules.couleur,
    vehicules.immat
FROM
    types_vehicules
    JOIN vehicules ON types_vehicules.id = vehicules.type_voiture;
