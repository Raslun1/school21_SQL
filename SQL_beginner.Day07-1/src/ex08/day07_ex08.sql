select address, pzr.name, count(*) from person_order po
inner join menu m on po.menu_id = m.id
inner join pizzeria pzr on m.pizzeria_id = pzr.id
inner join person p on p.id = po.person_id
group by address, pzr.name
order by 1, 2;