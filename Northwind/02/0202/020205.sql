select c.City,
       ContactName
    from Northwind.Customers c
    where City in
	    (
            select cc.City
			    from Northwind.Customers cc
                group by cc.City

				having count(*) > 1
        )
    order by c.City