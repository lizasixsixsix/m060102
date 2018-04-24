select year(OrderDate)
           as 'Year',
	   count(*)
	       as 'Total'
    from Northwind.Orders
    group by year(OrderDate)

select 'All'
           as 'Year',
       count(*)
           as 'Total'
    from Northwind.Orders