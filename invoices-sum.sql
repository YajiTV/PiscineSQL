SELECT SUM(i.Total) AS AllInvoicesTotalPrice
FROM customers AS c
JOIN invoices AS i ON i.CustomerId = c.CustomerId
WHERE c.FirstName = 'Tim' AND c.LastName  = 'Goyer';
