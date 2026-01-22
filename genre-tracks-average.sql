SELECT Name, AVG(Milliseconds) AS AverageDuration
FROM tracks
JOIN genres ON tracks.GenreId = genres.GenreId;
GROUP BY genres.Name
ORDER BY AverageDuration DESC;