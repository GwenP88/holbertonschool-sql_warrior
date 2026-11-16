SELECT
  echantillon.code_echantillon,
  type_echantillon.libelle_type
FROM
  echantillon
  JOIN type_echantillon ON echantillon.id_type_echantillon = type_echantillon.id_type_echantillon
ORDER BY
  code_echantillon ASC;