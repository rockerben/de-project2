{{ config(materialized="table")}}

SELECT
    staff_id,
    first_name,
    last_name,
    address_id,
    email,
    store_id,
    active,
    username,
    password,
    last_update
    
    from {{ source ('dvd_rental', 'staff') }}
    