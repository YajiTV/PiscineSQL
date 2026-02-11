SELECT UPPER(c.FirstName || ' ' || c.LastName) AS FullName, SUM(i.InvoiceId) AS AllInvoices
FROM customers c 
JOIN invoices i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
HAVING AllInvoices > 38 
ORDER BY FullName ASC;