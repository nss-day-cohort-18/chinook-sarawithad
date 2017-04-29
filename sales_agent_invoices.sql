--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

select Employee.FirstName || " " || Employee.LastName AS "FullName", Employee.Title, Invoice.InvoiceId
from Employee
JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice on Customer.CustomerId = Invoice.CustomerId
where Title="Sales Support Agent";


