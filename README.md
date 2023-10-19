# DVD Rental SQL Queries

This project is a project as part of [Cantek Data Analytics program in Toronto](https://www.cantekcanada.com/data-analytics). It contains various SQL queries against the DVD Rental PostgreSQL sample database. For the data source, please find the link [here](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/).

This database has simulated datasets for the business processes of a DVD rental business. There are 15 tables in the DVD Rental database:

actor – stores actors data including first name and last name.

film – stores film data such as title, release year, length, rating, etc.

film_actor – stores the relationships between films and actors.

category – stores film’s categories data.

film_category- stores the relationships between films and categories.

store – contains the store data including manager staff and address.

inventory – stores inventory data.

rental – stores rental data.

payment – stores customer’s payments.

staff – stores staff data.

customer – stores customer data.

address – stores address data for staff and customers

city – stores city names.

country – stores country names.

# Entity-Relationship Model (ER Model) of the DVD Rental database

![Entity-Relationship Model (ER Model) of the DVD Rental database](https://www.postgresqltutorial.com/wp-content/uploads/2018/03/dvd-rental-sample-database-diagram.png)

# Queries Explanation

Please find the SQL query scripts and results in the corresponding folder. For example, you can find query 7 and its results in the folder named 'query07'.

## Query 1

When you start playing with a dataset, you would like to first see if data are clean. So what I did is to count the number of records and the number of unique records in the rental table, in order to see whether there are any duplicated rental records.

## Query 2

Next I wanted to see the duration of the rental records by getting the earliest date and latest date in the rental records.

## Query 3

Then I wanted to know if there are any records that make no sense, namely if there are any DVD that were rented before being returned.

It turned out that there are no records in the query results, which is good news because it means that there are no corruped rental records.

## Query 4

Then I wanted to see if any customer records in the rental table that do not exist in the customer table. That is, are there any customers who rented DVD but are not recorded in the customer table.

It turned out that there are no records in the query results, which is good news because it means that there is no customer who is not recorded in the database.

## Query 5

As the data appears to be clean, I can perform some exploratory data analysis. I wanted to figure out the number of rentals on each date.

## Query 6

Based on the above table using CTE, I obtained the average, maximum and minimum number of daily rentals.

## Query 7

The business loves to know who the loyal customers are, so that it may give some offers retain customers. Here I only picked the top 10 customers who has the most rentals.

## Query 8

However, higher frequency of rentals a customer has does not necessarily imply higher amount of income the customer brings to the rental store. For example, a customer who rented just a single DVD for an extended period of time can generate more income than one who rented 3 times but returned the DVDs the next day every time. So here I obtained the top 10 custmers who paid the most rental amounts.

It turned out that there are 6 customers who are on both lists of queries 7 and 8, so there are 4 customers who paid the most but did not rent most frequently.

## Query 9

In addition to the perspective of customers, I wanted to look at what film that generates the most income, so that the business can have more inventory of the film DVDs.

## Query 10

Finally, I wanted to look at it from a higher level by film category, so that the business can bought DVDs for those popular film category to suit customer needs.