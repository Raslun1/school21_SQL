select days::date as missing_days
from generate_series('2022-01-01', '2022-01-10', interval '1 day') as days
left join (
    select visit_date
    from person_visits
    where (person_id = 1 or person_id = 2)
      and visit_date between '2022-01-01' and '2022-01-10'
) as d on days = d.visit_date
where d.visit_date is null
order by days;
