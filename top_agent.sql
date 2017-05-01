--Which sales agent made the most in sales over all?
--This is not working but close...

SELECT
	Employee.FirstName || " " || Employee.LastName AS "Sales Agent Full Name",  MAX(totalSales)
FROM
	(SELECT SUM(Invoice.Total) AS totalSales 
	FROM Employee
	JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
	JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
	WHERE  Employee.Title = "Sales Support Agent");