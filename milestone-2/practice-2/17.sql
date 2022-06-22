SELECT
  genre.genre_id AS genre_id,
  genre.genre_type AS genre_type,
  count(user_likes.reaction_type) AS no_of_likes
FROM
  genre
  INNER JOIN video_genre ON genre.genre_id = video_genre.genre_id
  INNER JOIN user_likes ON video_genre.video_id = user_likes.video_id
WHERE
  user_likes.reaction_type LIKE "LIKE"
GROUP BY
  genre.genre_id
ORDER BY
  no_of_likes DESC,
  genre_type ASC
LIMIT
  5;