-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT invoice_items.*, 
tracks.Name, artists.Name 
FROM invoice_items
INNER JOIN tracks ON invoice_items.TrackId = tracks.TrackId
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON albums.ArtistId = artists.ArtistId;