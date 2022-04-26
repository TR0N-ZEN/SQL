A table is a list of homgenius data.  

<br><hr>

```SQL
CREATE TABLE <tablename> <...>;
ALTER TABLE <tablename> <...>; --adds or removes heads of the table an so of all of it's entries
DROP TABLE <tablename>; --delete table
TRUNCATE TABLE <tablename>; --clears the content of the table but keeps heading/top row

INSERT <...> INTO <table>;
SELECT <...> FROM <tables>;
UPDATE <table> SET <...> WHERE <...>
```
e.g.
```SQL
CREATE TABLE friends (name varchar(255),city varchar(255),Addrs varchar(255),Brthdt varchar(255),phone int);
CREATE TABLE colleagues (name varchar(255),Brthdt varchar(255),phone int,e-mail varchar(255));
DROP TABLE colleagues;
TRUNCATE TABLE friends; 
```
<br><hr>


## Create tables on the basis of information of another table.
```SQL
CREATE TABLE <tablename> AS SELECT <attributes> FROM <supertable>;
```
```SQL
CREATE TABLE childhoodfriends AS SELECT name, city, Addrs FROM friends;
CREATE TABLE primaryschoolfriends AS SELECT name, city, Addrs FROM friends;
CREATE TABLE highschoolfriends AS SELECT name, city, Addrs FROM friends;
CREATE TABLE univerityfriends AS SELECT name, city, Addrs FROM friends;
```


## Insert rows/entries/records into table.
```SQL
INSERT INTO <tablename> VALUES (<value1>, ... <valueN>);
INSERT INTO <tablename> (<attributeA>,...,<attributeP>,...,<attributeZ>) VALUES (<valueA>,...,<valueP>,...,<valueZ>);
```
```SQL
INSERT INTO friends VALUES ('Pauli', 'Hamburg', 'Am Achtermann 0', '12.01.200');
INSERT INTO friends (name, city, Brthdt) VALUES ('Paul Friedrig Kroener', 'Kiel', '12.3.69');
INSERT INTO friends (name, city, Brthdt) VALUES ('Erik Buchmann', 'Luebeck', '31.12.420');
INSERT INTO friends VALUES ('Markus White', 'Buxdehude');
INSERT INTO friends VALUES ('Paul Mountainman', 'Bielefeld');
INSERT INTO friends VALUES ('Christian', 'Bayreuth');
INSERT INTO friends VALUES ('Johannes', 'Dublin');
INSERT INTO friends VALUES ('Anselm', 'Buxdehude');
INSERT INTO friends VALUES ('Arvid', 'Großendorf');
INSERT INTO friends VALUES ('Lea', 'Buxdehude');
INSERT INTO friends VALUES ('Thomas', 'Bielefeld');
INSERT INTO friends VALUES ('Luzi', 'Leipzig');
```

## Print table information.
```SQL
SELECT <attribute1>,... FROM <table> <criteria>;
```
with _<criteria>_ := [ `ORDER BY` <{\<attribute> [`ASC`|`DESC`]}> ]
```SQL
SELECT <attributes> FROM <table> ORDER BY <attributeA>,... ASC;
SELECT <attributes> FROM <table> ORDER BY <attributeA>,... DESC;
SELECT <attributes> FROM <table> ORDER BY <attributeX> ASC, <attributeY> DESC; 
```
```SQL
SELECT name FROM friends;
SELECT name,city FROM friends;
SELECT name, city FROM <table> ORDER BY name ASC;
SELECT name, city FROM <table> ORDER BY name DESC;
SELECT name, city FROM <table> ORDER BY city, name; 
SELECT name, city FROM <table> ORDER BY city ASC, name DESC; 
```

## Filtering
filtering is done per row/entry/record
the result of a filter is always a set of row/entries/records

```SQL
SELECT <attribute>,... FROM <table> WHERE <boolExpression>;
```
with _\<boolExpression>_ := { `AND` | `OR` } { `NOT` } _\<boolExpression>_  
so
```SQL
SELECT <attributes> FROM <table> WHERE NOT <boolExpression>;
SELECT <attributes> FROM <table> WHERE <boolExpression> AND <boolExpression>;
SELECT <attributes> FROM <table> WHERE <boolExpression> OR <boolExpression>;
```
```SQL
SELECT name FROM friends WHERE city='Leipzig';
```

select distinct values only
```SQL
SELECT DISTINCT <attribute> FROM <table>;
```
```SQL
SELECT DISTINCT city FROM friends;
```

The `TOP` clause is used to specify the number of records to return
```SQL
SELECT TOP <number> FROM <table> WHERE <boolExpression>;
```

The `MIN` function returns the smallest value of the selected attribute.
The `MAX` function returns the largest value of the selected attribute.
```SQL
SELECT MIN(<attribute>) FROM <table> WHERE <boolExpression>;
SELECT MAX(<attribute>) FROM <table> WHERE <boolExpression>;
```

The `COUNT` function returns the number of rows that matches a specified criterion. Similarly do the `AVG` and `SUM`
```SQL
SELECT COUNT(<attribute>) FROM <table> WHERE <boolExpression>;
SELECT AVG(<attribute>) FROM <table> WHERE <boolExpression>;
SELECT SUM(<attribute>) FROM <table> WHERE <boolExpression>;
```

_boolExprs_ with wildcards
| Symbol | effect                                                                                      |
|--------|---------------------------------------------------------------------------------------------|
| %      | Represents zero or more characters   bl% finds bl, black, blue, and blob                    |
| _      | Represents a single character   h_t finds hot, hat, and hit                                 |
| []     | Represents any single character within the brackets   h[oa]t finds hot and hat, but not hit |
| ^      | Represents any character not in the brackets   h[^oa]t finds hit, but not hot and hat       |
| -      | Represents any single character within the specified range   c[a-b]t finds cat and cbt      |
```SQL
SELECT <attributes> FROM <table> WHERE <attribute> LIKE <regularExpression>;
```

```SQL
SELECT * FROM friends WHERE city LIKE 'am%';
SELECT * FROM friends WHERE city LIKE '%ü%';
```

options 
```SQL
SELECT <attributeA>,... FROM <table> WHERE <attribute> IN <s3t>;
SELECT <attributeA>,... FROM <table> WHERE <attribute> IN (value1, value2, ...);
SELECT * FROM friends WHERE city IN ('Bielefeld','Buxdehude');
```

## Change information in a table
information is changed per row/entry/record
```SQL
ALTER TABLE <tableName> ADD <columnName> <dataType>;
ALTER TABLE <tableName> ADD <columnName> SET (valueA,...);

UPDATE <tableName> SET <columnName>=<d4ta> WHERE <boolExpression>;
```
```SQL
ALTER TABLE friends ADD hadHolidaysIn INT;

UPDATE friends SET hadHolidaysIn=2019 WHERE name='Arvid';
UPDATE friends SET hadHolidaysIn=2020 WHERE name='Erik' OR name='Thomas' OR name='Markus' OR name='Christian' OR name='Daniel';
```

