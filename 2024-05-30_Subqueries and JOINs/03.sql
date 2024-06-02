SELECT
	e.employee_id,
	TRIM(CONCAT(e.first_name, ' ', e.last_name)) as full_name,
	ep.project_id as project_id,
	p.name
FROM
	employees as e
		JOIN employees_projects as ep
			USING (employee_id)
				JOIN projects as p
					USING (project_id)
WHERE ep.project_id = 1