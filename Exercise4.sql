select main_distance, count(name) as runners_number
from runner
group by main_distance
having count(name) > 3
