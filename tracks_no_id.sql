/* Provide a query that shows all the Tracks, but displays no IDs. 
The result should include the Album name, Media type and Genre. */

SELECT Track.Name as TrackName, Album.Title as AlbumTitle, MediaType.Name as TypeOfMedia, Genre.Name as GenreCategory
FROM Track
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN Genre ON Genre.GenreId = Track.GenreId
GROUP BY TrackName;