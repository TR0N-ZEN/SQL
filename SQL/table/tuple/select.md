### Print table information.
```SQL
SELECT [TOP <number>] [[DISTINCT]<attributes>|<aggregation>] FROM <tables> [WHERE <boolExpression>] [ORDER BY <attribute> [`ASC`|`DESC`]];
```

Selecting from more than one table causes the 
creation of the cartesian product of the tables.    
When thinkin about a binary cartesian product this means  
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

A query to a table returns a table.  
`SELECT * FROM <tables>` returns a table, actually the entire table `<tables>`.  

One can reduce the information by row by naming the wanted column(s)/attribute(s) of each row/entry of the table:  
`SELECT <attribute1>, ... , <attributeN> FROM <tables>`.  

---



select distinct values only
```SQL
SELECT DISTINCT <attribute> FROM <tables>;
```

One may wants to get a table with distinct rows only:  
`SELECT DISTINCT * FROM <tables>`  
If a subset of a row, containing only the named `<attributes>` shall returned  
then doubleing can be avoided with:  
`SELECT DISTINCT <attributes> FROM <tables>`  
>   e.g. there might exist people with the same forename and birthyear which still have different family names,  
    but assume you want to know the forenames given to new borns each year.  
    The query `SELECT forename, birthyear FROM people;`  
    this would return one an the same combination of a forename and a birthyear if a name was given to more than one child per birthyear.  
    To avoid that the query could be formulated as `SELECT DISTINCT forename, birthyear FROM people;`  
    funtionally speaking it is `DISTINCT(SELECT forename, birthyear FROM people)`, showing `DISTINCT` is applied last.  


---

One may wants the results to be orderd by a metrix/measur (not sure about terminology) defined:  
`SELECT <attributes> FROM <tables> ORDER BY {<attribute> [ASC|DESC]}*`, where `<attribute>` appears in `<attributes>`  

```SQL
SELECT <attributes> FROM <tables> ORDER BY <attributeA>,... ASC;
SELECT <attributes> FROM <tables> ORDER BY <attributeA>,... DESC;
SELECT <attributes> FROM <tables> ORDER BY <attributeX> ASC, <attributeY> DESC; 
```

---

The `TOP` clause is used to specify the number of records to return
```SQL
SELECT TOP <numb3r> FROM <tables> WHERE <boolExpression>;
```
`SELECT TOP <number> FROM <tables>`  

---

`SELECT {MIN|MAX}(<attribute>) FROM <tables>` $\Lrarr$ return the minimal or maximal value of values which are the attribute in each row of table.  
```SQL
SELECT MIN(<attribute>) FROM <tables>
SELECT MAX(<attribute>) FROM <tables>
```

Does a command like `SELECT MIN(<attribute1>), <attribute2> FROM <tables>` work???

---

The `COUNT` function returns the number of rows that matches a specified criterion. Similarly do the `AVG` and `SUM`.  
```SQL
SELECT COUNT(<attribute>) FROM <tables>;
SELECT AVG(<attribute>) FROM <tables>;
SELECT SUM(<attribute>) FROM <tables>;
```

---
---


One may wants to get a table not all rows, only those matching a criteria expressed in a bool expression:  
`SELECT <attributes> FROM <tables> WHERE <boolExpression>`  
with `<boolExpression>` := `{NOT|AND|OR} <boolExpression> | <attribute> {=|<|>} <value> | <attribute> IN <set> | <attribute> LIKE <regularExpression>`.  
`NOT` should bind strongest, `AND` second strongest and `OR` weakest and
`<regularExpression>` is any combination of alphanumeric characters with special symbols listed below in the table.  

|Symbol|effect                                                                                      |
|-     |-                                                                                           |
|%     |Represents zero or more characters   bl% finds bl, black, blue, and blob                    |
|_     |Represents a single character   h_t finds hot, hat, and hit                                 |
|[]    |Represents any single character within the brackets   h[oa]t finds hot and hat, but not hit |
|^     |Represents any character not in the brackets   h[^oa]t finds hit, but not hot and hat       |
|-     |Represents any single character within the specified range   c[a-b]t finds cat and cbt      |

<!-- 
```SQL
SELECT <attributes> FROM <tables> WHERE NOT <boolExpression>;
SELECT <attributes> FROM <tables> WHERE <boolExpression> AND <boolExpression>;
SELECT <attributes> FROM <tables> WHERE <boolExpression> OR <boolExpression>;
SELECT <attributes> FROM <tables> WHERE <attribute> < <value>;
SELECT <attributes> FROM <tables> WHERE <attribute> = <value>;
SELECT <attributes> FROM <tables> WHERE <attribute> > <value>;
SELECT <attributes> FROM <tables> WHERE <attribute> IN <set>;
SELECT <attributes> FROM <tables> WHERE <attribute> LIKE <regularExpression>;

```
```SQL
SELECT <attributeA>, ... FROM <tables> WHERE <attribute> LIKE 'am%';
SELECT <attributeA>, ... FROM <tables> WHERE <attribute> LIKE '%ü%';
``` -->

<!-- relation: element of
```SQL
SELECT <attributeA>,... FROM <tables> WHERE <attribute> IN <s3t>;
SELECT <attributeA>,... FROM <tables> WHERE <attribute> IN (valueX, valueY, ...);
``` -->

---
---


### Grouping

*"The `GROUP BY` statement groups rows that have the same values into summary rows", [w3schools](https://www.w3schools.com/sql/sql_groupby.asp)*.  
+ `SELECT <attributes1> FROM <tables> GROUP BY <attributes2>`, where  
  + `<attributes1>` and `<attributes2>` contain the same attribtues but they may appear in different order.  
`SELECT <attributes1> COUNT(<attribute>) FROM <tables> GROUP BY <attributes2>`  
`SELECT <attributes1> AVG(<attribute>) FROM <tables> GROUP BY <attributes2>`  
`SELECT <attributes1> SUM(<attribute>) FROM <tables> GROUP BY <attributes2>`  
, where:  
(`<attributes1>` may be emtpy, while `<attribute2>` isn't or `<attributes1>` and `<attributes2>` contain the same attribtues but they may appear in different order)  
and  
`<attribute>` appears in `<attribtues2>`.  

```SQL
SELECT <attributes>
FROM <tables>
GROUP BY <attributes2>;
```

```SQL
SELECT <attributes>, COUNT(<attribute>)
FROM <tables>
GROUP BY <attributes2>;
```

```SQL
SELECT <attributes>
FROM <tables>
GROUP BY <attributes>
ORDER BY <attributes2>;
```

---


