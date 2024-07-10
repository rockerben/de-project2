{{ config(materialized="table")}}

SELECT
    address_id,
    address,
    address2,
    district,
    city_id,
    postal_code,
    phone,
    last_update
    
    from {{ source ('dvd_rental', 'address') }}
    