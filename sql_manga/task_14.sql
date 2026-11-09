SELECT
  genres_manga.signification,
  ROUND(
    SUM(mangas.prix_base * types_location.coefficient),
    2
  ) AS chiffre_affaires
FROM
  mangas
  JOIN genres_manga ON mangas.code_genre = genres_manga.code_genre
  JOIN table_location ON mangas.num_manga = table_location.num_manga
  JOIN types_location ON table_location.code_type = types_location.code_type
GROUP BY
  genres_manga.signification
ORDER BY
  chiffre_affaires DESC;