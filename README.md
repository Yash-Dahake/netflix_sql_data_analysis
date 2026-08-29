# 🎬 Netflix Movies and TV Shows — SQL Data Analysis
[Netflix-Logo.png](https://github.com/Yash-Dahake/netflix_sql_data_analysis/tree/main)
## 1. Project Overview

This project focuses on analyzing Netflix Movies and TV Shows data using **PostgreSQL and SQL**. The objective is to explore the Netflix content catalog and extract meaningful insights by solving a series of practical data analysis questions.

The project covers content distribution, ratings, release years, countries, genres, movie durations, TV Show seasons, directors, cast members, and content descriptions.

Various SQL techniques are used throughout the project, including **aggregate functions, GROUP BY, filtering, string manipulation, Common Table Expressions (CTEs), window functions, ranking, CASE statements, and date-based analysis**.

The project demonstrates how SQL can be used to transform raw data into meaningful insights for analysis and decision-making.

---

## 2. Objectives

The main objectives of this project are:

* Analyze the distribution of Movies and TV Shows on Netflix.
* Identify the most common ratings for Movies and TV Shows.
* Find movies released in a specific year.
* Identify the top countries with the highest amount of Netflix content.
* Find the longest movie available in the dataset.
* Analyze content added within a specific time period.
* Identify Movies and TV Shows associated with a specific director.
* Find TV Shows with more than five seasons.
* Analyze the number of content items available in each genre.
* Analyze India's yearly content releases on Netflix.
* Identify movies classified as documentaries.
* Find content where director information is missing.
* Analyze the appearance of specific actors such as Salman Khan.
* Identify the top actors associated with Indian content.
* Categorize content based on keywords such as `Kill` and `Violence`.

---

## 3. Project Structure

The project contains the Netflix dataset, SQL analysis files, and project documentation.

The repository is organized to keep the dataset, SQL queries, and documentation easy to understand.

---

## 4. Database Setup

This project uses **PostgreSQL** as the database management system and **pgAdmin 4** for database management and query execution.

The main database table is named **`netflix`**.

### Dataset Columns

| Column         | Description                                 |
| -------------- | ------------------------------------------- |
| `show_id`      | Unique identifier for each Netflix title    |
| `type`         | Type of content — Movie or TV Show          |
| `title`        | Name of the movie or TV Show                |
| `director`     | Director of the content                     |
| `casts`        | Cast members appearing in the content       |
| `country`      | Country associated with the content         |
| `date_added`   | Date when the content was added to Netflix  |
| `release_year` | Original release year                       |
| `rating`       | Content rating                              |
| `duration`     | Movie duration or number of TV Show seasons |
| `listed_in`    | Genre or category of the content            |
| `description`  | Description of the movie or TV Show         |

---

## 5. CRUD Operations

CRUD represents the four basic database operations:

* **Create** — Creating the database table and database objects.
* **Read** — Retrieving and analyzing Netflix records.
* **Update** — Modifying existing records when required.
* **Delete** — Removing records when required.

These operations demonstrate basic database manipulation and management using PostgreSQL.

---

## 6. SQL Analysis

The project contains multiple SQL analysis tasks designed to explore different aspects of the Netflix dataset.

The analysis includes:

* Counting Movies vs TV Shows.
* Finding the most common rating for Movies and TV Shows.
* Finding Movies released in a specific year.
* Identifying the top five countries with the most content.
* Identifying the longest movie.
* Finding content added within the last five years.
* Finding content associated with a specific director such as Rajiv Chilaka.
* Identifying TV Shows with more than five seasons.
* Counting content items by genre.
* Analyzing India's yearly content releases.
* Finding Movies classified as documentaries.
* Finding content without director information.
* Identifying content featuring Salman Khan.
* Finding the top actors associated with Indian content.

---

## 7. Advanced SQL Operations

The project applies several advanced SQL techniques to solve complex analytical questions.

### Common Table Expressions (CTEs)

CTEs are used to divide complex queries into logical steps and make SQL analysis easier to read and understand.

### Window Functions

Window functions such as **RANK()** are used to rank records within specific groups.

### String Manipulation

String functions are used to analyze columns containing multiple values, including countries, genres, and cast members.

### CASE Statements

CASE statements are used to create categories based on specific conditions.

### NULL Value Analysis

The project identifies records containing missing information, such as content without a director.

### Content Categorization

Content is categorized as **Bad Film** when the description contains the keywords **"Kill"** or **"Violence"**, and as **Good Content** otherwise. The number of items in each category is then counted.

---

## 8. Historical Dataset Date Logic

The Netflix dataset contains historical information rather than real-time data.

For date-based analysis, the project's historical dataset period needs to be considered instead of relying only on the current system date.

A fixed reference date can be used where necessary to make date-based analysis consistent and reproducible.

This approach is useful when analyzing older datasets because the results should remain consistent even when the project is executed at a later date.

---

## 9. Key SQL Concepts Used

The following SQL concepts are demonstrated throughout the project:

| SQL Concept         | Purpose                         |
| ------------------- | ------------------------------- |
| SELECT              | Retrieve data                   |
| WHERE               | Filter records                  |
| GROUP BY            | Group records for analysis      |
| ORDER BY            | Sort results                    |
| COUNT()             | Count records                   |
| RANK()              | Rank records                    |
| CASE                | Categorize data                 |
| CTE                 | Structure complex queries       |
| ILIKE               | Case-insensitive text search    |
| LIKE                | Pattern matching                |
| IS NULL             | Identify missing values         |
| STRING_TO_ARRAY()   | Split comma-separated values    |
| UNNEST()            | Expand arrays into rows         |
| SPLIT_PART()        | Extract values from text        |
| TRIM()              | Remove unwanted spaces          |
| Type Casting        | Convert data types              |
| Aggregate Functions | Generate analytical summaries   |
| Window Functions    | Perform analytical calculations |

---

## 10. Reports & Insights

The SQL analysis provides several useful insights from the Netflix dataset.

### Content Distribution

The analysis identifies the distribution between Movies and TV Shows available on Netflix.

### Rating Insights

The most common ratings for Movies and TV Shows provide an understanding of content classification and target audiences.

### Geographical Insights

Country-level analysis identifies the countries with the largest representation in the Netflix catalog and provides insights into India's yearly content release trends.

### Genre Insights

Genre analysis identifies the categories with the highest number of content items.

### Duration Insights

The project identifies the longest movie and TV Shows with more than five seasons.

### Director and Cast Insights

Director and cast analysis helps identify content associated with specific directors and actors.

### Content Description Analysis

Keyword-based categorization provides an additional perspective on Netflix content by identifying descriptions containing terms such as **"Kill"** and **"Violence"**.

---

## 11. Database Relationships

This project primarily uses a **single-table Netflix dataset**.

The main table is:

**netflix**

The table contains information about:

* Show ID
* Content Type
* Title
* Director
* Cast
* Country
* Date Added
* Release Year
* Rating
* Duration
* Genre
* Description

The dataset stores multiple attributes of each Netflix title in a single table. Some columns, such as `casts`, `country`, and `listed_in`, may contain multiple comma-separated values.

---

## 12. Technology Stack

### Database

* **PostgreSQL**
* **pgAdmin 4**

### Query Language

* **SQL**

### Dataset

* Netflix Movies and TV Shows Dataset
* CSV format

### Version Control

* **Git**
* **GitHub**

---

## 13. How to Run the Project ⭐

Follow these steps to run the project locally:

1. Clone the GitHub repository.
2. Install and open PostgreSQL.
3. Open pgAdmin 4.
4. Create a PostgreSQL database.
5. Create the `netflix` table.
6. Import the Netflix CSV dataset into the table.
7. Open the SQL analysis file from the repository.
8. Execute the required SQL queries.
9. Review the query results and insights.

### Requirements

* PostgreSQL
* pgAdmin 4
* Git
* GitHub account
* Netflix dataset in CSV format

---

## 14. Dataset Information ⭐

The project uses the **Netflix Movies and TV Shows dataset**.

The dataset contains information about Netflix Movies and TV Shows, including:

* Titles
* Content types
* Directors
* Cast members
* Countries
* Ratings
* Release years
* Durations
* Genres
* Descriptions
* Netflix addition dates

### Dataset Columns

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

The dataset is suitable for practicing **SQL data analysis, filtering, aggregation, string manipulation, text analysis, and advanced SQL techniques**.

---

## 15. Project Highlights ⭐

⭐ **PostgreSQL-Based Analysis**
Performed the analysis using PostgreSQL and SQL.

⭐ **Multiple Business Questions**
Solved practical questions related to Netflix content, ratings, countries, genres, directors, cast, and durations.

⭐ **Advanced SQL**
Used CTEs, window functions, ranking, CASE statements, string functions, and aggregate functions.

⭐ **Text Analysis**
Analyzed text-based columns such as descriptions, cast members, countries, and genres.

⭐ **Historical Data Analysis**
Considered the historical nature of the dataset when performing date-based analysis.

⭐ **Missing Data Analysis**
Identified records containing NULL values.

⭐ **Content Categorization**
Categorized content based on keywords such as `Kill` and `Violence`.

⭐ **Portfolio Project**
Demonstrates practical PostgreSQL and SQL skills applicable to Data Analyst roles.

---

## 16. Conclusion

This Netflix SQL Data Analysis project demonstrates how PostgreSQL can be used to analyze a real-world dataset and extract meaningful information from raw data.

The project covers both fundamental and advanced SQL concepts, including **filtering, grouping, aggregation, string manipulation, CTEs, window functions, ranking, conditional logic, and NULL value analysis**.

Through this analysis, the Netflix dataset was explored from multiple perspectives, including content types, ratings, countries, genres, release years, durations, directors, cast members, and content descriptions.

Overall, the project provides practical experience in solving data analysis problems using SQL and demonstrates the ability to transform raw dataset information into structured and meaningful insights.

---

## 17. Author

### Yash Dahake

**MCA | Data Analytics Enthusiast**

Interested in **Data Analytics, SQL, Python, Excel, and Power BI**.

---

⭐ If you find this project useful, feel free to explore the SQL queries and analysis.
