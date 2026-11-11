SELECT
  utilisateurs.nom_complet
FROM
  utilisateurs
  LEFT JOIN locations ON utilisateurs.id = locations.utilisateur_id
WHERE
  locations.id IS NULL;