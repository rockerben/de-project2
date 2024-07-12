select 
{{dbt_utils.generate_surrogate_key(['rental_id'])}} as rental_key,
{{dbt_utils.generate_surrogate_key (['customer_id'])}} as customer_key,
{{dbt_utils.generate_surrogate_key (['staff_id'])}} as staff_key,
{{dbt_utils.generate_surrogate_key (['payment_id'])}} as payment_key,
amount,
payment_date
from {{ref('payment')}} as rental