--CREATING NETFLIX TABLE 

CREATE TABLE netflix
(
    show_id      VARCHAR(7),
    type         VARCHAR(10),
    title        VARCHAR(150),
    director     VARCHAR(250),
    casts        VARCHAR(1050),
    country      VARCHAR(150),
    date_added   VARCHAR(55),
    release_year INT,
    rating       VARCHAR(15),
    duration     VARCHAR(15),
    listed_in    VARCHAR(100),
    description  VARCHAR(250)
);

--IMPORT DATA


SELECT * FROM netflix;

SELECT 
	COUNT(*) AS total_content
	FROM netflix;

SELECT 
	DISTINCT  type
FROM netflix;

SELECT *
FROM netflix
WHERE show_id IS NULL
   OR type IS NULL
   OR title IS NULL
   OR director IS NULL
   OR casts IS NULL
   OR country IS NULL
   OR date_added IS NULL
   OR release_year IS NULL
   OR rating IS NULL
   OR duration IS NULL
   OR listed_in IS NULL
   OR description IS NULL;

--total no. of rows having null value is 1000

-- ============================================================
--"Netflix Data ANALYSIS  – SQL Query Challenges".
-- ============================================================

SELECT * FROM netflix;

-- 1. Count the Number of Movies vs TV Shows
-- Objective: Determine the distribution of content types on Netflix.

SELECT 
	type,
	COUNT(show_id) as total_count_show
FROM netflix
GROUP BY 1;

-- 2. Find the Most Common Rating for Movies and TV Shows
-- Objective: Identify the most frequently occurring rating for each type of content.

SELECT
	type,
	rating
FROM
(
	SELECT 
		type,
		rating,
		COUNT(*),
		RANK() OVER(PARTITION BY TYPE ORDER BY COUNT(*) DESC) as ranking
	FROM netflix
	GROUP BY 1,2
                                --ORDER BY 1,3 DESC ;
) as g1 
where 
	ranking = 1;

-- 3. List All Movies Released in a Specific Year (e.g., 2020)
-- Objective: Retrieve all movies released in a specific year.

SELECT 	
	*
FROM netflix
where release_year ='2020'
AND type= 'Movie';

-- 4. Find the Top 5 Countries with the Most Content on Netflix
-- Objective: Identify the top 5 countries with the highest number of content items.


SELECT 
	UNNEST(STRING_TO_ARRAY(country,','))as new_country,
	COUNT(show_id) as total_content
from netflix
GROUP BY 1
order by 2 DESC
limit 5;

-- 5. Identify the Longest Movie
-- Objective: Find the movie with the longest duration.
/* 
SELECT * FROM netflix
WHERE 
	type='Movie'
	AND 
	duration=(SELECT MAX(duration) from netflix)
*/

SELECT 
     *
FROM netflix
WHERE type = 'Movie'
  AND 
  duration IS NOT NULL
ORDER BY SPLIT_PART(TRIM(duration), ' ', 1)::INT DESC;


-- 6. Find Content Added in the Last 10 Years
-- Objective: Retrieve content added to Netflix in the last 10 years.

SELECT 
	*
FROM netflix
where 
	TO_DATE(date_added,'MONTH,DD,YYYY') >=( CURRENT_DATE- INTERVAL '10 YEAR')

-- 7. Find All Movies/TV Shows by Director 'Rajiv Chilaka'
-- Objective: List all content directed by 'Rajiv Chilaka'.

SELECT 
	*
FROM netflix
where 
  	director Ilike '%Rajiv Chilaka%';  
	
	--director LIKE '%Robert Cullen%'
	--it find the name from both end if there is multiple director

	
-- 8. List All TV Shows with More Than 5 Seasons
-- Objective: Identify TV shows with more than 5 seasons.
SELECT *
FROM netflix
WHERE type = 'TV Show'
  AND SPLIT_PART(duration, ' ', 1)::INT > 5;

-- 9. Count the Number of Content Items in Each Genre
-- Objective: Count the number of content items in each genre. which is listed_in column from our dataset
SELECT 
	 UNNEST(STRING_TO_ARRAY(listed_in,',')),
	 COUNT(show_id)
FROM netflix
GROUP BY 1
ORDER BY 2 DESC;

-- 10. Find Each Year and the Average Number of Content Releases in India on Netflix
-- Objective: Calculate and rank years by the average number of content releases by India.
-- Return the top 5 years with the highest average content release.

SELECT 
	EXTRACT (YEAR FROM TO_DATE(date_added,'Month, DD,YYYY'))AS year,
	COUNT(*)as yearly_content,
	ROUND(
	COUNT(*)::numeric/(SELECT COUNT(*) FROM netflix WHERE country='India')::numeric*100,2
	
	) as avg_content_peryear
FROM netflix
WHERE country='India'
group by 1;


-- 11. List All Movies that are Documentaries
-- Objective: Retrieve all movies classified as documentaries.

SELECT * 
FROM netflix
WHERE type='Movie'
	  AND 
	  listed_in ILIKE '%Documentaries%';
	  

-- 12. Find All Content Without a Director
-- Objective: List content that does not have a director.

SELECT * 
FROM netflix
WHERE	
	director IS NULL;

-- 13. Find How Many Movies Actor 'Salman Khan' Appeared in the Last 15 Years
-- Objective: Count the number of movies featuring 'Salman Khan' in the last 15 years.
SELECT *
FROM netflix
WHERE
	release_year > EXTRACT(YEAR FROM CURRENT_DATE ) - 15
	AND 
	casts ILIKE '%Salman Khan%';

-- 14. Find the Top 10 Actors Who Have Appeared in the Highest Number of Movies Produced in India
-- Objective: Identify the top 10 actors with the most appearances in Indian-produced movies.
SELECT 
	 UNNEST(STRING_TO_ARRAY(casts,',')) as  actor,
	 COUNT(*) as total_content
FROM netflix
WHERE country ILIKE '%India%'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;




-- 15. Categorise Content Based on the Presence of 'Kill' and 'Violence' Keywords
-- Objective: Categorise content based on whether the description contains the keywords
-- 'Kill' or 'Violence'.
WITH New_table AS
(
    SELECT
        *,
        CASE
            WHEN description ILIKE '%Kill%'
              OR description ILIKE '%Violence%'
            THEN 'Bad Film'
            ELSE 'Good Content'
        END AS category
    FROM netflix
)

SELECT
    category,
    COUNT(*) AS total_content
FROM New_table
GROUP BY category;




-- ============================================================