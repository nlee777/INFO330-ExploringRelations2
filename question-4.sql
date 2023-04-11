-- Which sales agent made the most in sales in 2010?

-- do you want us to concatanate first and last name?
SELECT employees.FirstName || ' ' || employees.LastName, SUM(invoices.Total)
FROM employees
INNER JOIN customers ON employees.EmployeeId = customers.SupportRepId
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE SUBSTR(invoices.InvoiceDate, 1, 4) = '2010'
GROUP BY employees.FirstName || ' ' || employees.LastName
ORDER BY SUM(invoices.Total) DESC;