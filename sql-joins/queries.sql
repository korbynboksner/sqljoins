-- write your queries here
select * from owners o 
full outer join vehicles v
on o.id=v.owner_id

select first_name, last_name, 
  count(owner_id) from owners o 
  join vehicles v on o.id=v.owner_id 
  group by (first_name, last_name) 
order by first_name

select
  first_name, last_name, 
  round(avg(price)) as average_price, 
  count(owner_id) 
from owners o 
join vehicles v on o.id=v.owner_id 
group by 
  (first_name, last_name) 
having
  count(owner_id) > 1 and round(avg(price)) > 10000 
order by first_name desc;