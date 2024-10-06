set enable_seqscan = off;
explain analyze select m.pizza_name, pz.name as pizzeria_name
from menu m
join pizzeria pz on pz.id = m.pizzeria_id;