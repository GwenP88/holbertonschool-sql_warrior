SELECT
  velos.code,
  COUNT(*) AS nombre_locations
FROM
  locations
  JOIN velos ON locations.velo_id = velos.id
GROUP BY
  velos.code;