SELECT
  movie_director.director_id,
  count(movie_director.movie_id) AS no_of_movies_with_atleast_profit_50_cr
FROM
  movie
  INNER JOIN movie_director ON movie.id = movie_director.movie_id
WHERE
  (collection_in_cr - budget_in_cr) >= 50
GROUP BY
  movie_director.director_id
HAVING
  count(movie.id) >= 2
ORDER BY
  no_of_movies_with_atleast_profit_50_cr DESC,
  movie_director.director_id ASC;