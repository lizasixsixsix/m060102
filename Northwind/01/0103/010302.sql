select CustomerID,
       Country
    from Northwind.Customers
    where left(Country, 1) between 'b' and 'g'
    order by Country