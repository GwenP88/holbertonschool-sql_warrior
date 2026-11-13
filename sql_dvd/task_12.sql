SELECT
    dvd.titre,
    realisateurs.nom,
    realisateurs.prenom,
    realisateurs.pays,
    genres_film.libelle_genre
FROM
    dvd
    JOIN genres_film ON dvd.genre_id = genres_film.id
    JOIN realisateurs ON dvd.realisateur_id = realisateurs.id
ORDER BY
    dvd.titre ASC;
