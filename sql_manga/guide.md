Commande pour éxécuter la requète :

sql < task-1.sql

mysql -u root -p -t tp_manga < mon_fichier.sql
mysql -u root -p -t tp_manga < task_1.sql

| Mot-clé | Rôle |
|---|---|
| `SELECT`   | Les colonnes que tu veux afficher dans le résultat |
| `FROM`     | La table de départ                                 |
| `JOIN`     | La deuxième table que tu veux relier               |
| `ON`       | La condition qui permet de relier les deux tables  |
| `WHERE`    | Filtrer les lignes (si nécessaire)                 |
| `ORDER BY` | Trier les résultats                                |