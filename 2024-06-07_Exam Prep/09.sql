SELECT
	a.name,
	CASE
		WHEN EXTRACT(HOUR FROM co.start) BETWEEN 6 AND 20 THEN 'Day'
		ELSE 'Night'
	END AS day_time,
	co.bill,
	cl.full_name,
	ca.make,
	ca.model,
	cat.name
FROM
	courses AS co
JOIN
	addresses AS a
ON
	co.from_address_id = a.id
JOIN
	cars AS ca
ON
	co.car_id = ca.id
JOIN
	clients AS cl
ON
	co.client_id = cl.id
JOIN
	categories AS cat
ON 
	ca.category_id = cat.id
ORDER BY
	co.id
