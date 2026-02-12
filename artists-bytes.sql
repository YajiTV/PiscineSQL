SELECT artists.Name AS ArtistName, albums.Title AS AlbumName, tracks.Name AS TrackName, ROUND(tracks.Bytes / 1000000, 2) AS MegaBytes
FROM tracks
WHERE albums.Name = 'American Idiot'
JOIN albums ON tracks.AlbumId = albums.AlbumId
JOIN artists ON albums.ArtistId = artists.ArtistId