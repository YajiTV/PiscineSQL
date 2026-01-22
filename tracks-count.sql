SELECT genres.Name AS Name, COUNT(tracks.TrackId) AS NumberOfTracks
FROM tracks
JOIN genres ON tracks.GenreId = genres.GenreId
GROUP BY genres.Name;