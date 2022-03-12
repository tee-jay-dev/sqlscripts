SELECT c.customer_id as cud_id,first_name,last_name,phone,email
      ,street,city,state,zip_code,isnull(count(o.order_id),0) as numOfOrders
	  FROM sales.customers c
	  join sales.orders o
	  on c.customer_id = o.customer_id
	  group by c.customer_id,first_name,last_name,phone,email
      ,street,city,state,zip_code