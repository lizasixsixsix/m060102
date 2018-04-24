select ContactName
    from Northwind.Customers
    where not exists
        (
            select *
                from Northwind.Orders
                where Customers.CustomerID = Orders.CustomerID
        )