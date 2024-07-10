select 
{{dbt_utils.generate_surrogate_key(['film.film_id'])}} as film_key,
--columns from film
film.title,
film.description,
film.release_year,
film.rental_duration,
film.rental_rate,
film.length,
film.special_features,
film.rating,
film.fulltext,
--column from category
category.name as category_name
from {{ref('film')}} as film
join {{ref('film_category')}} as film_category
on film.film_id = film_category.film_id
join {{ref('category')}} as category
on category.category_id = film_category.category_id