SELECT
  locations.id,
  utilisateurs.nom_complet,
  velos.code,
  locations.date_debut,
  locations.date_fin,
  paiements.montant
FROM
  locations
  JOIN utilisateurs ON locations.utilisateur_id = utilisateurs.id
  JOIN velos ON locations.velo_id = velos.id
  JOIN paiements ON locations.id = paiements.location_id
WHERE
  locations.id = 1;