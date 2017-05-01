--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

SELECT InvoiceId, COUNT(InvoiceLineId) AS "Number of items on Invoice"
FROM InvoiceLine
GROUP BY InvoiceId;
