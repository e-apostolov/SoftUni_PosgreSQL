SELECT
	p.id,
	CONCAT(p.first_name, ' ', p.last_name) AS full_name,
	p.age,
	p.position,
	p.salary,
	s.pace,
	s.shooting
FROM
	players AS p
JOIN
	skills_data AS s
ON
	p.skills_data_id = s.id
WHERE
	p.team_id IS NULL
		AND
	position = 'A'
		AND
	(s.pace + s.shooting) > 130
