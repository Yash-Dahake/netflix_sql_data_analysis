# 🎬 Netflix Movies and TV Shows Data Analysis using SQL

<img width="1000" height="465" alt="Netflix SQL Data Analysis" src="https://github.com/user-attachments/assets/5c66a95a-09a5-4bdd-ae54-96ff3d25aa00" />

## Overview

This project involves a comprehensive analysis of **Netflix Movies and TV Shows data using PostgreSQL and SQL**.

The goal is to extract valuable insights and answer practical business questions related to Netflix's content catalog.

The analysis covers **content types, ratings, release years, countries, durations, genres, directors, casts, Indian content, and content descriptions**.

The project demonstrates practical SQL skills including **filtering, aggregation, GROUP BY, string manipulation, CTEs, window functions, ranking, CASE statements, and date-based analysis**.

## Objectives

* Analyze the distribution of Movies and TV Shows.
* Identify the most common ratings for Movies and TV Shows.
* Analyze content based on release years, countries, genres, and durations.
* Identify content associated with specific directors and casts.
* Analyze Indian content and yearly releases.
* Identify content with missing director information.
* Analyze Movies featuring specific actors.
* Categorize content based on keywords found in descriptions.
* Extract meaningful insights from the Netflix dataset using SQL.

## Dataset

The project uses the **Netflix Movies and TV Shows dataset**.

The dataset contains information about:

* Show ID
* Type
* Title
* Director
* Casts
* Country
* Date Added
* Release Year
* Rating
* Duration
* Genre
* Description

**Dataset Source:** Kaggle — Netflix Movies and TV Shows Dataset

## Database Schema

The Netflix dataset is stored in a PostgreSQL table named **`netflix`**.

The table contains the following columns:

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

**Objective:** Determine the distribution of Movies and TV Shows available on Netflix.

### 2. Find the Most Common Rating for Movies and TV Shows

**Objective:** Identify the most frequently occurring rating for each type of Netflix content.

### 3. List All Movies Released in a Specific Year

**Objective:** Retrieve all Movies released in a specific year, such as 2020.

### 4. Find the Top 5 Countries with the Most Content on Netflix

**Objective:** Identify the top 5 countries with the highest number of content items available on Netflix.

### 5. Identify the Longest Movie

**Objective:** Find the movie with the longest duration in the Netflix dataset.

### 6. Find Content Added in the Last 5 Years

**Objective:** Identify Netflix content added during the last five years based on the available date information.

### 7. Find All Movies/TV Shows by Director 'Rajiv Chilaka'

**Objective:** Identify all Netflix Movies and TV Shows associated with the director **Rajiv Chilaka**.

### 8. List All TV Shows with More Than 5 Seasons

**Objective:** Identify TV Shows that have more than five seasons.

### 9. Count the Number of Content Items in Each Genre

**Objective:** Analyze the number of Netflix content items available in each genre.

### 10. Find Each Year and the Average Number of Content Releases in India on Netflix

**Objective:** Analyze India's yearly Netflix content releases and identify the **top 5 years with the highest average content release**.

### 11. List All Movies that are Documentaries

**Objective:** Retrieve all Movies classified under the **Documentaries** genre.

### 12. Find All Content Without a Director

**Objective:** Identify Netflix content where director information is missing.

### 13. Find How Many Movies Actor 'Salman Khan' Appeared in the Last 15 Years

**Objective:** Identify Movies featuring **Salman Khan** released within the last **15 years**.

### 14. Find the Top 10 Actors Who Have Appeared in the Highest Number of Movies Produced in India

**Objective:** Identify the **top 10 actors** with the highest number of appearances in Indian-produced Netflix content using the `casts` column.

### 15. Categorize Content Based on the Presence of 'Kill' and 'Violence' Keywords

**Objective:** Categorize content as **Bad** if its description contains the keywords `Kill` or `Violence`, and categorize it as **Good** otherwise.

The analysis also counts the number of content items in each category.

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

* **Content Distribution:** The dataset contains a diverse collection of Movies and TV Shows.
* **Rating Insights:** Rating analysis provides an understanding of Netflix's content classification.
* **Country Insights:** Country analysis identifies the major contributors to Netflix's content catalog.
* **Genre Insights:** Genre analysis highlights the different categories of content available on Netflix.
* **Duration Insights:** The project identifies the longest Movies and TV Shows with more than five seasons.
* **Indian Content:** Year-wise analysis provides insights into India's contribution to Netflix's content library.
* **Director & Casts Analysis:** The project identifies content associated with specific directors and analyzes actors using the `casts` column.
* **Missing Data:** The analysis identifies content where director information is unavailable.
* **Content Categorization:** Description-based keyword analysis categorizes content based on the presence of `Kill` and `Violence`.

Overall, this project demonstrates how **PostgreSQL and SQL can be used to analyze real-world datasets, solve business problems, and extract meaningful insights from raw data**.

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
