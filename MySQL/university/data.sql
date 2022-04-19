


-- domains
INSERT INTO domains VALUES (1, 'Mathematik und Naturwissenschaften');
INSERT INTO domains VALUES (2, 'Geistes- und Sozialwissenschaften');
INSERT INTO domains VALUES (3, 'Ingenieurswissenschaften');
INSERT INTO domains VALUES (4, 'Bau und Umwelt');
INSERT INTO domains VALUES (5, 'Medizin');

SELECT * FROM domains;

-- faculties
INSERT INTO faculties VALUES (1, 'Mathematik', 1);
INSERT INTO faculties VALUES (2, 'Physik', 1);
INSERT INTO faculties VALUES (3, 'Chemie und Lebensmittelchemie', 1);
INSERT INTO faculties VALUES (4, 'Biologie', 1);
INSERT INTO faculties VALUES (5, 'Psychologie', 1);
INSERT INTO faculties VALUES (1, 'Elektrotechnik und Informationstechnik', 3);
INSERT INTO faculties VALUES (2, 'Informatik', 3);
INSERT INTO faculties VALUES (3, 'Maschinenwesen', 3);

SELECT * FROM faculties;


INSERT INTO chairs VALUES ();

-- modules
INSERT INTO modules VALUES ('INF-B-270','Formale Systeme', '');
INSERT INTO modules VALUES ('INF-B-330','Rechenrarchitektur','');
INSERT INTO modules VALUES ('INF-B-390','Technische Grundlagen und Hardwarepraktikum','');
INSERT INTO modules VALUES ('INF-B-120','Mathematische Methoden für Informatiker','');
INSERT INTO modules VALUES ('INF-B-260','Informations- und Kodierungstheorie','');
INSERT INTO modules VALUES ('INF-B-240','Programmierung','');
INSERT INTO modules VALUES ('INF-B-110','Einführung in die Mathematik für Informatiker','');
INSERT INTO modules VALUES ('INF-B-210','Algorithmen  und  Datenstrukturen','');
INSERT INTO modules VALUES ('INF-B-310','Softwaretechnologie','');
INSERT INTO modules VALUES ('INF-B-410','Einführung in die Medieninformatik','');
INSERT INTO modules VALUES ('INF-B-230','Einführungspraktikum RoboLab','');
INSERT INTO modules VALUES ('INF-B-320','Softwaretechnologie-Projekt','');
INSERT INTO modules VALUES ('INF-B-370 ','Datenbanken und Rechnernetze','');
INSERT INTO modules VALUES ('INF-B-380','Betriebssysteme und Sicherheit','');
INSERT INTO modules VALUES ('INF-B-290','Theoretische Informatik und Logik','');
INSERT INTO modules VALUES ('INF-B-3B0','Intelligent Systeme','');
INSERT INTO modules VALUES ('INF-B-3A0','Systemorientierte Informatik/Hardware Software-Codesign','');
INSERT INTO modules VALUES ('INF-B-420','Einführung in die Computergraphik','');
INSERT INTO modules VALUES ('INF-B-510','Vertiefung in der Informatik','');
INSERT INTO modules VALUES ('INF-B-520','Spezialisierung in der Informatik','');
INSERT INTO modules VALUES ('INF-B-610','Überfachliche Qualifikationen zur Informatik','');

SELECT * FROM modules;

INSERT INTO students VALUES (1234567, 'Theo Reichert');
--INSERT INTO students VALUES (, 'Theo Reichert');



/*
INSERT INTO current_modules VALUES ('INF-B-270');
INSERT INTO current_modules VALUES ('INF-B-330');
INSERT INTO current_modules VALUES ('INF-B-390');
INSERT INTO current_modules VALUES ('INF-B-120');
INSERT INTO current_modules VALUES ('INF-B-260');
INSERT INTO current_modules VALUES ('INF-B-240');



INSERT INTO finished_modules VALUES ('INF-B-110');
INSERT INTO finished_modules VALUES ('INF-B-210');
INSERT INTO finished_modules VALUES ('INF-B-310');
INSERT INTO finished_modules VALUES ('INF-B-410');


INSERT INTO upcoming_modules VALUES ('INF-B-230');
INSERT INTO upcoming_modules VALUES ('INF-B-320');
INSERT INTO upcoming_modules VALUES ('INF-B-370');
INSERT INTO upcoming_modules VALUES ('INF-B-380');
INSERT INTO upcoming_modules VALUES ('INF-B-290');
INSERT INTO upcoming_modules VALUES ('INF-B-3B0');
INSERT INTO upcoming_modules VALUES ('INF-B-3A0');
INSERT INTO upcoming_modules VALUES ('INF-B-420');
INSERT INTO upcoming_modules VALUES ('INF-B-510');
INSERT INTO upcoming_modules VALUES ('INF-B-520');
INSERT INTO upcoming_modules VALUES ('INF-B-610');
*/