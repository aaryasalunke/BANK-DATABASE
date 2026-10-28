use bank;

----- 1. Display customer Table
select * from customer;

----- 2. Display the current system date
select current_date();

------ 3. Display the current system date and time.
select now();

----- 4. Display the Birth of year
select dateofbirth,year(dateofbirth) from customer;

------ 5. Display the Birth month
select dateofbirth,month(dateofbirth) from customer;

------ 6. Calculate the number of days since BirthDate
select dateofbirth,datediff(current_date(),dateofbirth) from customer;

---- 7. Find the latest birth date.
select max(dateofbirth) from customer;

select dateofbirth from customer
order by dateofbirth desc
limit 1;

----- 8. Find the earliest birth date
select min(dateofbirth) from customer;

 
----- 4. Calculate the total balance maintained across all customer accounts.
select sum(balance) from accounts;

----- 5. Calculate the average balance maintained across all customer accounts to understand the typical amount held by customers.
select avg(balance) from accounts;
 
------ 6. Identify the highest balance maintained in any customer account.
select max(balance) from accounts;

------ 7. Identify the lowest balance maintained in any customer account
select min(balance) from accounts;

----- 8. Determine the total number of customer accounts available in the system.
 select count(distinct(accoudemonts_id)) from accounts;

---- 9. The bank wants to calculate the total account balance for each AccountType by grouping the records based on AccountType and identify which account type is 
---- attracting the highest total deposits from customers.

select account_type,sum(balance) from accounts
group by account_type;

 ------ 1. Categorize customers as Adult or Young based on their birth year
 select year(dateofbirth), case 
 when year(dateofbirth) >  1998 then "young"
 when year (dateofbirth) <= 1998 then "adult"
 end as type from customer;
 
------ 2. Display 'Not Available' if a phone number is NULL
select ifnull(phone,"not available") from customer;
 
---- 3. Compare two customer names
select f_name,nullif(f_name,"priya") from customer;

---------- 10. The bank management wants to identify only those account types whose total customer deposits exceed ₹25,000.
select account_type,sum(balance) from accounts
group by account_type
having sum(balance)>25000;
