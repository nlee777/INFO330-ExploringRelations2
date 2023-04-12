-- Which sales agent made the most in sales in 2010?

-- do you want us to concatanate first and last name?
-- is the GROUP BY line correct here?

-- group by employeeId first
SELECT employees.FirstName, employees.LastName, SUM(invoices.Total)
FROM employees
JOIN customers ON employees.EmployeeId = customers.SupportRepId
JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE SUBSTR(invoices.InvoiceDate, 1, 4) = '2010'
GROUP BY employees.EmployeeId
ORDER BY SUM(invoices.Total) DESC;