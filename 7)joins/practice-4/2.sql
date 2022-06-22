SELECT
  count(movie_id) AS no_of_movies
FROM
  actor
  JOIN movie_cast ON actor.id = movie_cast.actor_id
WHERE
  actor.name = "Daniel Radcliffe";