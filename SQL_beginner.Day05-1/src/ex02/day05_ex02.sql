CREATE INDEX idx_person_name ON person (UPPER(name));
set enable_seqscan = off;
explain analyze select p.name as person_name
from person p
where upper(name) = 'Kate';