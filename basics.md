# Handle a database.
```SQL
CREATE DATABASE people;
BACKUP DATABASE people TO DISK = 'C:\databases\people.bak';
BACKUP DATABASE people TO DISK = 'C:\databases\peopleD.bak' WITH DIFFERENTIAL;
DROP DATABASE people;
```

# Handle tables.
```SQL
CREATE TABLE friends (Nme varchar(255),Cty varchar(255),Addrs varchar(255),Brthdt varchar(255),phone int);
CREATE TABLE colleagues (Nme varchar(255),Brthdt varchar(255),phone int,e-mail varchar(255));
DROP TABLE colleagues;
TRUNCATE TABLE friends;
```

## Create tables on the basis of information of another table.
```SQL
CREATE TABLE childhoodfriends AS SELECT Nme, Cty, Addrs FROM friends;
CREATE TABLE primaryschoolfriends AS SELECT Nme, Cty, Addrs FROM friends;
CREATE TABLE highschoolfriends AS SELECT Nme, Cty, Addrs FROM friends;
CREATE TABLE univerityfriends AS SELECT Nme, Cty, Addrs FROM friends;
```

## Insert rows / entries / records into table.
```SQL
INSERT INTO friends VALUES ('Paul Fiebig', 'Leipzig', 'Viertelsweg 45', '14.08.2000'); 
INSERT INTO friends (Nme, Cty, Brthdt) VALUES ('Paul Friedrig Kröner', 'Leipzig', '21.12.2000');
INSERT INTO friends (Nme, Cty, Brthdt) VALUES ('Erik Buchmann', 'Leipzig', '30.01.2001');
INSERT INTO friends VALUES ('Markus Holzhause', 'Hamburg');
INSERT INTO friends VALUES ('Paul Bergmann', 'Hamburg');
INSERT INTO friends VALUES ('Christian', 'München');
INSERT INTO friends VALUES ('Johannes', 'Leipzig');
INSERT INTO friends VALUES ('Anselma', 'Leipzig');
INSERT INTO friends VALUES ('Arvid', 'Leipzig');
INSERT INTO friends VALUES ('Lea', 'Leipzig');
INSERT INTO friends VALUES ('Thomas', 'Dresden');
INSERT INTO friends VALUES ('Luzi', 'Dresden');
INSERT INTO friends VALUES ('Celia', 'Dresden');
INSERT INTO friends VALUES ('Nils', 'Dresden');
```

## Print table information.
```SQL
SELECT Nme FROM friends;
SELECT Cty FROM friends;
SELECT * FROM friends ORDER BY Nme ASC;
SELECT * FROM friends ORDER BY Nme DESC;
SELECT * FROM friends ORDER BY Cty, Nme; 
SELECT * FROM friends ORDER BY Cty ASC, Nme DESC; 
```

## Filtering
```SQL
SELECT DISTINCT Cty FROM friends;
SELECT Nme FROM friends WHERE Cty='Leipzig';
SELECT Nme FROM friends WHERE NOT Cty='Leipzig';
SELECT Nme FROM friends WHERE NOT Cty='Leipzig' AND NOT (Nme LIKE '%A');
SELECT Nme FROM friends WHERE NOT( Cty='Leipzig' OR (Nme LIKE '%A%'));
--SELECT Nme FROM friends WHERE CustomerID BETWEEN 1 AND 5;
SELECT * FROM friends WHERE Cty LIKE 'am%';
SELECT * FROM friends WHERE Cty LIKE '%ü%';
SELECT * FROM friends WHERE Cty IN ('Leipzig','Dresden');
```

## Change information in a table
```SQL
ALTER TABLE friends ADD hadHolidaysIn int;
ALTER TABLE friends ADD group SET ('Kiesdeich','IlfeldWC','KILA');

UPDATE friends SET group='KILA' WHERE Cty='Halle'
UPDATE friends SET hadHolidaysIn=2019 WHERE Nme='Arvid'
UPDATE friends SET hadHolidaysIn=2020 WHERE Nme='Erik' OR Nme='Thomas' OR Nme='Markus' OR Nme='Christian' OR Nme='Daniel' 
```