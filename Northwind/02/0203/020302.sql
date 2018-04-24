select ContactName,
       count(*)
	       as 'Orders Count'
    from Northwind.Customers
        left join Northwind.Orders
		    on Customers.CustomerId = Orders.CustomerId

    group by Customers.CustomerId,
	         ContactName
    order by 'Orders Count'