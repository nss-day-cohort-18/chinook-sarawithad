--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(InvoiceLine.InvoiceId) NumberOfLineItems
FROM InvoiceLine
Where InvoiceLine.InvoiceID = 37