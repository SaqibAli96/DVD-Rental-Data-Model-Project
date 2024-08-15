INSERT INTO dimdate (date_key,date,year,quarter,month,week,day,is_weekend)
SELECT 
DISTINCT(TO_CHAR(payment_date :: DATE, 'yyyMMDD'):: INTEGER) as date_key,
date(payment_date) as date,
EXTRACT(YEAR FROM payment_date)    as year,
EXTRACT(quarter FROM payment_date) as quarter,
EXTRACT(month FROM payment_date)   as month,
EXTRACT(WEEK FROM payment_date)    as WEEK,
EXTRACT(day FROM payment_date)     as day,
CASE WHEN EXTRACT(ISODOW FROM payment_date) in (6,7) THEN true else false END AS is_weekend
FROM 
payment;
Select * from dimdate;
