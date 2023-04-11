-- Show the sales agent's full name and invoices associated with each sales agent.

SELECT employees.FirstName, employees.LastName, invoices.InvoiceId, invoices.CustomerId, invoices.InvoiceDate, invoices.BillingAddress, invoices.BillingCity, invoices.BillingState, invoices.BillingCountry, invoices.BillingPostalCode, invoices.Total
FROM employees
INNER JOIN customers ON employees.EmployeeId = customers.SupportRepId
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId;
