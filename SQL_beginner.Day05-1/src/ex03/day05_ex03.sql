CREATE INDEX idx_person_order_multi ON person_order (person_id, menu_id);
set enable_seqscan = off;
explain analyze SELECT person_id, menu_id,order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;