(
  select pzr.name as pizzeria_name
  from person p 
  inner join person_order po on p.id = po.person_id
  inner join menu on menu.id = po.menu_id
  inner join pizzeria pzr on pzr.id = menu.pizzeria_id
  where p.gender = 'female'
  except
  select pzr.name
  from person p 
  inner join person_order po on p.id = po.person_id
  inner join menu on menu.id = po.menu_id
  inner join pizzeria pzr on pzr.id = menu.pizzeria_id
  where p.gender = 'male'
)
union
(
  select pzr.name
  from person p 
  inner join person_order po on p.id = po.person_id
  inner join menu on menu.id = po.menu_id
  inner join pizzeria pzr on pzr.id = menu.pizzeria_id
  where p.gender = 'male'
  except
  select pzr.name
  from person p 
  inner join person_order po on p.id = po.person_id
  inner join menu on menu.id = po.menu_id
  inner join pizzeria pzr on pzr.id = menu.pizzeria_id
  where p.gender = 'female'
)
order by pizzeria_name;