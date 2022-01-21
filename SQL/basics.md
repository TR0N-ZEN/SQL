# Handle a database.
```SQL
CREATE DATABASE <dataBaseName>;
CREATE DATABASE people;

BACKUP DATABASE <dataBaseName> TO DISK = <pathAsString\*.bak>;
BACKUP DATABASE <dataBaseName> TO DISK = <pathAsString\*.bak> WITH DIFFERENTIAL;
BACKUP DATABASE people TO DISK = 'C:\databases\people.bak';

DROP DATABASE <dataBaseName>;
DROP DATABASE people;
```

# Handle tables.
```SQL
CREATE TABLE <tableName> (<columnName> <dataType>, ... );
CREATE TABLE friends (Nme varchar(255),Cty varchar(255),Addrs varchar(255),Brthdt varchar(255),phone int);
CREATE TABLE colleagues (Nme varchar(255),Brthdt varchar(255),phone int,e-mail varchar(255));
DROP TABLE colleagues; --delete table
TRUNCATE TABLE friends; --clears the content of the table but keeps heading/top row
```

## Create tables on the basis of information of another table.
```SQL
CREATE TABLE <tableName> AS SELECT <columnName>, ... FROM <superTableName>;

CREATE TABLE childhoodfriends AS SELECT Nme, Cty, Addrs FROM friends;
CREATE TABLE primaryschoolfriends AS SELECT Nme, Cty, Addrs FROM friends;
CREATE TABLE highschoolfriends AS SELECT Nme, Cty, Addrs FROM friends;
CREATE TABLE univerityfriends AS SELECT Nme, Cty, Addrs FROM friends;
```

## Insert rows/entries/records into table.
```SQL
INSERT INTO <tableNname> VALUES (<value1>, ...); 
INSERT INTO <tableNname> (<columnA>,...,<columnP>,...,<columnZ>) VALUES (<valueA>,...,<valueP>,...,<valueZ>);
 
INSERT INTO friends VALUES ('Paul Fiebig', 'Leipzig', 'Viertelsweg 45', '14.08.2000'); 
INSERT INTO friends (Nme, Cty, Brthdt) VALUES ('Paul Friedrig Kröner', 'Leipzig', '21.12.2000');
INSERT INTO friends (Nme, Cty, Brthdt) VALUES ('Erik Buchmann', 'Leipzig', '30.01.2001');
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
```SQL
SELECT <column1>,... FROM <tableName> <criteria>;
```
with _<criteria>_ := <[ `ORDER BY` <{\<columnName> <[`ASC`|`DESC`]>}> ]>
```SQL
SELECT * FROM friends ORDER BY <columnA>,... ASC;
SELECT * FROM friends ORDER BY <columnA>,... DESC;
SELECT * FROM friends ORDER BY <columnX> ASC, <columnY> DESC; 
```
```SQL
SELECT Nme FROM friends;
SELECT Nme,Cty FROM friends;
SELECT * FROM friends ORDER BY Nme ASC;
SELECT * FROM friends ORDER BY Nme DESC;
SELECT * FROM friends ORDER BY Cty, Nme; 
SELECT * FROM friends ORDER BY Cty ASC, Nme DESC; 
```

## Filtering
filtering is done per row/entry/record
the result of a filter is always a set of row/entries/records

```SQL
SELECT <columnName>,... FROM <tableName> WHERE <boolExpression>;
```
with _\<boolExpression>_ := <{`NOT`}><{`AND`|`OR`}>_\<boolExpression>_  
so
```SQL
SELECT <columnA>,... FROM <tableName> WHERE NOT <boolExpression>;
SELECT <columnA>,... FROM <tableName> WHERE <boolExpression> AND <boolExpression>;
SELECT <columnA>,... FROM <tableName> WHERE <boolExpression> OR <boolExpression>;
```
```SQL
SELECT Nme FROM friends WHERE Cty='Leipzig';
```

select distinct values only
```SQL
SELECT DISTINCT <columnName> FROM <tableName>;
SELECT DISTINCT Cty FROM friends;
```

The `TOP` clause is used to specify the number of records to return
```SQL
SELECT TOP <numb3r> FROM <tableName> WHERE <boolExpression>;
```

The `MIN` function returns the smallest value of the selected column.
The `MAX` function returns the largest value of the selected column.
```SQL
SELECT MIN(<columnName>) FROM <tableName> WHERE <boolExpression>;
SELECT MAX(<columnName>) FROM <tableName> WHERE <boolExpression>;
```

The `COUNT` function returns the number of rows that matches a specified criterion. Similarly do the `AVG` and `SUM`
```SQL
SELECT COUNT(<columnName>) FROM <tableName> WHERE <boolExpression>;
SELECT AVG(<columnName>) FROM <tableName> WHERE <boolExpression>;
SELECT SUM(<columnName>) FROM <tableName> WHERE <boolExpression>;
```

_boolExprs_ with wildcards
|Symbol|effect|
|-|-|
|% 	|Represents zero or more characters 	bl% finds bl, black, blue, and blob|
|_ 	|Represents a single character 	h_t finds hot, hat, and hit|
|[]	|Represents any single character within the brackets 	h[oa]t finds hot and hat, but not hit|
|^ 	|Represents any character not in the brackets 	h[^oa]t finds hit, but not hot and hat|
|- 	|Represents any single character within the specified range 	c[a-b]t finds cat and cbt|
```SQL
SELECT * FROM friends WHERE Cty LIKE 'am%';
SELECT * FROM friends WHERE Cty LIKE '%ü%';
```

options 
```SQL
SELECT <columnA>,... FROM <tableName> WHERE <columnName> IN <s3t>;
SELECT <columnA>,... FROM <tableName> WHERE <columnName> IN (value1, value2, ...);
SELECT * FROM friends WHERE Cty IN ('Leipzig','Dresden');
```

## Change information in a table
information is changed per row/entry/record
```SQL
ALTER TABLE <tableName> ADD <columnName> <dataType>;
ALTER TABLE <tableName> ADD <columnName> SET (valueA,...);

UPDATE <tableName> SET <columnName>=<d4ta> WHERE <boolExpression>;

ALTER TABLE friends ADD hadHolidaysIn int;
ALTER TABLE friends ADD group SET ('Kiesdeich','IlfeldWC','KILA');
UPDATE friends SET group='KILA' WHERE Cty='Halle';
UPDATE friends SET hadHolidaysIn=2019 WHERE Nme='Arvid';
UPDATE friends SET hadHolidaysIn=2020 WHERE Nme='Erik' OR Nme='Thomas' OR Nme='Markus' OR Nme='Christian' OR Nme='Daniel';
```

