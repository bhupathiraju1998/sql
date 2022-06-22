SELECT
  actor.name AS actor_name,
  count(movie_cast.movie_id) AS no_of_movies
FROM
  actor
  INNER JOIN movie_cast ON actor.id = movie_cast.actor_id
GROUP BY
  actor.id
HAVING
  no_of_movies >= 5
ORDER BY
  actor.name ASC