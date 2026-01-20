SELECT
  c.FirstName,
  c.LastName,
  AVG(i.Total) AS InvoicesAverage
FROM customers AS c
LEFT JOIN invoices AS i
  ON i.CustomerId = c.CustomerId
GROUP BY
  c.CustomerId,
  c.FirstName,
  c.LastName
ORDER BY
  c.FirstName ASC;
