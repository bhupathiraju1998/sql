SELECT
  video_genre.genre_id AS genre_id,
  count() AS no_of_videos
FROM
  video
  INNER JOIN video_genre ON video.video_id = video_genre.video_id
WHERE
  (
    cast(
      strftime("%Y", video.published_datetime) AS integer
    ) BETWEEN 2010
    AND 2020
  )
  AND video_genre.genre_id IN (201, 202, 204, 205, 206, 207)
GROUP BY
  video_genre.genre_id
ORDER BY
  genre_id ASC,
  no_of_videos DESC;