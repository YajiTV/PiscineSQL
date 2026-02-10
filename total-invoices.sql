SELECT UPPER(FirstName || ' ' || LastName) AS FullName, COUNT(InvoiceId) AS AllInvoices
FROM customers
JOIN invoices USING (CustomerId)
GROUP BY FullName
ORDER BY AllInvoices DESC, FullName;