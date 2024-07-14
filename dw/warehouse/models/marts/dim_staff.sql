select
{{dbt_utils.generate_surrogate_key (['staff_id'])}} as staff_key,
{{dbt_utils.generate_surrogate_key (['address_id'])}} as address_key,
{{dbt_utils.generate_surrogate_key (['store_id'])}} as store_key,
first_name,
last_name,
email,
active,
username,
password,
last_update
from {{ ref('staff')}} as staff
