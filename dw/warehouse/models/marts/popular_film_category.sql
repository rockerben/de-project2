select 
distinct 
year(payment_date) as yr,
month(payment_date) as mth,
concat(year(payment_date),'-', month(payment_date)) as year_month,
category_name,
sum(amount) over (partition by year(payment_date),month(payment_date),category_name) as sales_amount
from {{ref('dim_film')}} as dim_film
join {{ref('fact_payment')}} as fact_payment
on dim_film.film_key= fact_payment.film_key
--group by year(payment_date),month(payment_date), year_month
order by sales_amount desc