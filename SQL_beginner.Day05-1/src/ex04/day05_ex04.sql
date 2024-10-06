CREATE UNIQUE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);
set enable_seqscan = off;
explain analyze SELECT person_id, menu_id,order_date
FROM person_order po
join menu m on pizzeria_id = 3 AND pizza_name = 'cheese pizza';