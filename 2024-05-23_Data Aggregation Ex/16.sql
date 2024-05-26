SELECT
	project_name,
	CASE
		WHEN start_date IS NULL AND end_date IS NULL then 'Ready for development'
		WHEN start_date IS NOT NULL AND end_date IS NULL then 'In Progress'
		ELSE 'Done'
	END
FROM projects
WHERE project_name LIKE '%Mountain%'