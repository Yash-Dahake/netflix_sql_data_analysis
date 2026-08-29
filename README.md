# 🎬 Netflix Movies and TV Shows Data Analysis using SQL

<img width="1000" height="465" alt="Netflix Movies and TV Shows Data Analysis" src="https://github.com/user-attachments/assets/5c66a95a-09a5-4bdd-ae54-96ff3d25aa00" />

## Overview

This project involves a comprehensive analysis of **Netflix Movies and TV Shows data using PostgreSQL and SQL**.

The goal is to extract valuable insights and answer various business questions based on the Netflix dataset. The analysis covers **content types, ratings, release years, countries, durations, genres, directors, casts, Indian content, and content descriptions**.

The project demonstrates practical SQL skills including **filtering, aggregation, GROUP BY, string manipulation, CTEs, window functions, ranking, CASE statements, and date-based analysis**.

## Objectives

* Analyze the distribution of content types (Movies vs TV Shows).
* Identify the most common ratings for Movies and TV Shows.
* List and analyze content based on release years, countries, and durations.
* Identify the top countries with the highest number of Netflix titles.
* Analyze content by genres, directors, and casts.
* Analyze India's yearly content releases.
* Identify TV Shows with more than 5 seasons.
* Find Movies featuring specific actors.
* Identify content with missing director information.
* Categorize content based on specific keywords.

## Dataset

The data for this project is sourced from the Kaggle dataset:

* **Dataset:** [Netflix Movies and TV Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows?resource=download)

The dataset contains information about Netflix Movies and TV Shows, including:

* `show_id` — Unique ID of the title
* `type` — Movie or TV Show
* `title` — Name of the title
* `director` — Director of the title
* `casts` — Cast members
* `country` — Country associated with the title
* `date_added` — Date added to Netflix
* `release_year` — Original release year
* `rating` — Content rating
* `duration` — Movie duration or number of seasons
* `listed_in` — Genre or category
* `description` — Description of the title

## Database Schema

The dataset is stored in a PostgreSQL table named **`netflix`**.

The main columns used for analysis are:

* `show_id`
* `type`
* `title`
* `director`
* `casts`
* `country`
* `date_added`
* `release_year`
* `rating`
* `duration`
* `listed_in`
* `description`

## Business Problems and Analysis

### 1. Count the Number of Movies vs TV Shows

**Answer:** Counts and compares the total number of Movies and TV Shows available on Netflix.

### 2. Find the Most Common Rating for Movies and TV Shows

**Answer:** Finds the most frequently used rating for each content type.

### 3. List All Movies Released in a Specific Year

**Answer:** Displays all Movies released in a selected year, such as 2020.

### 4. Find the Top 5 Countries with the Most Content on Netflix

**Answer:** Identifies the top 5 countries contributing the highest number of Netflix titles.

### 5. Identify the Longest Movie

**Answer:** Finds the Movie with the longest duration in the dataset.

### 6. Find Content Added in the Last 5 Years

**Answer:** Identifies Netflix titles added during the last 5 years.

### 7. Find All Movies/TV Shows by Director 'Rajiv Chilaka'

**Answer:** Finds all Netflix titles directed by Rajiv Chilaka.

### 8. List All TV Shows with More Than 5 Seasons

**Answer:** Identifies TV Shows having more than 5 seasons.

### 9. Count the Number of Content Items in Each Genre

**Answer:** Counts and analyzes Netflix content based on different genres.

### 10. Find Each Year and the Average Number of Content Releases in India on Netflix

**Answer:** Analyzes India's yearly content releases and identifies the top 5 years with the highest average release percentage.

### 11. List All Movies that are Documentaries

**Answer:** Finds all Movies classified under the Documentaries genre.

### 12. Find All Content Without a Director

**Answer:** Identifies Netflix titles where director information is missing.

### 13. Find How Many Movies Actor 'Salman Khan' Appeared in the Last 15 Years

**Answer:** Finds Movies featuring Salman Khan released within the last 15 years.

### 14. Find the Top 10 Actors Who Have Appeared in the Highest Number of Movies Produced in India

**Answer:** Identifies the top 10 actors with the most appearances in Indian content using the `casts` column.

### 15. Categorize Content Based on the Presence of 'Kill' and 'Violence' Keywords

**Answer:** Categorizes content as **Bad** when the description contains `Kill` or `Violence`, and **Good** otherwise, then counts each category.

## SQL Concepts Used

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* COUNT()
* Aggregate Functions
* CASE Statements
* CTEs
* Window Functions
* RANK()
* LIKE
* ILIKE
* IS NULL
* STRING_TO_ARRAY()
* UNNEST()
* SPLIT_PART()
* TRIM()
* Type Casting
* Date Functions
* String Manipulation

## Findings and Conclusion

* **Content Distribution:** Analyzed the distribution of Movies and TV Shows on Netflix.
* **Rating Insights:** Identified the most common ratings for different content types.
* **Country Insights:** Identified the top countries contributing to Netflix's content catalog.
* **Genre Insights:** Analyzed the number of titles across different genres.
* **Duration Insights:** Identified the longest Movies and TV Shows with more than 5 seasons.
* **Indian Content:** Analyzed India's yearly contribution to Netflix content.
* **Director & Casts Analysis:** Analyzed content associated with specific directors and actors using the `casts` column.
* **Missing Data:** Identified titles with missing director information.
* **Content Categorization:** Categorized content based on `Kill` and `Violence` keywords found in descriptions.

Overall, this project demonstrates how **PostgreSQL and SQL can be used to analyze real-world datasets, solve business questions, and extract meaningful insights**.

## Tools & Technologies

* **PostgreSQL**
* **pgAdmin 4**
* **SQL**
* **Git**
* **GitHub**

## Author

### Yash Dahake

**MCA | Data Analytics Enthusiast**

**Skills:** SQL | PostgreSQL | Python | Excel | Power BI | Data Analytics

---

⭐ **If you find this project useful, feel free to explore the repository and SQL analysis.**
