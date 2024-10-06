select m.pizza_name, p.name as pizzeria_name from person_order
inner join menu m on m.id = menu_id
inner join pizzeria p on p.id = m.pizzeria_id
where person_id in
(select id from person where name = 'Denis' or name = 'Anna')
order by 1, 2;