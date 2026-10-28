select * from accounts;

alter table accounts add constraint chec check(balance>=1000);

drop table accountbranch;

select * from customer;

alter table customer add constraint prk primary key(customer_id);

alter table customer modify f_name varchar(50);

alter table customer add constraint u_k unique(email);

ALTER TABLE ACCOUNTS ADD COLUMN CUSTOMER_ID INT;

USE BANK;

ALTER TABLE accounts ADD constraint FK_ACCOUNTS_CUSTOMER
foreign key (CUSTOMER_ID) references CUSTOMER(CUSTOMER_ID);
