select p.name
from person_order po
inner join person p on po.person_id = p.id
join menu m on po.menu_id = m.id
where p.gender = 'male'
  and p.address in ('Moscow', 'Samara')
  and m.pizza_name in ('pepperoni pizza', 'mushroom pizza')
order by p.name desc;