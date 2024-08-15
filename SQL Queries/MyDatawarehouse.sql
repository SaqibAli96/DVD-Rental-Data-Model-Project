select p.payment_id,p.rental_id,amount,r.inventory_id,i.film_id from payment as p
JOIN rental r on p.rental_id=r.rental_id
JOIN inventory i on i.inventory_id=r.inventory_id;