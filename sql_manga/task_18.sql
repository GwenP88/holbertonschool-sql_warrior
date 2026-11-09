INSERT INTO
  mangakas (
    code_mangaka,
    prenom,
    nom,
    annee_naissance,
    pays
  )
VALUES
  (13, 'Makoto', 'Yukimura', 1976, 'Japon');

INSERT INTO
  mangas (
    num_manga,
    titre,
    prix_base,
    code_mangaka,
    code_genre,
    annee,
    descriptif,
    duree
  )
VALUES
  (
    25,
    'Vinland Saga - Tome 1',
    2.9,
    13,
    13,
    2005,
    'Thorfinn grandit dans un contexte de guerres vikings',
    92
  );