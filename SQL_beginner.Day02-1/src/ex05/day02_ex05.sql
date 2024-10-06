select name from
(select * from person
where gender = 'female' and age > 25 ) as name
order by name;