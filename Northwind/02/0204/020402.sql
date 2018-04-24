select concat(LastName, ' ', FirstName)
           as 'Employee'
    from Northwind.Employees
    where exists
        (
            select *
                from Northwind.Orders
                where Employees.EmployeeID = Orders.EmployeeID

                having count(*) > 150
        )