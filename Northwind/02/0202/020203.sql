select EmployeeID,
       CustomerID,
	   count(*)
	       as 'Amount'
    from Northwind.Orders
    where year(OrderDate) = 1998
    group by EmployeeID,
	         CustomerID
	order by EmployeeID