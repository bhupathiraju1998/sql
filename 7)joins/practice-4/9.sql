SELECT
  movie_director.director_id,
  count(movie_director.movie_id) AS no_of_movies,
  avg(rating) AS avg_rating
FROM
  movie
  INNER JOIN movie_director ON movie.id = movie_director.movie_id
GROUP BY
  movie_director.director_id
HAVING
  count(movie.id) >= 2
  AND avg_rating > 8
ORDER BY
  no_of_movies DESC,
  movie_director.director_id ASC;