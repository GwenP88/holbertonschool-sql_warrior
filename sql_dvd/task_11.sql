SELECT
    dvd.titre,
    genres_film.libelle_genre
FROM
    dvd
    JOIN genres_film ON dvd.genre_id = genres_film.id
ORDER BY
    dvd.titre ASC;
