SELECT
  clients.ville,
  ROUND(
    SUM(mangas.prix_base * types_location.coefficient),
    2
  ) AS chiffre_affaires
FROM
  mangas
  JOIN table_location On mangas.num_manga = table_location.num_manga
  JOIN types_location ON table_location.code_type = types_location.code_type
  JOIN factures ON table_location.num_facture = factures.num_facture
  JOIN clients ON factures.code_client = clients.code_client
GROUP BY
  clients.ville
ORDER BY
  chiffre_affaires DESC;