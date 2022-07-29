-- write your queries here


select * from owners
left join vehicles
on owners.id = vehicles.owner_id;


select first_name, last_name, count(*) from owners
join vehicles 
on owners.id = vehicles.owner_id
group by first_name, last_name
order by count(*), first_name;



select first_name, last_name, round(avg(price)) as avg_price, count(*) from owners
join vehicles 
on  owners.id = vehicles.owner_id
group by first_name, last_name
having round(avg(price)) >= 10000
order by first_name desc

