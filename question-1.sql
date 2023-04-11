-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.

-- why don't we have to specify Invoice.Id if it doesn't come from customers?
SELECT 
Firstname, LastName, Country, InvoiceId, InvoiceDate 
FROM customers 
INNER JOIN invoices 
ON customers.CustomerId = invoices.CustomerId 
WHERE customers.Country = 'Brazil';