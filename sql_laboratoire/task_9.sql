SELECT
  analyse.id_analyse,
  echantillon.code_echantillon,
  methode_analyse.nom_methode,
  analyse.statut
FROM
  analyse
  JOIN echantillon ON analyse.id_echantillon = echantillon.id_echantillon
  JOIN methode_analyse ON analyse.id_methode = methode_analyse.id_methode
ORDER BY
  analyse.id_analyse ASC;