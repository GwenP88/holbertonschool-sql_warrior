SELECT
    clients.code_client,
    clients.nom,
    clients.prenom,
    COUNT(locations.id) AS nb_dvd_loues
FROM
    clients
    JOIN factures ON clients.id = factures.client_id
    JOIN locations On factures.id = locations.facture_id
GROUP BY
    clients.code_client
ORDER BY
    nb_dvd_loues DESC,
    clients.nom ASC,
    clients.prenom ASC;
