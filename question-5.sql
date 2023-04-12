-- What was the most purchased track of 2013?
-- come back to this one
-- use sum



SELECT tracks.Name, sum(invoice_items.Quantity) 
FROM invoice_items 
JOIN tracks 
ON invoice_items.TrackId=tracks.TrackId 
JOIN invoices 
ON invoice_items.InvoiceId=invoices.InvoiceId 
WHERE substr(invoices.InvoiceDate, 1, 4) = '2013'
GROUP BY tracks.TrackId 
ORDER BY sum(invoice_items.Quantity) desc;