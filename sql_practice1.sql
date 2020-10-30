USE imdb;
SHOW TABLES;
DESCRIBE movies;

SELECT * FROM movies;

SELECT name,year FROM movies; 

SELECT rankscore,name FROM movies;

SELECT name,rankscore FROM movies LIMIT 20;

SELECT name,rankscore FROM movies LIMIT 20 OFFSET 40;

SELECT name,rankscore,year FROM movies ORDER BY year DESC LIMIT 10;

SELECT name,rankscore,year FROM movies ORDER BY year LIMIT 10;

SELECT DISTINCT genre FROM movies_genres;

SELECT DISTINCT first_name, last_name FROM directors;

SELECT name,year,rankscore FROM movies WHERE rankscore>9;

SELECT name,year,rankscore FROM movies WHERE rankscore>9 ORDER BY rankscore DESC LIMIT 20;

SELECT * FROM movies_genres WHERE genre = 'Comedy';

SELECT * FROM movies_genres WHERE genre <> 'Horror';

NULL => doesnot-exist/unknown/missing

SELECT name,year,rankscore FROM movies WHERE rankscore = NULL;

SELECT name,year,rankscore FROM movies WHERE rankscore IS NULL LIMIT 20;

SELECT name,year,rankscore FROM movies WHERE rankscore IS NOT NULL LIMIT 20;

SELECT name,year,rankscore FROM movies WHERE rankscore>9 AND year>2000;

SELECT name,year,rankscore FROM movies WHERE NOT year<=2000 LIMIT 20;

SELECT name,year,rankscore FROM movies WHERE rankscore>9 OR year>2007;

SELECT name,year,rankscore FROM movies WHERE year BETWEEN 1999 AND 2000;

SELECT name,year,rankscore FROM movies WHERE year BETWEEN 2000 AND 1999;

SELECT director_id, genre FROM directors_genres WHERE genre IN ('Comedy','Horror');

SELECT name,year,rankscore FROM movies WHERE name LIKE 'Tis%';

SELECT first_name, last_name FROM actors WHERE first_name LIKE '%es';

SELECT first_name, last_name FROM actors WHERE first_name LIKE '%es%';

SELECT first_name, last_name FROM actors WHERE first_name LIKE 'Agn_s';

SELECT first_name, last_name FROM actors WHERE first_name LIKE 'L%' AND first_name NOT LIKE 'Li%';

SELECT MIN(year) FROM movies;


SELECT MAX(year) FROM movies;

SELECT COUNT(*) FROM movies;

SELECT COUNT(*) FROM movies where year>2000;

SELECT COUNT(year) FROM movies;

SELECT year, COUNT(year) FROM movies GROUP BY year;

SELECT year, COUNT(year) FROM movies GROUP BY year ORDER BY year;


SELECT year, COUNT(year) year_count FROM movies GROUP BY year ORDER BY year_count;

SELECT year, COUNT(year) year_count FROM movies GROUP BY year HAVING year_count>1000;

SELECT name, year  FROM movies HAVING year>2000;

SELECT year, COUNT(year) year_count FROM movies WHERE rankscore>9 GROUP BY year HAVING year_count>20;

SELECT m.name, g.genre from movies m  JOIN movies_genres g ON m.id=g.movie_id LIMIT 20;
