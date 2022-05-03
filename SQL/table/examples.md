A table is a list of homgenius data.  

<br><hr>

```SQL
CREATE TABLE <tablename> <...>;
ALTER TABLE <tablename> <...>; --adds or removes heads of the table an so of all of it's entries
DROP TABLE <tablename>; --delete table
TRUNCATE TABLE <tablename>; --clears the content of the table but keeps heading/top row

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


## Change a table
information is changed per row/entry/record
```SQL
ALTER TABLE <tableName> ADD <columnName> <dataType>;
ALTER TABLE <tableName> ADD <columnName> SET (valueA,...);

```
```SQL
ALTER TABLE friends ADD hadHolidaysIn INT;
```

