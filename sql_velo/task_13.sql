SELECT
  velos.code,
  COUNT(locations.velo_id) AS total_locations
FROM
  velos
  LEFT JOIN locations ON velos.id = locations.velo_id
GROUP BY
  velos.code
ORDER BY
  total_locations DESC;