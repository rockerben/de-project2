{{ config(materialized="table")}}

SELECT
    payment_id,
    customer_id,
    staff_id,
    rental_id,
    amount,
    payment_date,
   
    
    from {{ source ('dvd_rental', 'payment') }} 

    