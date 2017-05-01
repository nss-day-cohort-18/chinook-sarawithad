--Which sales agent made the most in sales in 2009?


SELECT
	subquery.FullName, MAX(subquery.totalSales) AS HighestSales
FROM
	(
	SELECT SUM(Invoice.Total) AS totalSales, Employee.FirstName || " " || Employee.LastName AS FullName
	FROM Invoice
	JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
	JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
	WHERE  Employee.Title = "Sales Support Agent"
	AND strftime('%Y', Invoice.InvoiceDate)  IN ("2009")
	GROUP BY Employee.EmployeeId
	)
	as subquery;


