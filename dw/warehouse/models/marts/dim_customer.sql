select
{{dbt_utils.generate_surrogate_key (['customer_id'])}} as customer_key,
{{dbt_utils.generate_surrogate_key (['store_id'])}} as store_key,
{{dbt_utils.generate_surrogate_key (['address_id'])}} as address_key,
first_name,
last_name,
email,
create_date,
last_update,
active
from {{ ref('customer')}} as customer
