SELECT
  name,
  no_of_views
FROM
  video
WHERE
  name LIKE "%review%"
ORDER BY
  no_of_views DESC;