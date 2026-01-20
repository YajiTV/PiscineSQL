SELECT
  il.InvoiceId,
  t.Name AS InvoiceItem,
  il.UnitPrice
FROM InvoiceLine AS il
JOIN Track AS t
  ON t.TrackId = il.TrackId
WHERE il.InvoiceId = 10
ORDER BY t.Name ASC;
