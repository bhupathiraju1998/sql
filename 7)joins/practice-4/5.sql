SELECT
  director.name AS director_name,
  count(movie_director.movie_id) AS no_of_movies
FROM
  director
  LEFT JOIN movie_director ON director.id = movie_director.director_id
GROUP BY
  director.id
ORDER BY
  no_of_movies DESC,
  director_name ASC;