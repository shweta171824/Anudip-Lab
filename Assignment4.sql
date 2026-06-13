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
| student                 |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
10 rows in set (0.06 sec)

mysql> use bankb;
Database changed
mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee             |
| employee_details     |
| employee_info        |
| order_details        |
| orders               |
| product              |
+----------------------+
7 rows in set (0.03 sec)

mysql> create database joins;
Query OK, 1 row affected (0.03 sec)

mysql> use joins;
Database changed
mysql> create table department(department_id int not null primary key, department_name varchar(50) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into department values(1,'HR'),(2,'Finance'),(3,'IT'),(4,'Marketing');
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select *from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | Finance         |
|             3 | IT              |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> create table employee(employee_id int primary key not null, employee_name varchar(100) not null, department_id int, foreign key(department_id) references department(department_id));
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employee values(1,'Rishab',1),(2,'Shalini',2),(3,'Pallavi',1),(4,'Payal',null),(5,'Sarthak',4);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | Rishab        |             1 |
|           2 | Shalini       |             2 |
|           3 | Pallavi       |             1 |
|           4 | Payal         |          NULL |
|           5 | Sarthak       |             4 |
+-------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select *from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | Finance         |
|             3 | IT              |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee inner join department on employee.department_id = department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rishab        | HR              |
| Pallavi       | HR              |
| Shalini       | Finance         |
| Sarthak       | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id = department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rishab        | HR              |
| Shalini       | Finance         |
| Pallavi       | HR              |
| Payal         | NULL            |
| Sarthak       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select *from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | Rishab        |             1 |
|           2 | Shalini       |             2 |
|           3 | Pallavi       |             1 |
|           4 | Payal         |          NULL |
|           5 | Sarthak       |             4 |
+-------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select *from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | Finance         |
|             3 | IT              |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id = department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rishab        | HR              |
| Shalini       | Finance         |
| Pallavi       | HR              |
| Payal         | NULL            |
| Sarthak       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee right join department on employee.department_id = department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rishab        | HR              |
| Pallavi       | HR              |
| Shalini       | Finance         |
| NULL          | IT              |
| Sarthak       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rishab        | Marketing       |
| Rishab        | IT              |
| Rishab        | Finance         |
| Rishab        | HR              |
| Shalini       | Marketing       |
| Shalini       | IT              |
| Shalini       | Finance         |
| Shalini       | HR              |
| Pallavi       | Marketing       |
| Pallavi       | IT              |
| Pallavi       | Finance         |
| Pallavi       | HR              |
| Payal         | Marketing       |
| Payal         | IT              |
| Payal         | Finance         |
| Payal         | HR              |
| Sarthak       | Marketing       |
| Sarthak       | IT              |
| Sarthak       | Finance         |
| Sarthak       | HR              |
+---------------+-----------------+
20 rows in set (0.00 sec)
