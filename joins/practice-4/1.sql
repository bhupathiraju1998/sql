SELECT
  movie.name AS movie_name,
  actor_id
FROM
  movie
  INNER JOIN movie_cast ON movie.id = movie_cast.movie_id
ORDER BY
  movie.name ASC,
  movie_cast.actor_id ASC;