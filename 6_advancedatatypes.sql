

CREATE database new_testing_db;

USE new_testing_db;

SELECT database();

CREATE TABLE dogs(name CHAR(5), breed VARCHAR(10));

INSERT INTO dogs (name,breed) VALUES ('bob','beagle');

INSERT INTO dogs (name,breed) VALUES ('roby','labrador');

INSERT INTO dogs (name,breed) VALUES ('Princess Jane','Retriever');

SELECT * FROM dogs;

CREATE TABLE items (price DECIMAL(5,2));

INSERT INTO items(price) VALUES(7);

INSERT INTO items(price) VALUES(27.22);

INSERT INTO items(price) VALUES(2712.23434342);



SELECT * FROM items;

CREATE TABLE things (price FLOAT);

INSERT INTO things(price) VALUES (88.45);

SELECT * FROM things;

INSERT INTO things(price) VALUES (884245345453.4434344554545);

CREATE database td;

USE td;

CREATE TABLE people(
name VARCHAR(100),
birthdate DATE,
birthtime TIME,
birthdt DATETIME
);

INSERT INTO people (name,birthdate,birthtime,birthdt)
VALUES ('Padma','1983-11-11','10:07:35','1983-11-11 10:07:35');

INSERT INTO people (name,birthdate,birthtime,birthdt)
VALUES ('Larry','1943-12-25','04:10:35','1983-11-11 04:10:35');

INSERT INTO people (name,birthdate,birthtime,birthdt)
VALUES ('Toaster','2017-04-21','19:12:43','2017-04-21 19:12:43');

SELECT * FROM people;

SELECT CURDATE();

SELECT CURTIME();

SELECT NOW();

INSERT INTO people(name,birthdate,birthtime,birthdt) VALUES
('Microwave', CURDATE(), CURTIME(), NOW());




DELETE FROM people WHERE name = 'Microwave';

SELECT name, DAYNAME(birthdate) FROM people;

SELECT name, DAYOFWEEK(birthdate) FROM people;

SELECT name,birthdate, DAYOFYEAR(birthdate) FROM people;

SELECT name,birthdate, MINUTE(birthdt) FROM people;

SELECT CONCAT (MONTHNAME(birthdate),'',DAY(birthdate),'', YEAR(birthdate))

SELECT DATE_FORMAT('2009-10-04 22:23:00',%W %M %Y);

SELECT DATE_FORMAT(birthdt,'was born on a %W') FROM people;

SELECT DATE_FORMAT(birthdt,'was born on a %m/%d/%y at %h:%m') FROM people;

SELECT * FROM people;

SELECT DATEDIFF(NOW(),birthdate) FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;

CREATE TABLE comments2 (
content VARCHAR(100),
created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP 
);

INSERT INTO comments2 (content) VALUES('I found list offensive');

SELECT * FROM comments2;

UPDATE comments2 SET content='THIS IS NOT GIBBERISH' WHERE content='I am gibesiri'











