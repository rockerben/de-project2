select 
{{dbt_utils.generate_surrogate_key(['payment.rental_id'])}} as rental_key,
{{dbt_utils.generate_surrogate_key (['payment.customer_id'])}} as customer_key,
{{dbt_utils.generate_surrogate_key (['payment.staff_id'])}} as staff_key,
{{dbt_utils.generate_surrogate_key (['payment.payment_id'])}} as payment_key,
{{dbt_utils.generate_surrogate_key (['inventory.inventory_id'])}} as inventory_key,
{{dbt_utils.generate_surrogate_key (['inventory.film_id'])}} as film_key,
{{dbt_utils.generate_surrogate_key (['inventory.store_id'])}} as store_key,
amount,
payment_date,
rental_date,
return_date
from {{ref('payment')}} as payment
join {{ref('rental')}} as rental
on rental.rental_id = payment.rental_id
join {{ref('inventory')}} as inventory
on inventory.inventory_id = rental.inventory_id