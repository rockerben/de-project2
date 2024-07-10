{{ config(materialized="table")}}

SELECT
    customer_id,
    store_id,
    first_name,
    last_name,
    email,
    address_id,
    active,
    create_date,
    last_update

    from {{ source ('dvd_rental', 'customer') }}
    