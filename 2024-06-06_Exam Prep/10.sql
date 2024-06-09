SELECT
	a.name,
	EXTRACT(YEAR FROM a.birthdate) AS birth_year,
	at.animal_type
FROM
	animals AS a
LEFT JOIN 
	owners AS o
ON
	o.id = a.owner_id
JOIN
	animal_types AS at
ON
	at.id = a.animal_type_id
WHERE
	o.id IS NULL
AND
	AGE('2022-01-01', a.birthdate) < '5 year'
AND 
	at.animal_type <> 'Birds'
ORDER BY
	a.name