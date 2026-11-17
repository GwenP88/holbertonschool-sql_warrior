SELECT
  echantillon.code_echantillon,
  analyse.id_analyse,
  resultat_analyse.valeur_mesuree,
  resultat_analyse.conforme
FROM
  echantillon
  LEFT JOIN analyse ON echantillon.id_echantillon = analyse.id_echantillon
  LEFT JOIN resultat_analyse ON analyse.id_analyse = resultat_analyse.id_analyse
ORDER BY
  echantillon.code_echantillon;