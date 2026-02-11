SELECT UPPER(FirstName || ' ' || LastName) AS FullName, SUM(i.InvoiceId) AS AllInvoices
FROM customers
JOIN invoices i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
HAVING SUM(i.InvoiceId) > 38
ORDER BY FullName ASC;