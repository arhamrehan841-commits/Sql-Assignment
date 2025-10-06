select 
	r.main_distance, 
	count(CASE WHEN r.age < 20 then 1 end) as under_20,
	count(CASE WHEN r.age between 20 and 29 then 1 end) as age_20_29,
	count(CASE WHEN r.age between 30 and 39 then 1 end) as age_30_39,
	count(CASE WHEN r.age between 40 and 49 then 1 end) as age_40_49,
	count(CASE WHEN r.age > 50 then 1 end) as over_50
from runner r
group by r.main_distance
