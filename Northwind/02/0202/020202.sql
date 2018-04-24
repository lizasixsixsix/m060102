select
    (
        select concat(LastName, ' ', FirstName)
        from Northwind.Employees
        where Employees.EmployeeID = Orders.EmployeeID
    )
        as 'Seller',
    count(*)
        as 'Amount'
    from Northwind.Orders
    group by EmployeeID
    order by 'Amount' desc