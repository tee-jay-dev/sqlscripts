SELECT c.customer_id as cud_id,first_name,last_name,phone,email
      ,street,city,state,zip_code,isnull(count(o.order_id),0) as numOfOrders,Isnull(SUM((oi.quantity * oi.list_price)-discount),0) as totalSpent
	  FROM sales.customers c
	  join sales.orders o on c.customer_id = o.customer_id
	  join sales.order_items oi on oi.order_id = o.order_id
	  group by c.customer_id,first_name,last_name,phone,email
      ,street,city,state,zip_code


