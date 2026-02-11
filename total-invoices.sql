SELECT 
    c.FirstName || ' ' || UPPER(c.LastName) AS FullName, 
    SUM(i.Total) AS AllInvoices
FROM customers c 
JOIN invoices i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
HAVING SUM(i.Total) > 38
ORDER BY FullName ASC;
