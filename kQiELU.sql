select 
	o.customer_id ,
	full_name ,
	order_id ,
	order_date ,
	total_amount ,
	sum(total_amount) over (partition by o.customer_id order by order_date) as running_total
from
	orders o 
join
	customers c
on 
	c.customer_id = o.customer_id