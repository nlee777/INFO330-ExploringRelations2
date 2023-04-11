-- What was the most purchased track of 2013?
-- come back to this one

SELECT tracks.name, COUNT(*) 
FROM tracks 
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
GROUP BY tracks.TrackId
ORDER BY COUNT(*) DESC;
