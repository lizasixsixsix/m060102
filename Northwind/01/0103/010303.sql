select CustomerID,
       Country
    from Northwind.Customers
    where left(Country, 1) >= 'b' and left(Country, 1) <= 'g'
    order by Country