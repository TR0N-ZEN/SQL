
---
```
CREATE TABLE <tableName> (<attribute> <dataType>, ... )
```
`<dataType>` is defined in the appendix of this file.  

---

```
CREATE TABLE <tableName> AS SELECT <attributeA>, ... <attributeZ> FROM <table>
```

---

A query to a table returns a table.  
`SELECT * FROM <table>` returns a table, actually the entire table `<table>`.  

One can reduce the information by row by naming the wanted column(s)/attribute(s) of each row/entry of the table:  
`SELECT <attribute1>, ... , <attributeN> FROM <table>`.  

One may wants to get a table not all row, only those matching a criteria expressed in a bool expression:  
`SELECT <attributes> FROM <table> WHERE <boolExpression>`  
with `<boolExpression>` := `<{AND|OR}> <{NOT}> <boolExpression>` | `<attribute> <{=|<|>}> <value>`.  

One may wants to get a table with distinct rows only:  
`SELECT DISTINCT * FROM <tableName>`  
If only one attribute of a row shall be returned then doubleing can be avoided with:  
`SELECT DISTINCT <attribute> FROM <tableName>`  

One may want only other certain results:  
`SELECT {MIN|MAX}(<attribute>) FROM <table>`  
`SELECT TOP <number> FROM <table>`  
`SELECT COUNT(<attributes>) FROM <table>`  
`SELECT AVG(<attribute>) FROM <table>`  
`SELECT SUM(<attribute>) FROM <table>`  


---
Create the cartesian product of multiple tables,  
when thinkin about a binary cartesian product this means  
each entry of one table is combined with each entry of the other table  
```
SELECT * FROM <tableA>, <tableB>  
```
Each further cartesian product can be thought of as a nested binary cartesian product:  
```
SELECT * FROM (...(SELECT * FROM (SELECT * FROM <tableA>, <tableB>), <tableC>)...) , <tableZ>  
```
is equivalent to:  
```
SELECT * FROM <tableA>, <tableB>, ... , <tableZ>  
```

---
---
## Appendix

where data types:  
+ string types
  + CHAR(\<size\>)
  + VARCHAR(\<size\>)
  + BINARY(\<size\>)
  + VARBINARY(\<size\>)
  + TINYBLOB
  + TINYTEXT
  + TEXT(\<size\>)
  + BLOB(\<size\>)
  + MEDIUMTEXT
  + MEDIUMBLOB
  + LONGTEXT
  + LONGBLOB
  + ENUM(val1, val2, val3, ...)
  + SET(val1, val2, val3, ...)
+ numeric data types
  + BIT(\<size\>)
  + TINYINT(\<size\>)
  + BOOL
  + BOOLEAN
  + SMALLINT(\<size\>)
  + MEDIUMINT(\<size\>)
  + INT(\<size\>)
  + INTEGER(\<size\>)
  + BIGINT(\<size\>)
  + FLOAT(\<size\>, d)
  + FLOAT(p)
  + DOUBLE(\<size\>, d)
  + DOUBLE PRECISION(\<size\>, d)
  + DECIMAL(\<size\>, d)
  + DEC(\<size\>, d)
+ date and time data types
  + DATE
  + DATETIME(_fsp_)
  + TIMESTAMP(_fsp_)
  + TIME(_fsp_)
  + YEAR


about datatypes: https://www.w3schools.com/sql/sql_datatypes.asp