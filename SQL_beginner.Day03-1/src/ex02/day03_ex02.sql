SELECT 
    menu.pizza_name, 
    menu.price, 
    p.name
FROM 
    menu
INNER JOIN pizzeria p ON p.id = menu.pizzeria_id
WHERE menu.id IN (
  SELECT id FROM menu
  WHERE id NOT IN (
    SELECT menu_id FROM person_order
  )
  ORDER BY id
)
ORDER BY pizza_name, price;