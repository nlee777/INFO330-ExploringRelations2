-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.

SELECT 
Firstname, LastName, InvoiceId, Country,  InvoiceDate, BillingCountry 
FROM customers 
JOIN invoices 
ON customers.CustomerId = invoices.CustomerId 
WHERE customers.Country = 'Brazil';