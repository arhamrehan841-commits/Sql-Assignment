select cust.first_name + ' ' + cust.last_name as customer_name, col.name as fav_color
from Customer cust
left join Clothing_Order co
	on cust.id = co.customer_id
join color col
	on col.id = cust.favorite_color_id
where co.customer_id is null;
