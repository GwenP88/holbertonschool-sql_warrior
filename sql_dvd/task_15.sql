SELECT
    clients.nom,
    clients.prenom,
    dvd.titre,
    factures.date_facture
FROM
    clients
    JOIN factures ON clients.id = factures.client_id
    JOIN locations ON factures.id = locations.facture_id
    JOIN dvd ON locations.dvd_id = dvd.id
    JOIN realisateurs ON dvd.realisateur_id = realisateurs.id
WHERE
    realisateurs.pays = 'ALLEMAGNE'
    AND YEAR(factures.date_facture) = '2006'
    AND MONTH(factures.date_facture) = '06'
ORDER BY
    clients.nom ASC,
    dvd.titre ASC;
