SELECT InvoiceID, Total,
    CASE
        IF Total < 5  (
            print('Price lower than 5$')
        )
        IF Total < 10 (
            print('Price lower than 10$')
        )
        IF Total > 10 (
            print('Price greater than 10$')
        )
LIMIT 100; 