select sum(UnitPrice * Quantity * (1 - Discount))
           as 'Totals'
    from Northwind.[Order Details]