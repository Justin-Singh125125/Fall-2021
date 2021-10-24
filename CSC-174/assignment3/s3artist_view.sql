CREATE VIEW artist_no_of_sculpture as
	SELECT ao.artist_name, COUNT(*) as no_of_sculpture
	FROM Art_object as ao, Sculpture as s
	WHERE ao.id_no = s.id_no
	GROUP BY ao.artist_name
	HAVING no_of_sculpture > 2;
    
SELECT * from artist_no_of_sculpture;