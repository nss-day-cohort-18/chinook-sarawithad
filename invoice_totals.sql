--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

select 
	Invoice.InvoiceId, Invoice.Total, 
	Customer.FirstName || " " || Customer.LastName AS "CustomerFullName", Customer.Country,
	Employee.FirstName || " " || Employee.LastName AS "SalesAgentFullName"
from Invoice
JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
Join Employee ON Employee.EmployeeId = Customer.SupportRepId
where Employee.Title="Sales Support Agent"