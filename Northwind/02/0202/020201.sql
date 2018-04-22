select year(OrderDate)
           as 'Year',
	   Count(*)
	       as 'Total'
    from Northwind.Orders
    group by year(OrderDate)

select 'All'
           as 'Year',
       Count(*)
           as 'Total'
    from Northwind.Orders