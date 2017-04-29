--Provide a query that includes the purchased track name with each invoice line item.

SELECT InvoiceLineId, Name
from Track
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
ORDER BY InvoiceLineId;
