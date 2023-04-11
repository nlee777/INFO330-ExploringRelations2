-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.

-- why don't we have to specify Invoice.Id if it doesn't come from customers?
-- all billing countries are supposed to be from brazil right?
-- do we need to concatanate the  customer's names?
SELECT 
Firstname, LastName, InvoiceId, Country,  InvoiceDate, BillingCountry 
FROM customers 
INNER JOIN invoices 
ON customers.CustomerId = invoices.CustomerId 
WHERE customers.Country = 'Brazil';