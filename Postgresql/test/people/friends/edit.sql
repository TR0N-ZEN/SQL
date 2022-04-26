INSERT INTO friends VALUES ('Paul Fiebig', 'Leipzig', 'Viertelsweg 45', '14.08.2000');
--INSERT INTO friends (Nme, Cty, Addrs, Brthdt) VALUES ('Paul Fiebig', 'Leipzig', 'Viertelsweg 45', '14.08.2000')
INSERT INTO friends (Nme, Cty, Brthdt) VALUES ('Paul Friedrig Kröner', 'Leipzig', '21.12.2000');
INSERT INTO friends (Nme, Cty, Brthdt) VALUES ('Erik Buchmann', 'Leipzig', '30.01.2001');
INSERT INTO friends (Nme, Cty) VALUES ('Markus Holzhause', 'Hamburg');
INSERT INTO friends (Nme, Cty) VALUES ('Paul Bergmann', 'Hamburg');
INSERT INTO friends (Nme, Cty) VALUES ('Christian', 'München');
INSERT INTO friends (Nme, Cty) VALUES ('Johannes', 'Leipzig');
INSERT INTO friends (Nme, Cty) VALUES ('Anselma', 'Leipzig');
INSERT INTO friends (Nme, Cty) VALUES ('Arvid', 'Leipzig');
INSERT INTO friends (Nme, Cty) VALUES ('Lea', 'Leipzig');
INSERT INTO friends (Nme, Cty) VALUES ('Thomas', 'Dresden');
INSERT INTO friends (Nme, Cty) VALUES ('Luzi', 'Dresden');
INSERT INTO friends (Nme, Cty) VALUES ('Celia', 'Dresden');
INSERT INTO friends (Nme, Cty) VALUES ('Nils', 'Dresden');





ALTER TABLE friends ADD group SET ('Kiesdeich','IlfeldWC','KILA'); -- adds a attribute to the table friends
ALTER TABLE friends ADD hadHolidaysIn int;

UPDATE friends SET group='KILA' WHERE Cty='Halle' -- changes an attribute of each entry inside friends if that entry meets the boolean expression after WHERE
UPDATE friends SET hadHolidaysIn=2019 WHERE Nme='Arvid'
UPDATE friends SET hadHolidaysIn=2020 WHERE Nme='Erik' OR Nme='Thomas' OR Nme='Markus' OR Nme='Christian' OR Nme='Daniel'; 
