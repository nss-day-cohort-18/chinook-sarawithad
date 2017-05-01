--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT InvoiceLine.InvoiceId, COUNT(InvoiceLine.InvoiceId) NumberOfLineItems
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId
