SELECT p.name, p.rating as rate
FROM pizzeria p
LEFT JOIN person_visits ON p.id = person_visits.pizzeria_id
where person_visits.pizzeria_id is null;