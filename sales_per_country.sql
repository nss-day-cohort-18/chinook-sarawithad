--Provide a query that shows the total sales per country.

SELECT SUM(Invoice.Total) as "Total Sales", Invoice.BillingCountry as "Country"
FROM Invoice
GROUP BY Invoice.BillingCountry; 