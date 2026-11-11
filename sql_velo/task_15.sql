SELECT
  MONTH(date_debut) AS mois,
  COUNT(*) AS nombre_locations
FROM
  locations
GROUP BY
  mois;