SELECT
  utilisateurs.nom_complet,
  SUM(paiements.montant) AS total_depense
FROM
  utilisateurs
  JOIN locations ON utilisateurs.id = locations.utilisateur_id
  JOIN paiements ON locations.id = paiements.location_id
GROUP BY
  utilisateurs.nom_complet
HAVING
  total_depense > 10;