SELECT
  c.FirstName,
  c.LastName,
  c.Company,
  i.Total AS InvoiceTotalPrice
FROM Customer AS c
JOIN Invoice  AS i
  ON i.CustomerId = c.CustomerId
WHERE c.Company IS NOT NULL
  AND c.Company <> ''
ORDER BY c.LastName, c.FirstName, i.InvoiceId;
