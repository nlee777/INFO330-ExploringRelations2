-- Find tracks (id, name and composer) that are part of a line in an invoice.
-- is group by used correctly here?
-- should i order this in a particular way?
SELECT tracks.TrackId, tracks.name, tracks.composer 
FROM tracks 
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId 
GROUP BY tracks.TrackId;