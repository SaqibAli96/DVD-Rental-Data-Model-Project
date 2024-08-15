INSERT INTO dimmovie (movie_key,film_id,title,description,release_year,language,original_langiage,rental_duration,
					  length,ratings,special_features)

SELECT f.film_id as movie_key,
       f.film_id,
	   f.title,f.description,f.release_year,
	   l.name AS language,l.name as original_langiage,
	   f.rental_duration,f.length,f.rating AS ratings,f.special_features
FROM film f 
JOIN language as l on f.language_id=l.language_id;
SELECT * FROM dimmovie;