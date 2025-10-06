select e.name, count(re.runner_id) as runner_count
from event e
left join runner_event re
	on re.event_id = e.id
group by e.name
