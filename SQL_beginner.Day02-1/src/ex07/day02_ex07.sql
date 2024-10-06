select p.name as pizzeria_name
from person ps
inner join person_visits pv on ps.id = pv.person_id
inner join pizzeria p on pv.pizzeria_id = p.id
inner join menu m on p.id = m.pizzeria_id
where m.price < 800 and pv.visit_date = '2022-01-08' and ps.name = 'Dmitriy';