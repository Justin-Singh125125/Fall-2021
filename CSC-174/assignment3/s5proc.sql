delimiter $$
CREATE PROCEDURE EXHIBITION_PAINTING_ARTIST (IN artist_name VARCHAR(60), IN exhibition_name VARCHAR(60))
   BEGIN
        
	SELECT ao.artist_name, ao.description, p.style, e.ename, e.start_date
	FROM Shown_at AS sa
	INNER JOIN Exhibition as e ON e.ename = sa.exhibition_name
	INNER JOIN Painting as p ON p.id_no= sa.art
	INNER JOIN Art_object as ao ON ao.id_no= sa.art
	WHERE e.ename = exhibition_name AND ao.artist_name = artist_name;
        
   END $$
delimiter ; 


CALL EXHIBITION_PAINTING_ARTIST('Enrique T Dupree', 'E1');