--Provide a query that shows the most purchased Media Type.

SELECT COUNT(InvoiceLine.TrackId) as TimesPurchased, MediaType.Name as TypeOfMedia
FROM MediaType
JOIN Track on MediaType.MediaTypeId = Track.MediaTypeId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceId
ORDER BY TimesPurchased desc
LIMIT 1;