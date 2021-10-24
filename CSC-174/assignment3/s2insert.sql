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