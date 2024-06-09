SELECT 
	v.name,
	v.phone_number,
	TRIM(SUBSTRING(address FROM POSITION(',' IN address) + 1))
FROM 
	volunteers AS v
JOIN
	volunteers_departments AS vd
ON
	vd.id = v.department_id
WHERE 
	vd.department_name = 'Education program assistant'
AND
	v.address LIKE '%Sofia%'
ORDER BY
	v.name