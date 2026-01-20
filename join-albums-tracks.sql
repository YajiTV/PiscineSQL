SELECT TOP (50)
    a.Title AS AlbumName,
    t.Name  AS TrackName,
    t.Milliseconds
FROM Album AS a
JOIN Track AS t
    ON t.AlbumId = a.AlbumId
ORDER BY t.Milliseconds ASC;
