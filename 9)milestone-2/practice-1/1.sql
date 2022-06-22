SELECT
  name,
  no_of_views
FROM
  VIDEO
ORDER BY
  no_of_views DESC,
  name ASC
LIMIT
  10;