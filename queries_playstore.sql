-- Comments in SQL Start with dash-dash --
-- Answers for Part 4 Google Play SQL DB
-- #1
SELECT app_name, id 
FROM analytics 
WHERE id = 1880;
-- #2
SELECT id, app_name 
FROM analytics 
WHERE last_updated = '2018-08-01';
-- #3
SELECT COUNT(app_name) 
FROM analytics 
GROUP BY category;
-- #4
SELECT app_name, reviews 
FROM analytics 
ORDER BY reviews 
DESC LIMIT 5;
-- #5
SELECT app_name, reviews, rating 
FROM analytics 
WHERE rating >= 4.8 
ORDER BY reviews DESC LIMIT 1;
-- #6
SELECT category, AVG(rating) 
FROM analytics 
GROUP BY category 
ORDER BY MAX(rating);
-- #7
SELECT app_name, rating, price 
FROM analytics 
WHERE rating > 4.8 
ORDER BY price DESC LIMIT 1;
-- #8
SELECT app_name FROM analytics 
WHERE min_installs <= 50 
AND rating > 0 
ORDER BY rating DESC;
-- #9
SELECT app_name FROM analytics 
WHERE rating < 3 
AND reviews >= 10000;
-- #10
SELECT app_name, reviews, price FROM analytics 
WHERE price BETWEEN 0.10 AND 1.00 
LIMIT 10; 
-- #11
SELECT app_name, MIN(last_updated) FROM analytics 
GROUP BY app_name 
ORDER BY MIN(last_updated) 
LIMIT 1;
-- #12
SELECT * FROM analytics 
ORDER BY price DESC 
LIMIT 1;
-- #13
SELECT SUM(reviews) AS total_reviews FROM analytics;
-- #14
SELECT category FROM analytics 
GROUP BY category 
HAVING COUNT(*) > 300;
-- #15
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics 
WHERE min_installs >= 100000 
ORDER BY proportion DESC 
LIMIT 1;
-- FS # 1
SELECT app_name, rating, category FROM analytics
WHERE (rating, category) in 
( SELECT MAX(rating), category FROM analytics 
WHERE min_installs >= 50000 
GROUP BY category) 
ORDER BY category DESC;
--  FS # 2
SELECT * FROM analytics WHERE app_name ILIKE '%facebook%';