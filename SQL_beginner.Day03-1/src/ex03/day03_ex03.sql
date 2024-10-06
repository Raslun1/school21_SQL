(
  select pzr.name as pizzeria_name
  from person p 
  inner join person_visits pv on p.id = pv.person_id
  inner join pizzeria pzr on pzr.id = pv.pizzeria_id
  where p.gender = 'female'
  except all
  select pzr.name
  from person p 
  inner join person_visits pv on p.id = pv.person_id
  inner join pizzeria pzr on pzr.id = pv.pizzeria_id
  where p.gender = 'male'
)
union all
(
  select pzr.name
  from person p 
  inner join person_visits pv on p.id = pv.person_id
  inner join pizzeria pzr on pzr.id = pv.pizzeria_id
  where p.gender = 'male'
  except all
  select pzr.name
  from person p 
  inner join person_visits pv on p.id = pv.person_id
  inner join pizzeria pzr on pzr.id = pv.pizzeria_id
  where p.gender = 'female'
)
order by pizzeria_name;