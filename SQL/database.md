Each server can hold zero or more databases.  
Each database can hold zero or more tables.  

<br>
<br><hr>

```SQL
CREATE DATABASE <dataBaseName>;
```
e.g.
```SQL
CREATE DATABASE people;
```
<br><hr>

```
BACKUP DATABASE <dataBaseName> TO DISK = <pathAsString\*.bak>;
BACKUP DATABASE <dataBaseName> TO DISK = <pathAsString\*.bak> WITH DIFFERENTIAL;
```
e.g.
```
BACKUP DATABASE people TO DISK = 'C:\databases\people.bak';
```
<br><hr>

```
DROP DATABASE <dataBaseName>;
```
e.g.
```
DROP DATABASE people;
```
<br><hr>
