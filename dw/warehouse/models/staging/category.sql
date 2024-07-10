{{ config(materialized="table")}}

SELECT
  category_id,
  name,
  last_update

  from {{ source ('dvd_rental', 'category') }}