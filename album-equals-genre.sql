SELECT *
FROM albums
WHERE albums.Title IN (
    SELECT Name
    FROM genres
);
