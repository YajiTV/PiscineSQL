SELECT t.Name
FROM tracks t
INNER JOIN InvoiceLine il ON t.TrackId = il.TrackId
WHERE il.InvoiceId = (
    SELECT InvoiceId
    FROM invoices
    ORDER BY InvoiceDate DESC
    LIMIT 1
);
