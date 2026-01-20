SELECT
  a.Title        AS AlbumName,
  t.Name         AS TrackName,
  t.Milliseconds AS Milliseconds
FROM Album AS a
JOIN Track AS t ON t.AlbumId = a.AlbumId
ORDER BY t.Milliseconds ASC
LIMIT 50;
