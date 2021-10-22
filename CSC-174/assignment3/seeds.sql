USE assignment3;

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
		'Lifeguard, Ski Patrol, and Other Recreational Protective Service Worker', 'US'
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