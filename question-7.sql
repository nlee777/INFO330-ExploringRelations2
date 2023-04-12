-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).

-- You approved this



SELECT tracks.TrackId, tracks.name, tracks.composer 
FROM tracks  
WHERE tracks.TrackId NOT IN (SELECT tracks.TrackId 
FROM tracks 
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId);