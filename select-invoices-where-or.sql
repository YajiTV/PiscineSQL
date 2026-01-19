SELECT InvoiceId, Total
FROM invoices
WHERE destination = 'Paris' OR destination = 'London'