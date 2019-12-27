CREATE database cats;

USE cats;

create table cats
(
cat_id INT NOT NULL auto_increment,
name VARCHAR(100),
breed VARCHAR(100),
age INT,
PRIMARY KEY (cat_id)
);

DESC cats;

INSERT INTO cats(name,breed,age)
VALUES ('Ringo','Tabby',4),
('Cindy','Maine Coon',10),
('Dumbledore','Maine Coon',11),
('Egg','Persian',4),
('Misty','Tabby',13),
('George Michael','Ragdoli',9),
('Jackson','Sphynx',7);

SELECT name FROM cats;
SELECT age FROM cats;
SELECT name,age FROM cats;

SELECT  breed,name,age FROM cats;

SELECT * FROM cats WHERE age=4;
SELECT * FROM cats WHERE name='egg';

SELECT cat_id FROM cats; 

SELECT name, breed FROM cats;

SELECT * FROM cats WHERE breed='tabby';

SELECT * FROM cats WHERE cat_id=age;

SELECT name AS cat_name FROM cats WHERE cat_id=age;


UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';

UPDATE cats SET age=14
WHERE name='Misty'

UPDATE cats SET name="Jack" WHERE name='Jackson';

UPDATE cats SET breed='British Shorthair' WHERE name="Ringo";

UPDATE cats SET age=12 WHERE breed='Maine Coon';

DELETE FROM cats WHERE age=4;
DELETE FROM cats WHERE age=cat_id;


SELECT * FROM cats;

DELETE FROM cats;



