select OrderID,
       ShippedDate =
           case
               when ShippedDate is null then 'Not shipped'
           end
    from Northwind.Orders
    where ShippedDate is null