
## INSERT - "save rows/entries/records into table"

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

---

## UPDATE - "change existing rows/entries/records inside a table"
```SQL
UPDATE friends SET hadHolidaysIn=2019 WHERE name='Arvid';
UPDATE friends SET hadHolidaysIn=2020 WHERE name='Erik' OR name='Thomas' OR name='Markus' OR name='Christian' OR name='Daniel';
```

---

## SELECT - "print tuples inside of a table"

```SQL
SELECT name FROM friends;
SELECT name,city FROM friends;
SELECT name, city FROM <table> ORDER BY name ASC;
SELECT name, city FROM <table> ORDER BY name DESC;
SELECT name, city FROM <table> ORDER BY city, name; 
SELECT name, city FROM <table> ORDER BY city ASC, name DESC; 
```

```SQL
SELECT name FROM friends WHERE city='Leipzig';
```

```SQL
SELECT DISTINCT city FROM friends;
```

```SQL
SELECT TOP 3 FROM friends WHERE city='Leipzig';
```


```SQL
SELECT MIN(<attribute>) FROM <table> WHERE <boolExpression>;
SELECT MAX(<attribute>) FROM <table> WHERE <boolExpression>;
```

```SQL
SELECT COUNT(<attribute>) FROM <table> WHERE <boolExpression>;
SELECT AVG(<attribute>) FROM <table> WHERE <boolExpression>;
SELECT SUM(<attribute>) FROM <table> WHERE <boolExpression>;
```


```SQL
SELECT * FROM friends WHERE city LIKE 'am%';
SELECT * FROM friends WHERE city LIKE '%ü%';
```

options 
```SQL

SELECT * FROM friends WHERE city IN ('Bielefeld','Buxdehude');
```


---

Combination of `DISTINCT`, `TOP` what will happen. Is there a shorter expression for `select top 2 from (select distinct city from friends)`,  
maybe `select top 2 distinct city from friends`?  