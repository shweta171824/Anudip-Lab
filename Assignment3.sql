mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| bankb                   |
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
9 rows in set (0.01 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee             |
| employee_info        |
| order_details        |
| product              |
+----------------------+
5 rows in set (0.01 sec)

mysql> select *from employee_info;
+-------------+---------------+----------------+
| employee_id | employee_Name | employeeSalary |
+-------------+---------------+----------------+
|           1 | Charuta       |          90000 |
|           2 | Ayush         |          70000 |
|           3 | Mahesh        |          80000 |
|           4 | Kashish       |          60000 |
|           5 | Kinjal        |          20000 |
+-------------+---------------+----------------+
5 rows in set (0.03 sec)

mysql> select *from employee;
+-------------+-----------------+--------+
| employee_id | employee_Name   | salary |
+-------------+-----------------+--------+
|           1 | Charuta Kamat   |  10000 |
|           2 | Ayush Jivale    |  50000 |
|           3 | Mahesh Pandhare |  70000 |
+-------------+-----------------+--------+
3 rows in set (0.02 sec)

mysql> select *from employee where salary >50000;
+-------------+-----------------+--------+
| employee_id | employee_Name   | salary |
+-------------+-----------------+--------+
|           3 | Mahesh Pandhare |  70000 |
+-------------+-----------------+--------+
1 row in set (0.02 sec)

mysql> select *from employee order by salary desc;
+-------------+-----------------+--------+
| employee_id | employee_Name   | salary |
+-------------+-----------------+--------+
|           3 | Mahesh Pandhare |  70000 |
|           2 | Ayush Jivale    |  50000 |
|           1 | Charuta Kamat   |  10000 |
+-------------+-----------------+--------+
3 rows in set (0.00 sec)

mysql> select *from employee order by salary ;
+-------------+-----------------+--------+
| employee_id | employee_Name   | salary |
+-------------+-----------------+--------+
|           1 | Charuta Kamat   |  10000 |
|           2 | Ayush Jivale    |  50000 |
|           3 | Mahesh Pandhare |  70000 |
+-------------+-----------------+--------+
3 rows in set (0.00 sec)

mysql> create table orders(order_id int primary key, department varchar(50) not null, amount double not null);
Query OK, 0 rows affected (0.07 sec)

mysql> insert into orders values(01,'sales',10000),(02,'sales',1250),(03,'HR',3000);
Query OK, 3 rows affected (0.03 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |  10000 |
|        2 | sales      |   1250 |
|        3 | HR         |   3000 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |        11250 |
| HR         |         3000 |
+------------+--------------+
2 rows in set (0.03 sec)

mysql> select department, avg(amount) as total_avg from orders group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| sales      |      5625 |
| HR         |      3000 |
+------------+-----------+
2 rows in set (0.02 sec)

mysql> select department, sum(amount) as total_amount from orders group by department having sum(amount) >2000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |        11250 |
| HR         |         3000 |
+------------+--------------+
2 rows in set (0.02 sec)

mysql> select *from employee;
+-------------+-----------------+--------+
| employee_id | employee_Name   | salary |
+-------------+-----------------+--------+
|           1 | Charuta Kamat   |  10000 |
|           2 | Ayush Jivale    |  50000 |
|           3 | Mahesh Pandhare |  70000 |
+-------------+-----------------+--------+
3 rows in set (0.00 sec)

mysql> insert into employee_details values(01,'Charuta','HR',10000),(02,'Saniya','IT',12500),(03,'Ayush','HR',3000),(04,'Mahesh','IT',50000);
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select *from employee_details;
+----------+---------+------------+--------+
| order_id | name    | department | Salary |
+----------+---------+------------+--------+
|        1 | Charuta | HR         |  10000 |
|        2 | Saniya  | IT         |  12500 |
|        3 | Ayush   | HR         |   3000 |
|        4 | Mahesh  | IT         |  50000 |
+----------+---------+------------+--------+
4 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee_details group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
+------------+----------------+
2 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_employee from employee_details group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |          13000 |
| IT         |          62500 |
+------------+----------------+
2 rows in set (0.00 sec)

mysql> select department, avg(salary) as total_avg from employee_details group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| HR         |      6500 |
| IT         |     31250 |
+------------+-----------+
2 rows in set (0.00 sec)

mysql> select department, Salary, count(*) from employee_details group by department, Salary;
+------------+--------+----------+
| department | Salary | count(*) |
+------------+--------+----------+
| HR         |  10000 |        1 |
| IT         |  12500 |        1 |
| HR         |   3000 |        1 |
| IT         |  50000 |        1 |
+------------+--------+----------+
4 rows in set (0.00 sec)

mysql> select *from employee_details;
+----------+---------+------------+--------+
| order_id | name    | department | Salary |
+----------+---------+------------+--------+
|        1 | Charuta | HR         |  10000 |
|        2 | Saniya  | IT         |  12500 |
|        3 | Ayush   | HR         |   3000 |
|        4 | Mahesh  | IT         |  50000 |
+----------+---------+------------+--------+
4 rows in set (0.00 sec)

mysql> select department, count(*) as total from employee_details group by department having count(*) > 1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.02 sec)

mysql> select department, count(*) from employee_details group by department having count(*) > 1;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        2 |
+------------+----------+
2 rows in set (0.00 sec)