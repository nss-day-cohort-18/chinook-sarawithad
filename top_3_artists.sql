--Provide a query that shows the top 3 best selling artists

SELECT COUNT(InvoiceLine.TrackId) as SalesNumbers, Artist.Name as ArtistName
FROM Artist
JOIN Album on Artist.ArtistId = Album.ArtistId
JOIN Track on Album.AlbumId= Track.AlbumId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
GROUP BY ArtistName
ORDER BY SalesNumbers desc
LIMIT 3;