SELECT table_location.num_facture, SUM(mangas.prix_base * types_location.coefficient) AS depenses FROM table_location JOIN mangas ON table_location.num_manga = mangas.num_manga JOIN types_location ON table_location.code_type = types_location.code_type
GROUP by num_facture
ORDER BY num_facture;

