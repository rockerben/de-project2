select
{{dbt_utils.generate_surrogate_key (['address.address_id'])}} as address_key,
address.address,
address.address2,
address.district,
address.postal_code,
address.phone,
city.city,
country.country
from {{ref('address')}} as address
left join {{ref('city')}} as city
on city.city_id = address.city_id 
left join {{ref('country')}} as country
on country.country_id = city.country_id