select
{{dbt_utils.generate_surrogate_key (['actor.actor_id'])}} as actor_key,
{{dbt_utils.generate_surrogate_key (['film_actor.film_id'])}} as film_key,
first_name,
last_name
from {{ ref('actor')}} as actor
join {{ ref('film_actor')}} as film_actor
on film_actor.actor_id = actor.actor_id