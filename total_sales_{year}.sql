--What are the respective total sales for each of those years?

SELECT SUM(Total) AS Total, strftime('%Y', InvoiceDate) as InvoiceYr,
	COUNT(Total)
FROM Invoice 
WHERE strftime('%Y', InvoiceDate) 
IN ('2009')
UNION
SELECT 
	SUM(Total) AS Total, strftime('%Y', InvoiceDate) as InvoiceYr,
	COUNT(Total)
FROM Invoice 
WHERE strftime('%Y', InvoiceDate) 
IN ('2011')

