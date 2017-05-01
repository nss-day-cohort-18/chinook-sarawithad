--Which sales agent made the most in sales over all?

SELECT
	subquery.FullName, MAX(subquery.totalSales) AS HighestSalesOverall
FROM
	(
	SELECT SUM(Invoice.Total) AS totalSales, Employee.FirstName || " " || Employee.LastName AS FullName
	FROM Invoice
	JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
	JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
	WHERE  Employee.Title = "Sales Support Agent"
	GROUP BY Employee.EmployeeId
	)
	as subquery;
