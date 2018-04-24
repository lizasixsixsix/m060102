select CompanyName
    from Northwind.Suppliers
    where SupplierId in
        (
            select distinct SupplierId
                from Northwind.Products
                where UnitsInStock = 0
        )