-- Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

select FirstName || " " || LastName AS FullName, InvoiceID, InvoiceDate, BillingCountry
from Invoice, Customer
where BillingCountry="Brazil" AND Country = "Brazil";



