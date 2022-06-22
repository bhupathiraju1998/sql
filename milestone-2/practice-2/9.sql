SELECT
  name,
  no_of_views
FROM
  video
WHERE
  (
    SELECT
      avg(no_of_views)
    FROM
      video
  ) < no_of_views
ORDER BY
  name ASC;