-- Which sales agent made the most in sales in 2010?

SELECT employees.FirstName, employees.LastName, SUM(invoices.Total)
FROM employees
JOIN customers ON employees.EmployeeId = customers.SupportRepId
JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE SUBSTR(invoices.InvoiceDate, 1, 4) = '2010'
GROUP BY employees.EmployeeId
ORDER BY SUM(invoices.Total) DESC;