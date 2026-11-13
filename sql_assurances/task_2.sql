SELECT
    vehicules.modele,
    assureurs.nom AS assureur
FROM
    vehicules
    JOIN contrats ON vehicules.id = contrats.vehicule
    JOIN assureurs ON contrats.assureur = assureurs.id;
