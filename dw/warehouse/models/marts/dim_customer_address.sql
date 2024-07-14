select
{{dbt_utils.generate_surrogate_key (['customer_id'])}} as customer_key,
{{dbt_utils.generate_surrogate_key (['store_id'])}} as store_key,
{{dbt_utils.generate_surrogate_key (['address.address_id'])}} as address_key,
first_name,
last_name,
email,
create_date,
customer.last_update,
active,
--column from address/city/country
address.address,
address.address2,
address.district,
address.postal_code,
address.phone,
city.city,
country.country
from {{ ref('customer')}} as customer
join {{ref('address')}} as address
on address.address_id = customer.address_id
left join {{ref('city')}} as city
on city.city_id = address.city_id 
left join {{ref('country')}} as country
on country.country_id = city.country_id

