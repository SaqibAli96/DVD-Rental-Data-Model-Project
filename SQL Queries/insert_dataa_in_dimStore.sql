INSERT INTO dimstore (store_key,store_id,address,address2,district,city,country,postal_code,manager_firstname,
					  manager_lastname,start_date,end_date)
SELECT s.store_id as store_key,
	   s.store_id,
	   ad.address,ad.address2,ad.district,
	   ct.city,
	   cn.country,
	   ad.postal_code,
	   st.first_name as manager_first_name,
	   st.last_name as manager_last_name,
	   now () AS start_date,
	   now () AS end_date
FROM store s
JOIN staff st   on s.manager_staff_id=st.staff_id
JOIN address ad on s.address_id=ad.address_id
JOIN city ct    on ad.city_id=ct.city_id
JOIN country cn on ct.country_id=cn.country_id;
