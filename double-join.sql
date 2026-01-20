SELECT DISTINCT
  t.Name AS TrackName,
  p.Name AS PlaylistName
FROM playlist_track AS pt
JOIN playlists AS p
  ON p.PlaylistId = pt.PlaylistId
JOIN tracks AS t
  ON t.TrackId = pt.TrackId
WHERE p.Name = 'TV Shows'
ORDER BY t.Name ASC, p.Name ASC
LIMIT 100;
