SELECT albums.Title AS AlbumTitle, artists.Name AS ArtistName
FROM albums
JOIN artists ON albums.ArtistId = artists.ArtistId
LIMIT 100;