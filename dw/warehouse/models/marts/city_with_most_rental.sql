select
city,
sum(amount) as sales
from {{ref('dim_customer_address')}} as dim_customer_address
join {{ref('fact_payment')}} as fact_payment
on dim_customer_address.customer_key= fact_payment.customer_key
group by city
order by sales desc