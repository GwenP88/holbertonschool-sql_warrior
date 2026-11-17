SELECT
  client.nom AS nom_client,
  site.nom_site,
  echantillon.code_echantillon,
  parametre_analyse.nom_parametre,
  resultat_analyse.valeur_mesuree,
  resultat_analyse.conforme
FROM
  client
  JOIN demande_analyse ON client.id_client = demande_analyse.id_client
  JOIN prelevement ON demande_analyse.id_demande = prelevement.id_demande
  JOIN site ON prelevement.id_site = site.id_site
  JOIN echantillon ON prelevement.id_prelevement = echantillon.id_prelevement
  JOIN analyse ON echantillon.id_echantillon = analyse.id_echantillon
  JOIN resultat_analyse ON analyse.id_analyse = resultat_analyse.id_analyse
  JOIN methode_analyse ON analyse.id_methode = methode_analyse.id_methode
  JOIN parametre_analyse ON methode_analyse.id_parametre = parametre_analyse.id_parametre
ORDER BY
  nom_client ASC,
  code_echantillon ASC;