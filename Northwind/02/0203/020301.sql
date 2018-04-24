select distinct Employees.EmployeeID,
       concat(LastName, ' ', FirstName)
           as 'Employee'
    from Northwind.Employees
        join Northwind.EmployeeTerritories
            on Employees.EmployeeID = EmployeeTerritories.EmployeeID
        join Northwind.Territories
            on EmployeeTerritories.TerritoryID = Territories.TerritoryID
        join Northwind.Region
            on Territories.RegionID = Region.RegionID

    where Region.RegionDescription = 'Western'