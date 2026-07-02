Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101



mysql> create database BankB;
Query OK, 1 row affected (0.03 sec)

mysql> use BankB;
Database changed

mysql> create table BankAccount(account_id int Primary Key, account_holder_name varchar(100), account_balance int);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into BankAccount values(110,'Bhavesh Dalvi',100000),(111,'Tanvi Gharat',125000),(112,'Tanvi Patil',10000),(113,'Sarthak More',20000),(114,'Nirjara Nakhawa',50000);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> show tables;
+-----------------+
| Tables_in_bankb |
+-----------------+
| bankaccount     |
+-----------------+
1 row in set (0.00 sec)

mysql> select *from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        110 | Bhavesh Dalvi       |          100000 |
|        111 | Tanvi Gharat        |          125000 |
|        112 | Tanvi Patil         |           10000 |
|        113 | Sarthak More        |           20000 |
|        114 | Nirjara Nakhawa     |           50000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name ,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Bhavesh Dalvi       |          100000 |
| Tanvi Gharat        |          125000 |
| Tanvi Patil         |           10000 |
| Sarthak More        |           20000 |
| Nirjara Nakhawa     |           50000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name ,account_balance from BankAccount where account_balance >30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Bhavesh Dalvi       |          100000 |
| Tanvi Gharat        |          125000 |
| Nirjara Nakhawa     |           50000 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> update BankAccount set account_balance = 200000 where account_id = 110;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        110 | Bhavesh Dalvi       |          200000 |
|        111 | Tanvi Gharat        |          125000 |
|        112 | Tanvi Patil         |           10000 |
|        113 | Sarthak More        |           20000 |
|        114 | Nirjara Nakhawa     |           50000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)
