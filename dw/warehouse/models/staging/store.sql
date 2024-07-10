{{ config(materialized="table")}}

SELECT
    store_id,
    manager_staff_id,
    address_id,
    last_update
    
    from {{ source ('dvd_rental', 'store') }}
    