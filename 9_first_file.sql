CREATE DATABASE book_shop;
USE book_shop; 

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier &amp; Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

DESC books;

SELECT * FROM books;

SELECT author_fname, author_lname FROM books;
-- CONCAT
SELECT
CONCAT(author_fname,' ',author_lname) AS full_name
FROM books;

SELECT author_fname AS first, author_lname AS last, 
CONCAT(author_fname,' ',author_lname) AS full
FROM books;

-- SUBSTRING FUNCTIONS

SELECT SUBSTRING('Hello World',-3)

SELECT SUBSTRING("Where I'm Calling from:Selected Stories",1,10);

SELECT SUBSTRING(title,1,10) FROM books;

SELECT CONCAT(SUBSTRING(title,1,10),'...') FROM books;


-- REPLACE

SELECT REPLACE('Hello World','l','3');
SELECT REPLACE('Coffee Cheese Milk Soup ',' ','_');

SELECT REPLACE(title,'e','3') FROM books;

-- REVERSE

SELECT REVERSE("Refer");

-- CHARLENGTH

SELECT CHAR_LENGTH('Hello World');


INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
           
SELECT title FROM books;

SELECT DISTINCT released_year FROM books;

SELECT DISTINCT author_fname,author_lname FROM books;

SELECT DISTINCT author_lname FROM books;


-- LOGICAL OPERATORS

SELECT title, released_year FROM books WHERE released_year != 2017;

SELECT title, author_lname FROM books WHERE author_lname != 'Harris';

SELECT title FROM books WHERE title LIKE 'W%';

SELECT title FROM books WHERE title NOT LIKE 'W%';


SELECT * FROM books WHERE released_year >= 2000 ORDER BY released_year;

SELECT 99>567;

SELECT 100>5;

SELECT -15>15;

SELECT 9>-10;

SELECT 1>1;

SELECT 'a'>'b';

SELECT 'A'>'a';

SELECT * FROM books WHERE released_year < 2000 ORDER BY released_year;

SELECT title,released_year FROM books ORDER BY released_year<2000;

SELECT 3<-10;

SELECT -10<-9;

SELECT 42<=42; 

SELECT 'h'< 'p';

SELECT 'Q'<= 'q';

SELECT * FROM books WHERE author_lname = 'Eggers' AND released_year>2010;

SELECT 1<5 AND 7=9;

SELECT -10>-20 AND 0<=0;

SELECT -40 <=0 AND 10>40;

SELECT 54<=54 AND 'a' = 'A';

SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Eggers' ||
released_year > 2010 ORDER BY released_year;

SELECT 40 <= 100 || -2 > 0;

SELECT 10 > 5 || 5 = 5;

SELECT 'a' = 5 || 3000 > 2000;

