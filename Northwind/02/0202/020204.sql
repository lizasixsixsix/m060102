select Customers.City,
       CompanyName
	       as 'Customer',
       concat(LastName, ' ', FirstName)
	       as 'Seller'
    from Northwind.Customers,
	     Northwind.Employees
    where Customers.City = Employees.City
    order by 'Customer',
	         'Seller'