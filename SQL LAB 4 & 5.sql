use bank ;
select * from accounts;
select * from loan;
select * from customer;
select * from branches;
--- Retrieve Customers with Savings Accounts
select * from accounts 
where account_type="savings";

----- Retrieve Accounts with Balance Greater Than 25000
SELECT * FROM Accounts
WHERE Balance > 25000;

----- Retrieve Transactions Between Specific Amounts 5000 -20000
SELECT * FROM Transactions
WHERE Amount BETWEEN 5000 AND 20000;

----- Retrieve Records for Selected Customers 101,102,103,104
SELECT * FROM Customer
WHERE Customer_id IN (101,102,103);

----- This displays customers whose names start with the letter R.
select * from customer
where f_name like "R%";

-----  Retrieve all current account records
select * from accounts
where account_type="current";

---- Find accounts with balance less than 15000
select * from accounts
where balance < 15000;

---- Display transactions between 1000 and 10000
select * from transactions
where amount between 1000 and 10000;

---- Retrieve customer records for CustomerID 104 and 105
select * from customer
where customer_id in (104,105);

----- Display customers whose last name starts with S
select * from customer
where f_name regexp "^s";

----- Display Customers in Alphabetical Order
select * from customer
order by f_name ASC;

----- Display Accounts with Highest Balance First
SELECT * FROM accounts
ORDER BY BALANCE DESC;

---- Retrieve Unique Account Types
SELECT distinct ACCOUNT_TYPE
FROM accounts;

---- Display Top 3 Highest Balance Accounts
SELECT * FROM accounts
ORDER BY BALANCE DESC
LIMIT 3;

----- Skip Initial Records While Viewing Transactions
SELECT * FROM transactions
LIMIT 4 OFFSET 1;

---- Display customers sorted by LastName
SELECT * FROM customer
ORDER BY L_NAME ASC;

---- Retrieve top 5 transactions with highest amount
SELECT * FROM transactions
ORDER BY AMOUNT DESC
LIMIT 5;

---- Display unique transaction types
SELECT distinct TRANSACTION_TYPE
FROM transactions;

--- Skip the first 3 transaction records and display the next 4 records
SELECT * FROM transactions
LIMIT 4 OFFSET 3;

 ---- Find Customers Without Phone Numbers
 select * FROM customer
 WHERE PHONE IS NULL;
 
----- Find Customers Having Email Addresses
SELECT * FROM customer
WHERE EMAIL IS NOT NULL;
 
---- Find customers without email addresses
SELECT * FROM customer
WHERE EMAIL IS NULL;

----- Display all accounts where balance information is available
SELECT * FROM accounts
where BALANCE IS NOT NULL;
 
 ---- Search Customers Whose First Name Starts with “A”
 SELECT * FROM customer
 WHERE F_NAME regexp "^A";
 
---- Search Customers Whose Email Contains “gmail”
SELECT * FROM customer
WHERE EMAIL LIKE "%GMAIL%";

 ---- Search Customers Whose Last Name Ends with “kar”
 SELECT * FROM customer
 WHERE L_NAME LIKE "%KAR";
 
 ------ Display customers whose first name starts with R
 SELECT * FROM customer
 WHERE F_NAME regexp "^R";
 
---- Find customers whose email contains yahoo
SELECT * FROM customer
WHERE EMAIL LIKE "%YAHOO%";

---- Display customers whose last name starts with P
SELECT * from customer
WHERE l_NAME regexp "^P";

---- Search customers whose phone number ends with 99
SELECT * FROM customer
WHERE PHONE LIKE "%99";

---- The finance team wants to review only Savings and Current account holders.
SELECT * FROM accounts
WHERE account_type="SAVING" OR ACCOUNT_TYPE="CURRENT";

---- The audit department wants to investigate only Deposit and Withdrawal transactions.
SELECT * FROM transactions
WHERE transaction_type="DEPOSIT" OR transaction_type="WITHDRAWAL";

---- The customer relationship team wants to review records for a specific set of customers. 101,102,105
SELECT * FROM customer
WHERE customer_id IN (101,102,105);
 
---- Display accounts belonging to Salary and Savings account types
SELECT * FROM accounts
WHERE account_type IN ("SALARY","SAVING");

----- Retrieve transactions for Payment and Deposit categories
SELECT * FROM transactions
WHERE transaction_type IN ("PAYMENT","DEPOSIT");

---- Display customer records for CustomerID 103 and 104
SELECT * FROM customer
WHERE customer_id IN (103,104);

---- Retrieve selected account records using AccountID values
SELECT * FROM accounts
WHERE accoudemonts_id IN  (201,202,203);

 ----- Display Customers in Ascending Order of Last Name
 SELECT * FROM customer
 order by L_NAME ASC;
 
---- Display Accounts with Highest Balance First
SELECT * FROM accounts
order by BALANCE DESC
LIMIT 1;

---- Display Transactions Sorted by Transaction Date
SELECT * FROM transactions
order by transaction_date ASC;
 
----- Display customers sorted by FirstName
SELECT * FROM customer
order by f_name ASC;

----- Display accounts sorted by AccountType
SELECT * FROM accounts
ORDER BY account_type ASC;

---- Display transactions sorted by Amount in descending order
SELECT * FROM transactions
ORDER BY AMOUNT DESC;

--- Display customers sorted by DateOfBirth
SELECT * FROM customer
ORDER BY dateofbirth ASC;
 
---- Display Only Top 5 Highest Balance Accounts
SELECT * FROM accounts
order by BALANCE DESC
LIMIT 5;

---- Display First 3 Customer Records
SELECT * FROM customer
ORDER BY customer_id ASC
LIMIT 3;

---- Skip Initial Transaction Records 3 While Viewing Data record 2.
SELECT * FROM transactions
LIMIT 5 OFFSET 3;
 
----- Retrieve only 4 customer records
SELECT * FROM customer
ORDER BY customer_id
LIMIT 4;

---- Skip first 2 account records and display next 3 records
SELECT * FROM accounts
LIMIT 3 OFFSET 2;

---- Display top 5 latest transactions
SELECT * FROM transactions
ORDER BY transaction_date ASC
LIMIT 5;

-----Display Savings Account Customers Sorted by Balance
Categorize Accounts Using Balance
Balance >50000 then premium account
Balance >2500 then standar account
 
· High Transaction
· Medium Transaction
· Low Transaction
based on transaction amount.

SELECT balance ,
CASE WHEN balance > 50000
THEN "PREMIUM ACCOUNT"
WHEN balance > 25000 
THEN "STANDARD ACCOUNT"
END as type from accounts;

select balance ,
case when balance > 50000
then " high transactions"
when balance > 35000
then " medium transaction"
when balance > 10000
then "low transactions"
end as type from accounts;





