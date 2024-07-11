{{ config(materialized="table")}}

SELECT
    film_id,
    title,
    description,
    release_year,
    language_id,
    rental_duration,
    rental_rate,
    length,
    replacement_cost,
    rating,
    special_features,
    last_update
    
    from {{ source ('dvd_rental', 'film') }}

    