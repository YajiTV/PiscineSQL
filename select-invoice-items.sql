SELECT
  il.InvoiceId,
  t.Name AS InvoiceItem,
  il.UnitPrice
FROM invoice_items AS il
JOIN tracks AS t
  ON t.TrackId = il.TrackId
WHERE il.InvoiceId = 10
ORDER BY t.Name ASC;
