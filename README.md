# Online Book Store SQL Analysis

## Project Overview
This project focuses on analyzing an online bookstore database using SQL. It explores books, customers, and orders to answer business questions and practice real-world data analysis queries.

## Objectives
- Analyze book inventory, genres, prices, and publication years.
- Explore customer details and order information.
- Calculate total revenue and quantities of books sold.
- Identify frequent customers and popular books.
- Analyze sales by genre and author.
- Calculate estimated remaining stock after orders.

## Tools & Technologies
- **SQL:** Data querying and analysis
- **MySQL:** Database management
- **MySQL Workbench:** Writing and executing SQL queries
- **GitHub:** Project version control and portfolio sharing

## Database Schema
The project uses three tables:

1. **Books** — Book ID, title, author, genre, publication year, price, and stock.
2. **Customers** — Customer ID, name, email, phone, city, and country.
3. **Orders** — Order ID, customer ID, book ID, order date, quantity, and total amount.

## SQL Concepts Used
- SELECT and WHERE
- Filtering with comparison operators
- DISTINCT
- ORDER BY and LIMIT
- Aggregate functions: SUM, AVG, and COUNT
- GROUP BY and HAVING
- INNER JOIN and LEFT JOIN
- Substantive business analysis using SQL queries
- NULL handling with COALESCE

## Business Questions Answered
- Which books belong to the Fiction genre?
- Which books were published after 1950?
- How many books are in stock?
- What is the most expensive book?
- What is the total revenue from orders?
- How many books were sold in each genre?
- Which customers placed at least two orders?
- Which books are ordered most frequently?
- Which author sold the most books?
- Which customer spent the most?
- What is the estimated stock remaining after orders?

## Project Structure
```text
Online-Book-Store-SQL-Analysis/
├── README.md
├── sql/
│   └── Online_Book_Store_Analysis.sql
├── data/
│   └── dataset files (if shareable)
└── results/
    └── query screenshots (optional)
```

## How to Run the Project
1. Install MySQL Server and MySQL Workbench.
2. Open the SQL script in MySQL Workbench.
3. Review the database and table creation statements.
4. Execute the script to create the tables and run the queries.
5. Load the appropriate dataset into the tables if it is not included in the script.
6. Run the queries and review the results.

## Key Learnings
- Practiced SQL queries on a relational database.
- Used joins and aggregation to analyze business data.
- Translated business questions into SQL queries.
- Practiced inventory and revenue analysis.

## Author
Ankit Yadav



