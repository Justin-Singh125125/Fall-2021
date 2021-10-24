USE assignment3;


SET GLOBAL log_bin_trust_function_creators = 1;

DROP PROCEDURE IF EXISTS EXHIBITION_PAINTING_ARTIST;
DROP FUNCTION IF EXISTS No_of_painting_exhibited;
DROP VIEW IF EXISTS artist_no_of_sculpture;
DROP VIEW IF EXISTS Others_view;
DROP VIEW IF EXISTS Painting_view;
DROP VIEW IF EXISTS Sculpture_view;
DROP TABLE IF EXISTS Shown_at;
DROP TABLE IF EXISTS Others;
DROP TABLE IF EXISTS Sculpture;
DROP TABLE IF EXISTS Painting;
DROP TABLE IF EXISTS Art_object;
DROP TABLE IF EXISTS Artist;
DROP TABLE IF EXISTS Exhibition;


CREATE TABLE Artist(
	aname VARCHAR(60),
    date_born DATE,
    date_died Date,
    description VARCHAR(1000),
    country_of_origin VARCHAR(60),
    PRIMARY KEY(aname)
);

CREATE TABLE Art_object(
	id_no VARCHAR(60), 
	year VARCHAR(60),
    title VARCHAR(60),
    description VARCHAR(1000),
    PRIMARY KEY(id_no),
    artist_name VARCHAR(60),
    CONSTRAINT artist_name_foreign_key FOREIGN KEY (artist_name) REFERENCES Artist(aname)
);

CREATE TABLE Others(
	id_no VARCHAR(60),
    type VARCHAR(60),
    style VARCHAR(60),
    PRIMARY KEY(id_no),
    CONSTRAINT artist_object_others_foreign_key FOREIGN KEY (id_no) REFERENCES Art_object(id_no)
);

CREATE TABLE Painting(
	id_no VARCHAR(60),
    type VARCHAR(60),
    style VARCHAR(60),
    drawn_on VARCHAR(60),
    PRIMARY KEY(id_no),
    CONSTRAINT artist_object_painting_foreign_key FOREIGN KEY (id_no) REFERENCES Art_object(id_no)
);

CREATE TABLE Sculpture(
	id_no VARCHAR(60),
    material VARCHAR(60),
    weight VARCHAR(60),
    height VARCHAR(60),
    PRIMARY KEY(id_no),
    CONSTRAINT artist_object_sculpture_foreign_key FOREIGN KEY (id_no) REFERENCES Art_object(id_no)
);

CREATE TABLE Exhibition(
	ename VARCHAR(60),
	start_date DATE,
    end_date Date,
    PRIMARY KEY(ename)
);

CREATE TABLE Shown_at(
	art VARCHAR(60),
    exhibition_name VARCHAR(60),
    PRIMARY KEY(art, exhibition_name),
    CONSTRAINT art_object_foreign_key FOREIGN KEY (art) REFERENCES Art_object(id_no),
    CONSTRAINT exhibition_foreign_key FOREIGN KEY (exhibition_name) REFERENCES Exhibition(ename)
);

Create view Others_view as
	Select a.id_no, a.year, a.title, a.description, o.type, o.style, a.artist_name
	From Art_object a, Others o
	Where a.id_no = o.id_no;

Create view Painting_view as
	Select a.id_no, a.year, a.title, a.description, p.type, p.style, p.drawn_on, a.artist_name
	From Art_object a, Painting p
	Where a.id_no=p.id_no;

Create view Sculpture_view as
	Select a.id_no, a.year, a.title, a.description, s.material, s.weight, s.height, a.artist_name
	From Art_object a, Sculpture s
	Where a.id_no = s.id_no;



-- SECTION 3
CREATE VIEW artist_no_of_sculpture as
	SELECT ao.artist_name, COUNT(*) as no_of_sculpture
	FROM Art_Object as ao, Sculpture as s
	WHERE ao.id_no = s.id_no
	GROUP BY ao.artist_name
	HAVING no_of_sculpture > 2;
    
INSERT INTO 
	Artist(
		aname,date_born,
		date_died,
		description,
		country_of_origin
    ) 
    VALUES (
		'Enrique T Dupree', 
		curdate(), 
		curdate(), 
		'Lifeguard, Ski Patrol, and Other Recreational Protective Service Worker', 
        'US'
    );
    

    INSERT INTO 
	Artist(
		aname,date_born,
		date_died,
		description,
		country_of_origin
    ) 
    VALUES (
		'Timothy A Delacruz', 
		curdate(), 
		curdate(), 
		'Troublemaker. Future teen idol. Gamer. Explorer. Entrepreneur. Food lover.', 
        'US'
    );    
    
INSERT INTO Art_object(
	id_no,
    year,
    title,
    description,
    artist_name
) 
VALUES (
	'1',
    '2020',
    'Starling Sizzle',
    'Sizzles at fist glance',
    'Enrique T Dupree'
);

INSERT INTO Sculpture(
	id_no,
    material,
    weight,
    height
) 
VALUES (
	'1',
    'marble',
    '2000',
    '100'
);

INSERT INTO Art_object(
	id_no,
    year,
    title,
    description,
    artist_name
) 
VALUES (
	'2',
    '2021',
    'Glizzy Globbler',
    'Globels and glizzels',
    'Enrique T Dupree'
);

INSERT INTO Sculpture(
	id_no,
    material,
    weight,
    height
) 
VALUES (
	'2',
    'wood',
    '1000',
    '40'
);


INSERT INTO Art_object(
	id_no,
    year,
    title,
    description,
    artist_name
) 
VALUES (
	'3',
    '2021',
    'Tower of Glizzle',
    'A tower full of glizzle',
    'Enrique T Dupree'
);

INSERT INTO Sculpture(
	id_no,
    material,
    weight,
    height
) 
VALUES (
	'3',
    'wood',
    '1000',
    '500'
);


INSERT INTO Art_object(
	id_no,
    year,
    title,
    description,
    artist_name
) 
VALUES (
	'4',
    '2021',
    'Random test 1',
    'Random test 1',
    'Timothy A Delacruz'
);

INSERT INTO Sculpture(
	id_no,
    material,
    weight,
    height
) 
VALUES (
	'4',
    'wood',
    '1000',
    '500'
);


SELECT * from artist_no_of_sculpture;


-- SECTION 4 
INSERT INTO Art_object(
	id_no,
    year,
    title,
    description,
    artist_name
) 
VALUES (
	'5',
    '2022',
    'Sick Tower',
    'A tower full of sick',
    'Enrique T Dupree'
);


INSERT INTO Painting(
	id_no,
    type,
    style,
    drawn_on
) 
VALUES (
	'5',
    'colored',
    'sick style',
    'paper'
);

INSERT INTO Art_object(
	id_no,
    year,
    title,
    description,
    artist_name
) 
VALUES (
	'6',
    '2022',
    '6 Tower',
    'A tower full of sick',
    'Enrique T Dupree'
);


INSERT INTO Painting(
	id_no,
    type,
    style,
    drawn_on
) 
VALUES (
	'6',
    'colored',
    '6 style',
    'paper'
);

INSERT INTO Exhibition(
	ename,
    start_date,
    end_date
) 
VALUES (
	'E1',
    curdate(),
    curdate()
);

INSERT INTO Exhibition(
	ename,
    start_date,
    end_date
) 
VALUES (
	'E2',
    curdate(),
    curdate()
);

INSERT INTO Shown_at(
	art,
    exhibition_name
) 
VALUES (
	5,
	'E1'
);

INSERT INTO Shown_at(
	art,
    exhibition_name
) 
VALUES (
	6,
	'E1'
);

INSERT INTO Shown_at(
	art,
    exhibition_name
) 
VALUES (
	3,
	'E1'
);

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

SELECT e.ename, e.start_date, e.end_date,No_of_painting_exhibited('E1') as no_of_paintings
FROM Exhibition as e
WHERE ename = 'E1';


-- section 5

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


CALL print_data('Enrique T Dupree', 'E1');






