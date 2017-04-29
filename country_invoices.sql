--Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT COUNT(CustomerId) , BillingCountry
FROM Invoice
GROUP BY BillingCountry;