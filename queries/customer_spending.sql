/* Query Name: Top Customers by Spending
Description:
Returns the top 5 customers based on total spending.
Includes number of invoices and average invoice value.

Skills Demonstrated:
- JOIN
- Aggregation
- GROUP BY
- ORDER BY
- Data formatting */
SELECT c.CustomerId, concat(c.Firstname,' ',c.Lastname) as FullName, ROUND(sum(i.Total),2) AS TotalSpent, 
ROUND(AVG(i.Total), 2) AS AvgInvoiceValue ,COUNT(i.InvoiceId) as TotalInvoices
FROM customer c JOIN invoice i 
ON i.CustomerId = c.CustomerId GROUP BY c.CustomerId,c.Firstname,c.Lastname
ORDER BY TotalSpent DESC LIMIT 5;
