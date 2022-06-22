SELECT
  DISTINCT (actor.name) AS actor_name
FROM
  actor
  INNER JOIN movie_cast ON actor.id = movie_cast.actor_id
  INNER JOIN movie ON movie.id = movie_cast.movie_id
WHERE
  movie.name LIKE "%Harry Potter%"
ORDER BY
  actor_name ASC;