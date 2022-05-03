Create a table via
+ `CREATE TABLE <tableName> (<attribute> <dataType>, ... )`
  `<dataType>` is defined in the appendix of this file.  
+ `CREATE TABLE <tableName> AS <selectStatement>`
  <!-- `CREATE TABLE <tableName> AS SELECT <attributeA>, ... <attributeZ> FROM <table>` -->
  Read more about `<selectStatement>` in [selecting tuples](./tuple/select.md).  


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


