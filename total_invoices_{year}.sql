--How many Invoices were there in 2009 and 2011?

SELECT COUNT(i.InvoiceDate) NumberOfInvoices
FROM Invoice i
WHERE i.InvoiceDate = 2009 or 2011