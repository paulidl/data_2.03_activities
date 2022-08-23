-- 2.03 Activity 1:

use bank;

-- 1. Get card_id and year_issued for all gold cards.

select * from bank.card;
select *, left(issued,2) as year from bank.card;

-- 2. When was the first gold card issued? (Year)

select * from bank.card;
select min(left(issued,2)) as year from bank.card where type = "gold";

-- 3. Get issue date as:
-- date_issued: 'November 7th, 1993'
-- fecha_emision: '07 of November of 1993'

select * from bank.card;
select date_format(left(issued, 6), "%Y-%M-%D") as date_issued, date_format(left(issued, 6), "%D-%M-%Y") as fecha_emision from bank.card;

-- 2.03 Activity 3:

-- 1. Null or empty values are usually a problem. Think about why those null values can appear and think of ways of dealing with them.



-- 2. Check for transactions with null or empty values for the column amount.

select * from bank.trans;
select * from bank.trans where amount is null or amount = " ";

-- 3. Count how many transactions have empty and non-empty k_symbol (in one query).

select * from bank.trans;
select count(*) from bank.trans where k_symbol = " ";
select count(*) from trans;
SELECT count(ISNULL(k_symbo)) from trans;

select count(*) as empty from trans where k_symbol = " ", count(*) as Todos from trans;

SELECT k_symbol, count(*) FROM trans GROUP BY k_symbol;

select count(*) as all_values,
count(*) as empty where k_symbol = " ",
all_values - empty as rest from trans;

