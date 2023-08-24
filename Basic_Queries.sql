/* IN THIS PART, WE WILL BE WORKING WITH BASIC SQL STATEMENTS */

/* SELECT ALL COLUMNS FROM THE orders TABLE */

SELECT *
FROM orders;
-- There are 6,912 rows and 11 columns in the order table



/* SELECT ALL COLUMNS FROM THE accounts TABLE */

SELECT *
FROM accounts;
-- There are 351 rows and 7 columns in the accounts table



/* SELECT ALL COLUMNS FROM THE region TABLE */

SELECT *
FROM region;
-- There are 4 rows and 2 columns in the region table



/* SELECT ALL COLUMNS FROM THE sales_reps TABLE */

SELECT *
FROM sales_reps;
-- There are 50 rows and 3 columns in the sales_reps table



/* SELECT ALL COLUMNS FROM THE web_events TABLE */

SELECT *
FROM web_events;
-- There are 9,073 rows and 4 columns in the web_events table




/* USING TOP statement
NOTE: Not all database systems support SELECT TOP statements. MySQL and Postgre support LIMIT clause
to select a minimum number of records while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM*/

/*
Write a query that displays all the data in the occurred_at, account_id, and channel 
columns of web_events table, and limits the output to only the first 10 rows.
*/

SELECT occurred_at, account_id, channel
FROM web_events;




/* USING DISTINCT */

/*
Write a query to return the distinct channels in the web_events table
*/

SELECT DISTINCT channel
FROM web_events;
-- There are 6 distinct channels on the web events table




/* USING the ORDER BY clause */

/*
Write a query to return the 10 earliest orders in the orders table. Include the id, occurred_at, and total_amt_usd.
*/

SELECT id, Occurred_at, total_amt_usd
FROM orders
ORDER BY occurred_at
LIMIT 10;

/* Write a query to return the top 5 orders in terms of largest total_amt_usd. Include the id, account_id,
and total_amt_usd.*/

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;
-- Returns 5 largest placed orders. 

/*Write a query to return the lowest 20 orders in terms of smallest total_amt_usd. Include the id, account_id,
and total_amt_usd. */

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd 
LIMIT 20;
-- Returns lowest 20 entries in terms of smallest orders placed.

/* Write a query that displays the order ID, account ID, and total dollar amount for all the orders, sorted first by the account ID (in ascending order), and then by the total dollar amount (in descending order).
*/

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id, total_amt_usd DESC
LIMIT 200;

/* Write a query that again displays order ID, account ID, and total dollar amount for each order, but this time sorted first by total dollar amount (in descending order), and then by account ID (in ascending order).
*/

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC, account_id
LIMIT 200;

/*Compare the results of these two queries above. How are the results different when you switch the column you sort on first?*/

--In query #1, all of the orders for each account ID are grouped together, and then within each of those groupings,
--the orders appear from the greatest order amount to the least. In query #2, since you sorted by the total dollar
--amount first, the orders appear from greatest to least regardless of which account ID they were from. Then they
--are sorted by account ID next. (The secondary sorting by account ID is difficult to see here, since only if there
--were two orders with equal total dollar amounts would there need to be any sorting by account ID.)


