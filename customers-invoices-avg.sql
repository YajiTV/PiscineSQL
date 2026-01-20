SELECT
  c.FirstName,
  c.LastName,
  AVG(i.Total) AS InvoicesAverage
FROM Customer AS c
LEFT JOIN Invoice AS i
  ON i.CustomerId = c.CustomerId
GROUP BY
  c.CustomerId,
  c.FirstName,
  c.LastName
ORDER BY
  c.FirstName ASC;
