with cte as (
SELECT 
	dense_rank() over(order by total_amount desc) as  rank,
	order_id,
	total_amount,
	order_date
FROM
	orders o
)

select 
	rank, 
	order_id, 
	total_amount
from 
	cte 
where
	rank <= 3
order by
	rank, order_date