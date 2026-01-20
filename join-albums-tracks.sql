SELECT
  a.Title        AS AlbumName,
  t.Name         AS TrackName,
  t.Milliseconds AS Milliseconds
FROM albums AS a
JOIN tracks AS t ON t.AlbumId = a.AlbumId
ORDER BY t.Milliseconds ASC
LIMIT 50;
