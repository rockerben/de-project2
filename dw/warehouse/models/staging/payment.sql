{{ config(
    materialized="table",
    unique_key=["payment_id"],
    incremental_strategy="append")
    }}

SELECT
    payment_id,
    customer_id,
    staff_id,
    rental_id,
    amount,
    payment_date
from {{ source ('dvd_rental', 'payment') }} 

{% if is_incremental() %}
    where payment_date > (select max(payment_date) from {{ this }})

{% endif %}

