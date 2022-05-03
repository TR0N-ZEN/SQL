
--DROP DATABASE test;
--CREATE DATABASE ;

-- connect to database DB

DROP TABLE chessBoard;
CREATE TABLE chessBoard (c VARCHAR(1), n INT);

INSERT INTO chessBoard VALUES ('A', 1);
INSERT INTO chessBoard VALUES ('B', 1);
INSERT INTO chessBoard VALUES ('C', 1);
INSERT INTO chessBoard VALUES ('D', 1);
INSERT INTO chessBoard VALUES ('E', 1);
INSERT INTO chessBoard VALUES ('F', 1);
INSERT INTO chessBoard VALUES ('G', 1);
INSERT INTO chessBoard VALUES ('H', 1);

INSERT INTO chessBoard VALUES ('A', 2);
INSERT INTO chessBoard VALUES ('B', 2);
INSERT INTO chessBoard VALUES ('C', 2);
INSERT INTO chessBoard VALUES ('D', 2);
INSERT INTO chessBoard VALUES ('E', 2);
INSERT INTO chessBoard VALUES ('F', 2);
INSERT INTO chessBoard VALUES ('G', 2);
INSERT INTO chessBoard VALUES ('H', 2);

INSERT INTO chessBoard VALUES ('A', 3);
INSERT INTO chessBoard VALUES ('B', 3);
INSERT INTO chessBoard VALUES ('C', 3);
INSERT INTO chessBoard VALUES ('D', 3);
INSERT INTO chessBoard VALUES ('E', 3);
INSERT INTO chessBoard VALUES ('F', 3);
INSERT INTO chessBoard VALUES ('G', 3);
INSERT INTO chessBoard VALUES ('H', 3);

INSERT INTO chessBoard VALUES ('A', 4);
INSERT INTO chessBoard VALUES ('B', 4);
INSERT INTO chessBoard VALUES ('C', 4);
INSERT INTO chessBoard VALUES ('D', 4);
INSERT INTO chessBoard VALUES ('E', 4);
INSERT INTO chessBoard VALUES ('F', 4);
INSERT INTO chessBoard VALUES ('G', 4);
INSERT INTO chessBoard VALUES ('H', 4);

INSERT INTO chessBoard VALUES ('A', 5);
INSERT INTO chessBoard VALUES ('B', 5);
INSERT INTO chessBoard VALUES ('C', 5);
INSERT INTO chessBoard VALUES ('D', 5);
INSERT INTO chessBoard VALUES ('E', 5);
INSERT INTO chessBoard VALUES ('F', 5);
INSERT INTO chessBoard VALUES ('G', 5);
INSERT INTO chessBoard VALUES ('H', 5);

INSERT INTO chessBoard VALUES ('A', 6);
INSERT INTO chessBoard VALUES ('B', 6);
INSERT INTO chessBoard VALUES ('C', 6);
INSERT INTO chessBoard VALUES ('D', 6);
INSERT INTO chessBoard VALUES ('E', 6);
INSERT INTO chessBoard VALUES ('F', 6);
INSERT INTO chessBoard VALUES ('G', 6);
INSERT INTO chessBoard VALUES ('H', 6);

INSERT INTO chessBoard VALUES ('A', 7);
INSERT INTO chessBoard VALUES ('B', 7);
INSERT INTO chessBoard VALUES ('C', 7);
INSERT INTO chessBoard VALUES ('D', 7);
INSERT INTO chessBoard VALUES ('E', 7);
INSERT INTO chessBoard VALUES ('F', 7);
INSERT INTO chessBoard VALUES ('G', 7);
INSERT INTO chessBoard VALUES ('H', 7);

INSERT INTO chessBoard VALUES ('A', 8);
INSERT INTO chessBoard VALUES ('B', 8);
INSERT INTO chessBoard VALUES ('C', 8);
INSERT INTO chessBoard VALUES ('D', 8);
INSERT INTO chessBoard VALUES ('E', 8);
INSERT INTO chessBoard VALUES ('F', 8);
INSERT INTO chessBoard VALUES ('G', 8);
INSERT INTO chessBoard VALUES ('H', 8);

SELECT * FROM T;
SELECT c, n FROM T;
SELECT DISTINCT c, n FROM T;
SELECT c FROM chessBoard GROUP BY c;
SELECT c, n FROM chessBoard GROUP BY t.n, t.c;