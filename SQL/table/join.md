Joins are based on the cartesian product of tables.  

`<attributes>` may be from the attributes inside `<tables1>` and `<tables2>`.  
`[OUTER]` and `[INNER]` in this case means, that it is dependent on the database management system if `OUTER` or inner `INNER` is part of the syntax.  

+ `SELECT <attributes> FROM <tables1> [INNER] JOIN <tables2> ON <boolExpression>`
  + if `<boolExpression>` evaluates to true, the selected attributes of the element in the cartesian product of `<tables1>` and `<tables2>` are returned.  
  + if `<boolExpression>` evaluates to false, no element in the cartesian product of `<tables1>` and `<tables2>` are returned.  
+ `SELECT <attributes> FROM <tables1> LEFT  [OUTER] JOIN <tables2> ON <boolExpression>`  
  + if `<boolExpression>` evaluates to false, the selected attributes from `<tables1>` are returned for each entry inside `<tables1>` with empty or null values for attributes from `<tables2>`.  
  + if `<boolExpression>` evaluates to true, the selected attributes of the element in the cartesian product of`<tables1>` and `<tables2>` are returned.  
+ `SELECT <attributes> FROM <tables1> RIGHT [OUTER] JOIN <tables2> ON <boolExpression>`  
  + if `<boolExpression>` evaluates to false, the selected attributes from `<tables2>` are returned for each entry inside `<tables2>` with empty or null values for attributes from `<tables1>`.  
  + if `<boolExpression>` evaluates to true, the selected attributes of the element in the cartesian product of`<tables1>` and `<tables2>` are returned.  
+ `SELECT <attributes> FROM <tables1> FULL  [OUTER] JOIN <tables2> ON <boolExpression>`  
  + if `<boolExpression>` evaluates to true for one pair of entries, the selected attributes of of each element of the cartesian product of`<tables1>` and `<tables2>` are returned.  
