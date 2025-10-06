select c1.name as category, c2.name as sub_category
from Category c1
left join Category c2
	on c1.id = c2.parent_id
where c1.parent_id is null
