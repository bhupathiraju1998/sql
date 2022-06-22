SELECT
  director_id,
  count(movie_director.movie_id) AS no_of_movies
FROM
  movie
  INNER JOIN movie_director ON movie.id = movie_director.movie_id
WHERE
  rating > 6
GROUP BY
  movie_director.director_id
HAVING
  count(movie_id) >= 2
ORDER BY
  no_of_movies DESC,
  director_id ASC;