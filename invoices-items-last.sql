SELECT t.Name
FROM Track t
INNER JOIN InvoiceLine il ON t.TrackId = il.TrackId
WHERE il.InvoiceId = (
    SELECT InvoiceId
    FROM Invoice
    ORDER BY InvoiceDate DESC
    LIMIT 1
);
