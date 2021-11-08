!!! caution pure SQL syntax used in here

A database holds one ore more tables and each table has columns and rows.  
Rows are also considered records or entries.
A column holds an attribute/property.

+ # Handle a database.
	```SQL
	CREATE DATABASE <dataBaseName>;
	BACKUP DATABASE <dataBaseName> TO DISK = <pathAsString\*.bak>;
	BACKUP DATABASE <dataBaseName> TO DISK = <pathAsString\*.bak> WITH DIFFERENTIAL;
	DROP DATABASE <dataBaseName>;
	```

	+ ## Handle tables.
		```SQL
		CREATE TABLE <tableName> (<columnName> <dataType>, ... );
		DROP TABLE <tableName>; --delete table
		TRUNCATE TABLE <tableName>; --clears the content of the table but keeps heading/top row
		```

		+ ### Create tables on the basis of information of another table.
			```SQL
			CREATE TABLE <tableName> AS SELECT <columnName>, ... FROM <superTableName>;
			```

		+ ### Insert rows/entries/records into table.
			```SQL
			INSERT INTO <tableName> VALUES (<value1>, ...); 
			INSERT INTO <tableName> (<columnX>,...,<columnZ>,...,<columnY>) VALUES (<valueX>,...,<valueZ>,...,<valueY>);
			```

		+ ### Print table information.
			```SQL
			SELECT <column1>,... FROM <tableName> <criteria>;
			```
			with _\<criteria\>_ := [ `ORDER BY` {\<columnName\> [`ASC`|`DESC`]}* ]
			```SQL
			SELECT * FROM friends ORDER BY <columnA>,... ASC;
			SELECT * FROM friends ORDER BY <columnA>,... DESC;
			SELECT * FROM friends ORDER BY <columnX> ASC, <columnY> DESC; 
			```
		
		+ ### Filtering
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
			
			select distinct values only
			```SQL
			SELECT DISTINCT <columnName> FROM <tableName>;
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
			_boolExpressions_ with wildcards
			```SQL
			SELECT <columnA>, ... FROM <tableName> WHERE <column> LIKE 'am%';
			SELECT <columnA>, ... FROM <tableName> WHERE <column> LIKE '%ü%';
			```
			|Symbol|effect|
			|-|-|
			|% 	|Represents zero or more characters 	bl% finds bl, black, blue, and blob|
			|_ 	|Represents a single character 	h_t finds hot, hat, and hit|
			|[]	|Represents any single character within the brackets 	h[oa]t finds hot and hat, but not hit|
			|^ 	|Represents any character not in the brackets 	h[^oa]t finds hit, but not hot and hat|
			|- 	|Represents any single character within the specified range 	c[a-b]t finds cat and cbt|
			
			relation: element of
			```SQL
			SELECT <columnA>,... FROM <tableName> WHERE <columnName> IN <s3t>;
			SELECT <columnA>,... FROM <tableName> WHERE <columnName> IN (valueX, valueY, ...);
			```
		
		+ ### Change information in a table
			information is changed per row/entry/record
			```SQL
			ALTER TABLE <tableName> ADD <columnName> <dataType>;
			ALTER TABLE <tableName> ADD <columnName> SET (valueX,...);
			
			UPDATE <tableName> SET <columnName>=<d4ta> WHERE <boolExpression>
			```

---

datatypes:  
+ String Data Types
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
+ Numeric Data Types
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
+ Date and Time Data Types
	+ DATE
	+ DATETIME(_fsp_)
	+ TIMESTAMP(_fsp_)
	+ TIME(_fsp_)
	+ YEAR



aboutDatatypes: https://www.w3schools.com/sql/sql_datatypes.asp