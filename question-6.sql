-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT tracks.TrackId, tracks.name, tracks.composer 
FROM tracks 
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId;