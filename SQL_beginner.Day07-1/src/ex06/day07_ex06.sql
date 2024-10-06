select p.name, count(*) as count_of_orders,
round(avg(m.price),2) as average_price,
max(m.price) as max_price,
min(m.price) as min_price
from person_order po
inner join menu m on po.menu_id = m.id
inner join pizzeria p on m.pizzeria_id = p.id
group by p.name
order by 1;