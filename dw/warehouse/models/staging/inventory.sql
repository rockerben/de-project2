{{
    config(
        materialized="incremental",
        unique_key=["inventory_id"],
        incremental_strategy="merge"
    )
}}

SELECT
    inventory_id,
    film_id,
    store_id,
    last_update
from {{ source ('dvd_rental', 'inventory') }}

{% if is_incremental() %}
    where last_update > (select max(last_update)- interval(2) from {{ this }} )
{% endif %}


    