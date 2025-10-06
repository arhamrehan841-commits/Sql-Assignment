with cte as (
select 
	order_id,
	customer_id,
	total_amount,
	lag(total_amount, 1, 0) over(partition by customer_id order by order_date) as previous_value	
from
	orders
	)

select 
	order_id,
	customer_id,
	total_amount,
	previous_value,
	(total_amount - previous_value) as delta
from 
	cte
