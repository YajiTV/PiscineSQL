SELECT t.Name
FROM tracks t
INNER JOIN invoice_items ii ON t.TrackId = ii.TrackId
WHERE ii.InvoiceId = (
    SELECT InvoiceId
    FROM invoices
    ORDER BY InvoiceDate DESC
    LIMIT 1
);
