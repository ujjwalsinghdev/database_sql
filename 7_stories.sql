
SELECT title FROM books WHERE title LIKE '%stories%';

SELECT title,pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

SELECT CONCAT(title,'-',released_year) AS summary FROM books ORDER BY  released_year DESC LIMIT 3;

SELECT title,author_lname FROM books WHERE author_lname LIKE '% %';

SELECT title,stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;

SELECT title,author_lname FROM books ORDER BY author_lname,title;

SELECT title
    CONCAT(
'MY FAVOURITE AUTHOR IS',
author_fname,
'',
author_lname,
'!',

) AS yell
FROM books;


