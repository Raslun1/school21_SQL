select distinct pzr.name as pizzeria_name
from person p
inner join person_visits pv on pv.person_id = p.id
inner join pizzeria pzr on pzr.id = pv.pizzeria_id
left join (
    select po.person_id, m.pizzeria_id
    from person_order po
    inner join menu m on m.id = po.menu_id
) as orders on orders.person_id = p.id and orders.pizzeria_id = pzr.id
where p.name = 'Andrey'
and pv.visit_date is not null
and orders.pizzeria_id is null
order by pizzeria_name;