with
    cte_p_pizza(pepperoni) as (
    (select person.name AS pepperoni
    from person_order
    inner join person on person_order.person_id = person.id
    inner join menu on menu.id = person_order.menu_id
    where person.gender = 'female' and pizza_name = 'pepperoni pizza')
),
    cte_ch_pizza(cheese) as (
    (select person.name as cheese
    from person_order
    inner join person on person_order.person_id = person.id
    inner join menu on menu.id = person_order.menu_id
    where person.gender = 'female' and pizza_name = 'cheese pizza')
)
select person.name from person
   inner join cte_p_pizza on cte_p_pizza.pepperoni = person.name
   inner join cte_ch_pizza on cte_ch_pizza.cheese = person.name
