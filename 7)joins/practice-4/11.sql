SELECT
  DISTINCT (director.name) AS director_name
FROM
  director
  INNER JOIN movie_director ON director.id = movie_director.director_id
  INNER JOIN movie ON movie.id = movie_director.movie_id
WHERE
  movie.name LIKE "%Harry Potter%"
ORDER BY
  director_name ASC;