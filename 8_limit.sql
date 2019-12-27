SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';

SELECT title, author_fname FROM books WHERE author_fname LIKE '%da';

SELECT title, stock_quantity FROM books;

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';


SELECT title FROM books WHERE title LIKE '%%%';


SELECT title,released_year FROM books WHERE released_year>=2004 && released_year<=2015 ORDER BY released_year;

SELECT title,released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;

SELECT title,released_year FROM books WHERE released_year NOT BETWEEN 2000 AND 2015 ORDER BY released_year;

SELECT CAST('2019-05-02' AS DATETIME)

SELECT 
    title, 
    author_lname 
FROM books
WHERE author_lname='Carver' OR
      author_lname='Lahiri' OR
      author_lname='Smith';


SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT title, released_year FROM books
WHERE released_year NOT IN (2017, 1985) ORDER BY released_year;

SELECT title, released_year FROM books
WHERE released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016) ORDER BY released_year;


SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year %2 !=0 
ORDER BY released_year;

SELECT title, released_year,
       CASE 
         WHEN released_year >= 2000 THEN 'Modern Lit'
         ELSE '20th Century Lit'
       END AS GENRE
FROM books ;

SELECT title, stock_quantity,
CASE 
WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
WHEN stock_quantity BETWEEN 101 AND 200 THEN '***'
ELSE '****'
END AS GENRE
FROM books
ORDER BY stock_quantity;

SELECT 10!=10;

SELECT 15>14 && 99-5<=94;

SELECT 1 IN (5 , 3) || 9 BETWEEN 8 AND 10;

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year < 1980;



SELECT 
    title
FROM
    books
WHERE
    author_lname = 'Eggers' OR 'Chabon'


SELECT 
    title
FROM
    books
WHERE
    author_lname = 'Lahiri'
        AND released_year > 2000


SELECT title, pages
FROM books
WHERE pages BETWEEN 100 AND 200; 

SELECT title, author_lname
FROM books
WHERE author_lname LIKE 'C%' OR author_lname LIKE'S%'












