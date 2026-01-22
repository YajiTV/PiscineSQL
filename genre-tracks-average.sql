SELECT genres.Name AS Name, AVG(tracks.Milliseconds) AS AverageDuration
FROM tracks
JOIN genres ON tracks.GenreId = genres.GenreId
GROUP BY genres.Name
ORDER BY AverageDuration DESC;