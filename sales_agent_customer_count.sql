--Provide a query that shows the count of customers assigned to each sales agent.

SELECT COUNT(Customer.SupportRepId) as "Customer Count", Employee.FirstName || " " || Employee.LastName as "Sales Agent Name"
FROM Customer, Employee
WHERE Customer.SupportRepId = Employee.EmployeeId
AND Employee.Title = "Sales Support Agent"
GROUP BY "Sales Agent Name";