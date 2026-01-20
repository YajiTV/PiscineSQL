SELECT DISTINCT
  t.Name AS TrackName,
  p.Name AS PlaylistName
FROM playlists_tracks AS pt
JOIN playlists AS p
  ON p.PlaylistId = pt.PlaylistId
JOIN tracks AS t
  ON t.TrackId = pt.TrackId
WHERE p.Name = 'TV Shows'
ORDER BY pt.TrackId ASC
LIMIT 100;
