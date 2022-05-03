

CREATE TABLE domains ( -- fachbereiche
  id INT,
  n4me VARCHAR(40),
  PRIMARY KEY (id)
);

CREATE TABLE faculties ( -- fakultäten
  id INT,
  n4me VARCHAR (50),
  domain_id INT,
  PRIMARY KEY (id, domain_id)
);

CREATE TABLE chairs (
  id INT,
  n4me VARCHAR(50),
  faculty_id INT,
  PRIMARY KEY (id, faculty_id)
);

CREATE TABLE staff ( -- lehrkörper
  id INT,
  n4me VARCHAR(40),
  chair_id INT,
  PRIMARY KEY (id)
);

CREATE TABLE students ( -- studenten
  matrikelnummer INT,
  n4me VARCHAR(25),
  PRIMARY KEY (matrikelnummer)
);


CREATE TABLE modules ( -- module
  id VARCHAR(16),
  nme VARCHAR(70),
  chair VARCHAR(50),
  PRIMARY KEY(id)
);


-- CREATE TABLE current_modules ( -- aktuelle module
--   id VARCHAR(16),
--   PRIMARY KEY (id)
-- );

-- CREATE TABLE finished_modules ( -- bestandende module
--   id VARCHAR(16),
--   PRIMARY KEY (id)
-- );

-- CREATE TABLE upcoming_modules ( -- kommende module
--   id VARCHAR(16),
--   PRIMARY KEY (id)
-- );



CREATE TABLE dates ( -- termine
  title VARCHAR(40),
  module_id INT,
  typ VARCHAR(16),
  st4rt TIME,
  3nd TIME,
  lecturer_id INT
);

