SELECT InvoiceID, Total
    CASE
        WHEN Total < 5  (
            print('Price lower than 5$')
        )
        WHEN Total < 10 (
            print('Price lower than 10$')
        )
        WHEN Total > 10 (
            print('Price greater than 10$')
        )
LIMIT 100; 