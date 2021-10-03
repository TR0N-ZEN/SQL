CREATE TABLE students (
	matrikelnummer INT,
	nme varchar(25),
	PRIMARY KEY (matrikelnummer)
);
INSERT INTO students (4864035, 'Theo Reichert');

CREATE TABLE domains (
	id INT,
	nme varchar(20),
	PRIMARY KEY (id)
);

INSERT INTO domain (1, 'Mathematik und Naturwissenschaften');
INSERT INTO domain (2, 'Geistes- und Sozialwissenschaften');
INSERT INTO domain (3, 'Ingenieurswissenschaften');
INSERT INTO domain (4, 'Bau und Umwelt');
INSERT INTO domain (5, 'Medizin');


CREATE TABLE faculties (
	id INT,
	nme varchar (50),
	domain_id INT,
	PRIMARY KEY (id, domain_id)
);

INSERT INTO faculties (1, 'Mathematik', 1);
INSERT INTO faculties (2, 'Physik', 1);
INSERT INTO faculties (3, 'Chemie und Lebensmittelchemie', 1);
INSERT INTO faculties (4, 'Biologie', 1);
INSERT INTO faculties (5, 'Psychologie', 1);
INSERT INTO faculties (1, 'Elektrotechnik und Informationstechnik', 3);
INSERT INTO faculties (2, 'Informatik', 3);
INSERT INTO faculties (3, 'Maschinenwesen', 3);

INSERT INTO faculties ();