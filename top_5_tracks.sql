--Provide a query that shows the top 5 most purchased tracks over all.

SELECT COUNT(InvoiceLine.TrackId) as TimesPurchased, Track.Name as TrackName
FROM InvoiceLine
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
GROUP BY Invoice.InvoiceId
ORDER BY TimesPurchased desc
LIMIT 5;