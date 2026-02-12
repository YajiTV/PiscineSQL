SELECT artists.Name, 
       COUNT(albums.AlbumId) AS NbAlbums,
       CASE 
           WHEN COUNT(albums.AlbumId) = 1 THEN 'Unproductive'
           WHEN COUNT(albums.AlbumId) > 1 AND COUNT(albums.AlbumId) < 10 THEN 'Productive'
           WHEN COUNT(albums.AlbumId) >= 10 THEN 'Very Productive'
       END AS IsProductive
FROM artists
LEFT JOIN albums ON artists.ArtistId = albums.ArtistId
GROUP BY artists.ArtistId, artists.Name
HAVING COUNT(albums.AlbumId) > 0
LIMIT 100;
