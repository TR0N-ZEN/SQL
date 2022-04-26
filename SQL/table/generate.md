
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

One may wants to get a table not all rows, only those matching a criteria expressed in a bool expression:  
`SELECT <attributes> FROM <table> WHERE <boolExpression>`  
with `<boolExpression>` := `<{NOT|AND|OR}> <boolExpression>` | `<attribute> <{=|<|>}> <value>`.  
`NOT` should bind strongest, `AND` second strongest and `OR` weakest.  

One may wants to get a table with distinct rows only:  
`SELECT DISTINCT * FROM <tableName>`  
If a subset of a row, containing only the named `<attributes>` shall returned  
then doubleing can be avoided with:  
`SELECT DISTINCT <attributes> FROM <tableName>`  
>   e.g. there might exist people with the same forename and birthyear which still have different family names,  
    but assume you want to know the forenames given to new borns each year.  
    The query `SELECT forename, birthyear FROM people;`  
    this would return one an the same combination of a forename and a birthyear if a name was given to more than one child per birthyear.  
    To avoid that the query could be formulated as `SELECT DISTINCT forename, birthyear FROM people;`  
    funtionally speaking it is `DISTINCT(SELECT forename, birthyear FROM people)`, showing `DISTINCT` is applied last.  



One may want only other certain results:  
`SELECT <attributes> FROM <table> ORDER BY <attribute>`, where `<attribute>` appears in `<attributes>`  
`SELECT {MIN|MAX}(<attribute>) FROM <table>` $\Lrarr$ return the minimal or maximal value of values which are the attribute in each row of table.  
`SELECT TOP <number> FROM <table>`  


*"The `GROUP BY` statement groups rows that have the same values into summary rows", [w3schools](https://www.w3schools.com/sql/sql_groupby.asp)*.  
+ `SELECT <attributes1> FROM <table> GROUP BY <attributes2>`, where  
  + `<attributes1>` and `<attributes2>` contain the same attribtues but they may appear in different order.  
`SELECT <attributes1> COUNT(<attribute>) FROM <table> GROUP BY <attributes2>`  
`SELECT <attributes1> AVG(<attribute>) FROM <table> GROUP BY <attributes2>`  
`SELECT <attributes1> SUM(<attribute>) FROM <table> GROUP BY <attributes2>`  
, where:  
(`<attributes1>` may be emtpy, while `<attribute2>` isn't or `<attributes1>` and `<attributes2>` contain the same attribtues but they may appear in different order)  
and  
`<attribute>` appears in `<attribtues2>`.  
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


