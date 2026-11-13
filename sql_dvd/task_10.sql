SELECT
    genres_film.libelle_genre,
    ROUND(AVG(dvd.duree_minutes), 1) AS duree_moyenne
FROM
    dvd
    JOIN genres_film ON dvd.genre_id = genres_film.id
GROUP BY
    genres_film.libelle_genre
ORDER BY
    duree_moyenne DESC,
    genres_film.libelle_genre ASC;
