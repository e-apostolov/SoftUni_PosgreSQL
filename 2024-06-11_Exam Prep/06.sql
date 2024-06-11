SELECT
	bg.id AS id,
	bg.name AS name,
	bg.release_year AS release_year,
	cat.name AS category_name
FROM
	board_games AS bg
JOIN
	categories AS cat
ON
	bg.category_id = cat.id
WHERE
	cat.name IN ('Strategy Games', 'Wargames')
ORDER BY
	release_year DESC
