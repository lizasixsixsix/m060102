﻿select ContactName,
       Country
    from Northwind.Customers
    where Country not in ('USA', 'Canada')
    order by ContactName