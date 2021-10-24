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

