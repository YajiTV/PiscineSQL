SELECT
  c.FirstName,
  c.LastName,
  c.Company,
  i.Total AS InvoiceTotalPrice
FROM customers AS c
JOIN invoices AS i
  ON i.CustomerId = c.CustomerId
WHERE c.Company IS NOT NULL
  AND c.Company <> ''
ORDER BY c.LastName, c.FirstName, i.InvoiceId;
