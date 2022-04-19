# Handle a database.
```
CREATE DATABASE <dataBaseName>;
CREATE DATABASE people;
BACKUP DATABASE <dataBaseName> TO DISK = <pathAsString\*.bak>;

BACKUP DATABASE people TO DISK = 'C:\databases\people.bak';
BACKUP DATABASE <dataBaseName> TO DISK = <pathAsString\*.bak> WITH DIFFERENTIAL;

DROP DATABASE <dataBaseName>;
DROP DATABASE people;
```

# Handle tables.
```
CREATE TABLE <table> (<attribute> <dataType>, ... );

CREATE TABLE friends (name varchar(255),city varchar(255),Addrs varchar(255),Brthdt varchar(255),phone int);
CREATE TABLE colleagues (name varchar(255),Brthdt varchar(255),phone int,e-mail varchar(255));
DROP TABLE colleagues; --delete table
TRUNCATE TABLE friends; --clears the content of the table but keeps heading/top row
```

## Create tables on the basis of information of another table.
```
CREATE TABLE <table> AS SELECT <attribute>, ... FROM <supertable>;

CREATE TABLE childhoodfriends AS SELECT name, city, Addrs FROM friends;
CREATE TABLE primaryschoolfriends AS SELECT name, city, Addrs FROM friends;
CREATE TABLE highschoolfriends AS SELECT name, city, Addrs FROM friends;
CREATE TABLE univerityfriends AS SELECT name, city, Addrs FROM friends;
```

## Insert rows/entries/records into table.
```
INSERT INTO <tableNname> VALUES (<value1>, ...);  
INSERT INTO <tableNname> (<attributeA>,...,<attributeP>,...,<attributeZ>) VALUES (<valueA>,...,<valueP>,...,<valueZ>);  

INSERT INTO friends VALUES ('Paul Fiebig', 'Leipzig', 'Viertelsweg 45', '14.08.2000');
INSERT INTO friends (name, city, Brthdt) VALUES ('Paul Friedrig Kröner', 'Leipzig', '21.12.2000');
INSERT INTO friends (name, city, Brthdt) VALUES ('Erik Buchmann', 'Leipzig', '30.01.2001');
INSERT INTO friends VALUES ('Markus Holzhause', 'Hamburg');
INSERT INTO friends VALUES ('Paul Bergmann', 'Hamburg');
INSERT INTO friends VALUES ('Christian', 'München');
-- INSERT INTO friends VALUES ('Johannes', 'Leipzig');
-- INSERT INTO friends VALUES ('Anselma', 'Leipzig');
-- INSERT INTO friends VALUES ('Arvid', 'Leipzig');
-- INSERT INTO friends VALUES ('Lea', 'Leipzig');
-- INSERT INTO friends VALUES ('Thomas', 'Dresden');
-- INSERT INTO friends VALUES ('Luzi', 'Dresden');
-- INSERT INTO friends VALUES ('Celia', 'Dresden');
-- INSERT INTO friends VALUES ('Nils', 'Dresden');
```

## Print table information.
```
SELECT <attribute1>,... FROM <table> <criteria>;
```
with _<criteria>_ := [ `ORDER BY` <{\<attribute> [`ASC`|`DESC`]}> ]
```
SELECT * FROM friends ORDER BY <attributeA>,... ASC;
SELECT * FROM friends ORDER BY <attributeA>,... DESC;
SELECT * FROM friends ORDER BY <attributeX> ASC, <attributeY> DESC; 
```
```
SELECT name FROM friends;
SELECT name,city FROM friends;
SELECT * FROM friends ORDER BY name ASC;
SELECT * FROM friends ORDER BY name DESC;
SELECT * FROM friends ORDER BY city, name; 
SELECT * FROM friends ORDER BY city ASC, name DESC; 
```

## Filtering
filtering is done per row/entry/record
the result of a filter is always a set of row/entries/records

```
SELECT <attribute>,... FROM <table> WHERE <boolExpression>;
```
with _\<boolExpression>_ := { `AND` | `OR` } { `NOT` } _\<boolExpression>_  
so
```
SELECT <attributeA>,... FROM <table> WHERE NOT <boolExpression>;
SELECT <attributeA>,... FROM <table> WHERE <boolExpression> AND <boolExpression>;
SELECT <attributeA>,... FROM <table> WHERE <boolExpression> OR <boolExpression>;
```
```
SELECT name FROM friends WHERE city='Leipzig';
```

select distinct values only
```
SELECT DISTINCT <attribute> FROM <table>;
SELECT DISTINCT city FROM friends;
```

The `TOP` clause is used to specify the number of records to return
```
SELECT TOP <number> FROM <table> WHERE <boolExpression>;
```

The `MIN` function returns the smallest value of the selected attribute.
The `MAX` function returns the largest value of the selected attribute.
```
SELECT MIN(<attribute>) FROM <table> WHERE <boolExpression>;
SELECT MAX(<attribute>) FROM <table> WHERE <boolExpression>;
```

The `COUNT` function returns the number of rows that matches a specified criterion. Similarly do the `AVG` and `SUM`
```
SELECT COUNT(<attribute>) FROM <table> WHERE <boolExpression>;
SELECT AVG(<attribute>) FROM <table> WHERE <boolExpression>;
SELECT SUM(<attribute>) FROM <table> WHERE <boolExpression>;
```

_boolExprs_ with wildcards
|Symbol|effect|
|-|-|
|%   |Represents zero or more characters   bl% finds bl, black, blue, and blob|
|_   |Represents a single character   h_t finds hot, hat, and hit|
|[]  |Represents any single character within the brackets   h[oa]t finds hot and hat, but not hit|
|^   |Represents any character not in the brackets   h[^oa]t finds hit, but not hot and hat|
|-   |Represents any single character within the specified range   c[a-b]t finds cat and cbt|
```
SELECT * FROM friends WHERE city LIKE 'am%';
SELECT * FROM friends WHERE city LIKE '%ü%';
```

options 
```
SELECT <attributeA>,... FROM <table> WHERE <attribute> IN <s3t>;
SELECT <attributeA>,... FROM <table> WHERE <attribute> IN (value1, value2, ...);
SELECT * FROM friends WHERE city IN ('Leipzig','Dresden');
```

## Change information in a table
information is changed per row/entry/record
```
ALTER TABLE <table> ADD <attribute> <dataType>;
ALTER TABLE <table> ADD <attribute> SET (valueA,...);

UPDATE <table> SET <attribute>=<value> WHERE <boolExpression>;

ALTER TABLE friends ADD hadHolidaysIn int;
ALTER TABLE friends ADD group SET ('Kiesdeich','IlfeldWC','KILA');
UPDATE friends SET group='KILA' WHERE city='Halle';
UPDATE friends SET hadHolidaysIn=2019 WHERE name='Arvid';
UPDATE friends SET hadHolidaysIn=2020 WHERE name='Erik' OR name='Thomas' OR name='Markus' OR name='Christian' OR name='Daniel';
```

