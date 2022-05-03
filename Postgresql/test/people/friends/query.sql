SELECT Nme FROM friends;
SELECT Cty FROM friends;
SELECT DISTINCT Cty FROM friends;
SELECT Nme FROM friends WHERE Cty='Leipzig';
SELECT Nme FROM friends WHERE NOT Cty='Leipzig';
SELECT Nme FROM friends WHERE NOT Cty='Leipzig' AND NOT (Nme LIKE '%A'); -- NOT binds strongest, AND second strongest and OR binds weakest  
SELECT Nme FROM friends WHERE NOT( Cty='Leipzig' OR (Nme LIKE '%A%'));
--SELECT Nme FROM friends WHERE CustomerID BETWEEN 1 AND 5;


SELECT * FROM friends WHERE Cty LIKE 'am%';
SELECT * FROM friends WHERE Cty LIKE '%ü%';
SELECT nme, cty FROM friends WHERE Cty IN ('Leipzig','Dresden') ORDER BY nme;
SELECT nme, cty FROM friends WHERE Cty IN ('Leipzig','Dresden') GROUP BY nme; -- throws error, because nme doesn't appear after GROUP BY
SELECT nme, cty FROM friends WHERE Cty IN ('Leipzig','Dresden') GROUP BY cty; -- throws error, because cty doesn't appear after GROUP BY
SELECT nme, cty FROM friends WHERE Cty IN ('Leipzig','Dresden') GROUP BY nme, cty;
SELECT COUNT(cty) FROM friends WHERE Cty IN ('Leipzig','Dresden') GROUP BY cty;
SELECT cty, COUNT(cty) FROM friends WHERE Cty IN ('Leipzig','Dresden') GROUP BY cty;

SELECT * FROM friends ORDER BY Nme ASC;
SELECT * FROM friends ORDER BY Nme DESC;

SELECT * FROM friends ORDER BY Cty, Nme; 
SELECT * FROM friends ORDER BY Cty ASC, Nme DESC; 