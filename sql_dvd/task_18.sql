SELECT
    realisateurs.pays,
    genres_film.libelle_genre,
    COUNT(dvd.id) AS nb_dvd
FROM
    dvd
    JOIN realisateurs ON dvd.realisateur_id = realisateurs.id
    JOIN genres_film ON dvd.genre_id = genres_film.id
GROUP BY
    realisateurs.pays,
    genres_film.libelle_genre
ORDER BY
    realisateurs.pays ASC,
    genres_film.libelle_genre ASC;
