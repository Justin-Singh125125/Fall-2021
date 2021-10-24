DELIMITER $$
CREATE FUNCTION No_of_painting_exhibited (exhibition_name VARCHAR(60))
RETURNS INT

BEGIN

	DECLARE no_of_paintings INT;
    
	SELECT COUNT(*) INTO no_of_paintings 
	FROM Shown_at AS at
	INNER JOIN Painting AS p ON at.art = p.id_no
	WHERE at.exhibition_name = exhibition_name;
            
    RETURN no_of_paintings;

END; $$
DELIMITER ;

SELECT e.ename, e.start_date, e.end_date, No_of_painting_exhibited('E1') as no_of_paintings
FROM Exhibition as e
WHERE ename = 'E1';