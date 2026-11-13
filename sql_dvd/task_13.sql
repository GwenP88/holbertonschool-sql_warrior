SELECT
    DISTINCT clients.nom,
    clients.prenom
FROM
    clients
    JOIN factures ON clients.id = factures.client_id
WHERE
    YEAR(factures.date_facture) = '2006'
    AND MONTH(factures.date_facture) = '06'
ORDER BY
    clients.nom ASC;
