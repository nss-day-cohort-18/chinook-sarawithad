--Which country's customers spent the most?

SELECT subquery.Country as Country, MAX(subquery.TotalSales) as BiggestSpender
FROM
	(
	SELECT SUM(Invoice.Total) as TotalSales, Invoice.BillingCountry as "Country"
	FROM Invoice
	GROUP BY Invoice.BillingCountry
	) 
	as subquery;
