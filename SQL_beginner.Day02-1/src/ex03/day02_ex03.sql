with date_series as (
    select generate_series('2022-01-01', '2022-01-10', interval '1 day')::date as days
),
person_visits_filtered as (
    select visit_date
    from person_visits
    where (person_id = 1 or person_id = 2)
      and visit_date between '2022-01-01' and '2022-01-10'
),
missing_days_cte as (
    select ds.days
    from date_series ds
    left join person_visits_filtered pv on ds.days = pv.visit_date
    where pv.visit_date is null
)
select missing_days_cte.days as missing_days
from missing_days_cte
order by missing_days;
