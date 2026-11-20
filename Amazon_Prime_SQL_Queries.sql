
-- 1. Content Type Distribution
SELECT type, COUNT(*) AS total_titles
FROM amazon_titles
GROUP BY type;

-- 2. Top 10 Genre Categories
SELECT listed_in, COUNT(*) AS total_titles
FROM amazon_titles
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;

-- 3. Top 10 Release Years
SELECT release_year, COUNT(*) AS total_titles
FROM amazon_titles
GROUP BY release_year
ORDER BY total_titles DESC
LIMIT 10;

-- 4. Top 10 Countries
SELECT country, COUNT(*) AS total_titles
FROM amazon_titles
WHERE country != 'Unknown'
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- 5. Content Rating Distribution
SELECT rating, COUNT(*) AS total_titles
FROM amazon_titles
GROUP BY rating
ORDER BY total_titles DESC
LIMIT 10;
