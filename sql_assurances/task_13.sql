SELECT
    employes.id,
    employes.nom,
    employes.prenom
FROM
    employes
    LEFT JOIN deplacements ON employes.id = deplacements.employe
WHERE
    deplacements.debut_dep IS NULL;
