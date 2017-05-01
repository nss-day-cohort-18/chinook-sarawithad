--Which sales agent made the most in sales in 2009?
--This is not working but close...


SELECT
	Employee.FirstName || " " || Employee.LastName AS "Sales Agent Full Name",  MAX(totalSales)
FROM
	(SELECT SUM(Invoice.Total) AS totalSales 
	FROM Invoice
	JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
	JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
	WHERE  Employee.Title = "Sales Support Agent"
	AND strftime('%Y', Invoice.InvoiceDate)  IN ("2009"));



