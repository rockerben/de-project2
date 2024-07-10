{{ config(materialized="table")}}

SELECT
  actor_id,
  first_name,
  last_name,
  last_update

  from {{ source ('dvd_rental', 'actor') }}
