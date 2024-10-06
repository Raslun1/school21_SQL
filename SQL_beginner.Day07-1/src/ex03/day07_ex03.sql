with VisitCounts as (
  select pz.name, count(pv.id) as visit_count
  from person_visits pv
  join pizzeria pz on pv.pizzeria_id = pz.id
  group by pz.name
),
OrderCounts as (
    select pz.name, COUNT(po.id) as order_count
    from person_order po
    join menu m on po.menu_id = m.id
    join pizzeria pz on m.pizzeria_id = pz.id
    group by pz.name
)
select pz.name, COALESCE(vc.visit_count, 0) + COALESCE(oc.order_count, 0) as total_count
from pizzeria pz
left join VisitCounts vc on pz.name = vc.name
left join OrderCounts oc on pz.name = oc.name
order by total_count desc, pz.name;