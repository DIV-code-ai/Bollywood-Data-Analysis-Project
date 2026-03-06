CREATE DATABASE bollywood_autopsy;
USE bollywood_autopsy;

CREATE TABLE films(
film_id INT auto_increment PRIMARY KEY,
movie_name VARCHAR(150) NOT NULL,
release_period VARCHAR(50),
is_remake VARCHAR(10),
is_franchise VARCHAR(10),
genre VARCHAR(50),
new_actor VARCHAR(10),
new_director VARCHAR(10),
new_music_director VARCHAR(10),
lead_star VARCHAR(100),
director VARCHAR(100),
music_director VARCHAR(100),
screens INT,
revenue BIGINT,
budget BIGINT);
SELECT count(*) FROM films;

SELECT * FROM films
WHERE revenue IS NULL
OR budget IS NULL;

SELECT movie_name, revenue FROM films
ORDER BY revenue DESC
LIMIT 5;

Select movie_name, budget, revenue FROM films
WHERE revenue >= budget*2; 

SELECT is_remake , sum(revenue) AS total_revenue FROM films
GROUP BY is_remake;

SELECT movie_name, is_franchise , avg(revenue) AS avg_revenue FROM films
GROUP BY movie_name, is_franchise;

SELECT movie_name , screens FROM films
WHERE screens > 500
ORDER BY screens DESC;

SELECT movie_name, new_actor , avg(revenue) FROM films
GROUP BY movie_name, new_actor;

SELECT director, count(*) AS film_count FROM films
GROUP BY director 
HAVING count(*)>3;

SELECT movie_name, budget, revenue FROM films
WHERE revenue < budget;

SELECT movie_name, (revenue-budget) AS profit FROM films
ORDER BY profit DESC; 



