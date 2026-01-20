SELECT
  ar.Name,
  al.Title AS AlbumTitle
FROM artists AS ar
LEFT JOIN Album  AS al
  ON al.ArtistId = ar.ArtistId
LIMIT 100;
