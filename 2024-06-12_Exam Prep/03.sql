UPDATE 
	coaches
SET 
	salary = salary * coach_level
WHERE
	first_name LIKE 'C%'
		AND
	id IN (
		SELECT
			c.id
		FROM
			coaches AS c
		JOIN 
			players_coaches as pc
		ON
			c.id = pc.coach_id
		GROUP BY
			c.id
		HAVING
			COUNT(pc.player_id) > 1
	);
