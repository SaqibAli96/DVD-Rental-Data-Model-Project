## DVD Rental Data Model Project
![Schema Diagram](https://github.com/SaqibAli96/DVD-Rental-Data-Model-Project/blob/d2300271c599865f1aec19edf9fd3dc4cf6bcb7f/Model%20Images/Image_0.png)

#### This project involves the transformation and modeling of the classic DVD Rental dataset using PostgreSQL. The purpose is to create a robust data model by performing ETL (Extract, Transform, Load) processes, enabling further analysis, machine learning, or reporting.
#### Project Overview
This repository contains the following components:

##### Data Source: 
The dataset used in this project is the DVD Rental dataset, which contains information about movies, customers, rentals, and related entities.

##### Technology Stack:

##### Database: PostgreSQL
##### Programming Language: Python (Jupyter Notebook)
##### Libraries Used: psycopg2 for PostgreSQL connection, pandas for data manipulation

##### Data Transformation and Modeling:
Connected to PostgreSQL using Python.
Executed DDL queries to create and manipulate tables.
Dimension and fact tables were created to form a star schema.
Relationships between tables were built to create a local data warehouse system.
Final Data Model: The data has been transformed and loaded into fact and dimension tables with appropriate relationships, ready for use in analysis, machine learning, or reporting.

#### Key Steps in the Project
Connection and Setup:

Connected to PostgreSQL using Python.
Executed DDL queries to create tables for the data model.
Data Transformation:

Cleaned and processed the data using SQL queries.
Transformed raw data into dimension and fact tables.
Data Model Design:

Created appropriate relationships between tables to represent a star schema.
Built a local data warehouse-type system for optimized analysis.
Analysis and Reporting:

The final robust data model is ready to be utilized for analytics, machine learning models, and reporting.
How to Use
Clone this repository:

bash
Copy code
git clone https://github.com/your_username/dvd-rental-data-model.git
Install necessary dependencies:

Copy code
pip install psycopg2 pandas
Run the Jupyter Notebooks to execute the ETL process and create the data model.

Connect to the PostgreSQL database and explore the transformed data for analysis.

Example Queries
Fact Table Query:

sql
Copy code
SELECT * FROM fact_rentals;
Dimension Table Query:

sql
Copy code
SELECT * FROM dim_movies;
