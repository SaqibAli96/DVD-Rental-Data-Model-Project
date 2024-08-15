INSERT INTO factsales (date_key,customer_key,movie_key,store_key,sales_amount)
SELECT
	  DISTINCT(TO_CHAR(p.payment_date :: DATE,'yyyMMDD'):: INTEGER) as date_key,
	  p.customer_id as customer_key,
	  i.film_id as movie_key,
	  i.store_id as store_key,
	  p.amount as sales_amount
FROM payment p 
JOIN rental r on p.rental_id=r.rental_id
JOIN inventory i on r.inventory_id=i.inventory_id;
select * from factsales limit 10;
	  