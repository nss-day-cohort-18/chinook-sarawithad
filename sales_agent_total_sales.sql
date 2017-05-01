--Provide a query that shows total sales made by each sales agent.

SELECT Employee.FirstName || " " || Employee.LastName AS FullName, SUM(Invoice.Total) AS totalSales
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE  Employee.Title = "Sales Support Agent"
GROUP BY Employee.EmployeeId

