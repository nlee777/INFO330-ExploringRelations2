-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
-- is left join used correctly here?
-- does it matter if i order by trackId in the last line?
SELECT tracks.TrackId, tracks.name, tracks.composer 
FROM tracks 
LEFT JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId 
WHERE invoice_items.TrackId IS NULL 
ORDER BY tracks.TrackId;