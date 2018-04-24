select OrderID
           as 'Order Number',
       case
           when ShippedDate is null then 'Not shipped'
           else convert(varchar, ShippedDate, 120)
       end
           as 'Shipped Date'
    from Northwind.Orders
    where ShippedDate >= '1998-04-07 00:00:00' or ShippedDate is null