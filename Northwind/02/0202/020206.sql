select concat(e.LastName, ' ', e.FirstName)
           as 'Employee',
	   concat(m.LastName, ' ', m.FirstName)
	       as 'Manager'
    from Northwind.Employees e,
	     Northwind.Employees m
    where e.ReportsTo = m.EmployeeID
    order by 'Manager', 'Employee'