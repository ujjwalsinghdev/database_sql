SELECT * FROM books;

SELECT COUNT(*) FROM books;

SELECT COUNT(author_fname) FROM books;

SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(DISTINCT author_lname) FROM books;

SELECT COUNT(DISTINCT author_fname,author_lname) FROM books;

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

SELECT title, author_lname FROM books;

SELECT author_fname,author_lname, COUNT(*) FROM books GROUP BY author_lname,author_fname;

SELECT released_year, COUNT(*) FROM books;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT MIN(released_year)
FROM books;

SELECT MAX(pages) FROM books;

SELECT MIN(pages) FROM books;

SELECT MIN(author_fname) FROM books;

SELECT max(pages) FROM books;

SELECT * FROM books WHERE pages=634;

SELECT min(pages) FROM books;

SELECT Sum(pages) FROM books;

SELECT author_lname, author_fname, Sum(pages) FROM books GROUP BY author_lname,author_fname;

SELECT author_lname, author_fname, Sum(pages) FROM books GROUP BY author_lname,author_fname;

SELECT AVG(released_year) FROM books;

SELECT AVG(pages) FROM books;

SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;

SELECT author_fname,author_lname, AVG(pages) FROM books GROUP BY author_lname,author_fname;

-- assignment  

SELECT COUNT(*) FROM books;

SELECT released_year,COUNT(*) FROM books GROUP BY released_year;

SELECT sum(stock_quantity) FROM books;

SELECT AVG(released_year) FROM books GROUP BY author_lname,author_fname;

SELECT  MAX(pages) ,author_fname FROM books;


