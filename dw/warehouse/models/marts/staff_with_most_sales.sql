select
concat(first_name,' ',last_name) as full_name,
sum(amount) as sales
from {{ ref('dim_staff')}} as staff
join {{ref('fact_payment')}} as fact_payment
on staff.staff_key = fact_payment.staff_key
group by full_name
order by sales desc
