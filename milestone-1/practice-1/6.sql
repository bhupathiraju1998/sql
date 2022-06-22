SELECT
  DISTINCT(video_id)
FROM
  VIDEO_GENRE
WHERE
  genre_id IN (201, 202, 203, 211)
ORDER BY
  video_id DESC;