SELECT
  movie_director.director_id,
  count(movie_director.movie_id) AS no_of_movies,
  avg(collection_in_cr - budget_in_cr) AS avg_profit
FROM
  movie
  INNER JOIN movie_director ON movie.id = movie_director.movie_id
GROUP BY
  movie_director.director_id
HAVING
  count(movie.id) >= 2
  AND avg_profit > 50
ORDER BY
  no_of_movies DESC,
  movie_director.director_id ASC;