select m.pizza_name, pzr1.name as pizzeria_name_1, pzr2.name as pizzeria_name_2, m.price
from menu m 
inner join  menu m2 on m.id <> m2.id 
and m.price = m2.price 
and m.pizzeria_id > m2.pizzeria_id 
and m.pizza_name = m2.pizza_name
inner join  pizzeria pzr1 on m.pizzeria_id = pzr1.id
inner join  pizzeria pzr2 on m2.pizzeria_id = pzr2.id
order by pizza_name;