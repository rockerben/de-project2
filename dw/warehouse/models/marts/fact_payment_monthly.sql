select
    {{ dbt_utils.generate_surrogate_key(["month(payment_date)", "film_key"]) }} as payment_monthly_key,
    sum(amount) as monthly_sales,
    month(payment_date) as mth,
    film_key
from {{ ref('fact_payment') }} as fact_payment
group by
    mth,
    film_key

