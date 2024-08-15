INSERT INTO dimcustomer (customer_key,customer_id,first_name,last_name,email,address,address2,district,city,
						 country,postal_code,phone,active,create_date,start_date,end_date)
SELECT cu.customer_id as customer_key,
	   cu.customer_id,
	   cu.first_name,
	   cu.last_name,
	   cu.email,
	   ad.address,ad.address2,ad.district,
	   ct.city,
	   cn.country,
	   ad.postal_code,ad.phone,
	   cu.active,cu.create_date,
	   now() AS start_date,
	   now () AS end_date
FROM customer cu
JOIN address ad on cu.address_id=ad.address_id
JOIN city ct on ad.city_id=ct.city_id
JOIN country cn on ct.country_id=cn.country_id;


