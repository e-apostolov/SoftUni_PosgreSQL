DELETE FROM 
	players
WHERE
	hire_date < '2013-12-13 07:18:46';

DELETE FROM
	players_coaches
WHERE
	player_id IN (
		SELECT
			p.id
		FROM
			players AS p
		JOIN
			players_coaches AS pc
		ON
			p.id = pc.player_id
		WHERE
			p.hire_date < '2013-12-13 07:18:46'
		
	);