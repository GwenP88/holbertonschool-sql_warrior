SELECT
  code_type,
  COUNT(*) AS nb_utilisations
FROM
  table_location
WHERE
  code_type = 12;