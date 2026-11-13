SELECT
    dvd.titre,
    CONCAT(
        clients.civilite,
        ' ',
        clients.nom,
        ' ',
        clients.prenom
    ) AS client,
    CONCAT(realisateurs.nom, ' ', realisateurs.prenom) AS realisateur
FROM
    dvd
    JOIN realisateurs ON dvd.realisateur_id = realisateurs.id
    JOIN locations ON dvd.id = locations.dvd_id
    JOIN factures ON locations.facture_id = factures.id
    JOIN clients ON factures.client_id = clients.id
ORDER BY
    dvd.titre ASC;
