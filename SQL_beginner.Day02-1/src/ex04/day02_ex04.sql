select pizzas.pizza_name, pizzeria.name as pizzeria_name, pizzas.price
from (select * from menu where pizza_name = 'mushroom pizza' or pizza_name = 'pepperoni pizza') as pizzas
join pizzeria on pizzas.pizzeria_id = pizzeria.id
order by pizza_name, pizzeria_name;
