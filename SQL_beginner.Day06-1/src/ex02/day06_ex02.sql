with cte_pizza_order as (
  select person_id, person.name, menu.pizza_name, price, pizzeria_id,
  pizzeria.name as pizzeria_name
  from person_order
  inner join menu on menu.id = person_order.menu_id
  inner join person on person.id = person_order.person_id
  inner join pizzeria on pizzeria.id = menu.pizzeria_id
)
select cte_pizza_order.name, cte_pizza_order.pizza_name, cte_pizza_order.price,
  (price - price * (person_discounts.discount / 100)) AS discount_price,
  cte_pizza_order.pizzeria_name
from person_discounts
inner join cte_pizza_order on person_discounts.person_id = cte_pizza_order.person_id
and person_discounts.pizzeria_id = cte_pizza_order.pizzeria_id
order by name, pizza_name;