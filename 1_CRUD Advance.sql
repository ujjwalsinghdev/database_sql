-- CREATE DATABASE
CREATE DATABASE shirts_db;

SHOW databases;

USE shirts_db;


CREATE TABLE shirts
(
shirt_id INT NOT NULL AUTO_INCREMENT,
article VARCHAR(100),
color VARCHAR(100),
shirt_size VARCHAR(100),
last_worn INT,
PRIMARY KEY(shirt_id)
);

INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

SELECT * FROM shirts;

INSERT INTO shirts(color,article,shirt_size,last_worn) VALUES('purple','polo shirt','M',50);

-- READING DATABASE

SELECT article,color FROM shirts;

SELECT * FROM shirts WHERE shirt_size='M';

SELECT article,color,shirt_size,last_worn FROM shirts WHERE shirt_size='M';

-- UPDATE DATABASE 

SELECT * FROM shirts WHERE article='polo shirt';

UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';

SELECT * FROM shirts;


SELECT * FROM shirts WHERE last_worn=15;

UPDATE shirts SET last_worn=0 WHERE last_worn=15;