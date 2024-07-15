select
    {{ dbt_utils.star(from=ref('fact_payment'), relation_alias='fact_payment', except=[
        "rental_key", "customer_key", "staff_key", "payment_key", "inventory_key", "film_key","store_key"
    ]) }},
    {{ dbt_utils.star(from=ref('dim_film'), relation_alias='dim_film', except=["film_key"]) }},
    {{ dbt_utils.star(from=ref('dim_customer_address'), relation_alias='dim_customer_address', except=["customer_key","store_key","address_key"], prefix ="CUSTOMER_") }},
    {{ dbt_utils.star(from=ref('dim_actor'), relation_alias='dim_actor', except=["actor_key","film_key"], prefix="ACTOR_") }},
    {{ dbt_utils.star(from=ref('dim_staff'), relation_alias='dim_staff', except=["staff_key","store_key","address_key"], prefix="STAFF_") }},

from {{ ref('fact_payment') }} as fact_payment
left join {{ ref('dim_film') }} as dim_film on fact_payment.film_key = dim_film.film_key
left join {{ ref('dim_customer_address') }} as dim_customer_address on fact_payment.customer_key = dim_customer_address.customer_key
left join {{ ref('dim_actor') }} as dim_actor on fact_payment.film_key = dim_actor.film_key
left join {{ ref('dim_staff') }} as dim_staff on fact_payment.staff_key = dim_staff.staff_key
