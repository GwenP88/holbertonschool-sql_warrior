SELECT
  utilisateurs.nom_complet,
  COUNT(*) AS nombre_locations
FROM
  locations
  JOIN utilisateurs ON locations.utilisateur_id = utilisateurs.id
GROUP BY
  locations.utilisateur_id;