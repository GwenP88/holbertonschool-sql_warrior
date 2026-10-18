SELECT genres_manga.signification AS genre, COUNT(num_manga) AS nombre_de_manga_par_genre
FROM mangas JOIN genres_manga ON mangas.code_genre = genres_manga.code_genre
GROUP BY genre
ORDER BY nombre_de_manga_par_genre DESC;