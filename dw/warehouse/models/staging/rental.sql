{{ config(materialized="table")}}

SELECT
	STAFF_ID,
	RENTAL_ID,
	CUSTOMER_ID,
	LAST_UPDATE,
	RENTAL_DATE,
	RETURN_DATE,
	INVENTORY_ID

  from {{ source ('dvd_rental', 'rental') }}
