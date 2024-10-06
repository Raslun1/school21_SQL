SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name, person_visits.visit_date
FROM person
INNER JOIN person_visits ON person.id = person_visits.person_id
INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
INNER JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE person.name = 'Kate' 
  AND menu.price <= 1000 
  AND menu.price >= 800
ORDER BY menu.pizza_name, menu.price, pizzeria.name;