{{ config(materialized="table")}}

SELECT
    language_id,
    name,
    last_update
    
    from {{ source ('dvd_rental', 'language') }}
    