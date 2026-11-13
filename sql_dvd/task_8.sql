SELECT
    genres_film.libelle_genre,
    COUNT(dvd.id) AS nb_dvd
FROM
    dvd
    RIGHT JOIN genres_film ON dvd.genre_id = genres_film.id
GROUP BY
    genres_film.libelle_genre
ORDER BY
    nb_dvd DESC,
    genres_film.libelle_genre ASC;
