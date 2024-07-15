select 
{{dbt_utils.generate_surrogate_key(['rental_id'])}} as rental_key,
{{dbt_utils.generate_surrogate_key (['customer_id'])}} as customer_key,
{{dbt_utils.generate_surrogate_key (['staff_id'])}} as staff_key,
{{dbt_utils.generate_surrogate_key (['inventory_id'])}} as inventory_key,
datediff('days', rental_date, return_date) as days_rental,
rental_date,
return_date
from {{ref('rental')}} as rental