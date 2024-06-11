CREATE OR REPLACE function fn_creator_with_board_games(
	board_creator VARCHAR(30)
)  RETURNS INT
AS
$$
	DECLARE
		result INT;
	BEGIN
		SELECT
			COUNT(*)
			INTO result
		FROM
			creators AS c
		JOIN
			creators_board_games AS cbg
		ON
			c.id = cbg.creator_id
		WHERE
			c.first_name = board_creator;
		RETURN result;
	END;
$$
LANGUAGE plpgsql
