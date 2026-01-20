SELECT
  ar.Name
FROM artists AS ar
JOIN albums  AS al
  ON al.ArtistId = ar.ArtistId
GROUP BY ar.ArtistId, ar.Name
HAVING COUNT(al.AlbumId) >= 4
ORDER BY ar.Name DESC;
