{{ config(materialized="table")}}

SELECT
    film_id,
    category_id,
    last_update

    from {{ source ('dvd_rental', 'film_category') }}
    