{{ config(materialized="table")}}

SELECT
    inventory_id,
    film_id,
    store_id,
    last_update
    
    from {{ source ('dvd_rental', 'inventory') }}


    