SELECT
    dvd.titre,
    clients.nom,
    clients.prenom,
    clients.date_naissance
FROM
    clients
    JOIN factures ON clients.id = factures.client_id
    JOIN locations ON factures.id = locations.facture_id
    JOIN dvd ON locations.dvd_id = dvd.id
    JOIN genres_film ON dvd.genre_id = genres_film.id
WHERE
    genres_film.code_genre = 'AV'
    AND clients.date_naissance BETWEEN '1960-01-01'
    AND '1969-12-31'
ORDER BY
    dvd.titre ASC;
