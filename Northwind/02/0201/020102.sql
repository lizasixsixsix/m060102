select Count(
           case
		       when ShippedDate is null then 0
			   else null
		   end)
    from Northwind.Orders