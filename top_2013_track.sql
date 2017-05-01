--Provide a query that shows the most purchased track of 2013

SELECT subquery.TrackName as TrackName, MAX(subquery.TimesPurchased) as MostPurchasedCount
FROM
	(
	SELECT COUNT(InvoiceLine.TrackId) as TimesPurchased, Track.Name as TrackName
	FROM InvoiceLine
	JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
	JOIN Track ON InvoiceLine.TrackId = Track.TrackId
	WHERE strftime('%Y', Invoice.InvoiceDate)  IN ("2013")
	GROUP BY Invoice.InvoiceId
	)
	as subquery;