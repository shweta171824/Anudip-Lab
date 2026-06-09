mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.00 sec)

mysql> use e_commerce;
Database changed
mysql> create table employee1(employee_id int(10) NOT NULL primary key,employee_Name varchar(100) NOT NULL, salary double NOT NULL);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into employee1 values(001, 'Charuta',90000),(002, 'Ayush',70000),(003, 'Mahesh',80000),(004,'Kashish',60000),(005,'Kinjal',20000);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee1;
+-------------+---------------+--------+
| employee_id | employee_Name | salary |
+-------------+---------------+--------+
|           1 | Charuta       |  90000 |
|           2 | Ayush         |  70000 |
|           3 | Mahesh        |  80000 |
|           4 | Kashish       |  60000 |
|           5 | Kinjal        |  20000 |
+-------------+---------------+--------+
5 rows in set (0.00 sec)

mysql> update employee1 set salary = 50000 where employee_id = 5;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from employee1;
+-------------+---------------+--------+
| employee_id | employee_Name | salary |
+-------------+---------------+--------+
|           1 | Charuta       |  90000 |
|           2 | Ayush         |  70000 |
|           3 | Mahesh        |  80000 |
|           4 | Kashish       |  60000 |
|           5 | Kinjal        |  50000 |
+-------------+---------------+--------+
5 rows in set (0.00 sec)

mysql> update employee1 set employee_Name = 'Shweta' where employee_id = 4;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from employee;
+-------------+-----------------+--------+
| employee_id | employee_Name   | salary |
+-------------+-----------------+--------+
|           1 | Charuta Kamat   |  10000 |
|           2 | Ayush Jivale    |  50000 |
|           3 | Mahesh Pandhare |  70000 |
+-------------+-----------------+--------+
3 rows in set (0.00 sec)


mysql> select *from employee1;
+-------------+---------------+--------+
| employee_id | employee_Name | salary |
+-------------+---------------+--------+
|           1 | Charuta       |  90000 |
|           2 | Ayush         |  70000 |
|           3 | Mahesh        |  80000 |
|           4 | Shweta        |  60000 |
|           5 | Kinjal        |  50000 |
+-------------+---------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee1 where employee_id = 5;
Query OK, 1 row affected (0.03 sec)

mysql> select *from employee1;
+-------------+---------------+--------+
| employee_id | employee_Name | salary |
+-------------+---------------+--------+
|           1 | Charuta       |  90000 |
|           2 | Ayush         |  70000 |
|           3 | Mahesh        |  80000 |
|           4 | Shweta        |  60000 |
+-------------+---------------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee1;
Query OK, 4 rows affected (0.03 sec)

mysql> select *from employee1;
Empty set (0.00 sec)

mysql> desc employee1;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_Name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee1 values(001, 'Charuta',90000),(002, 'Ayush',70000),(003, 'Mahesh',80000),(004,'Kashish',60000),(005,'Kinjal',20000);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee1;
+-------------+---------------+--------+
| employee_id | employee_Name | salary |
+-------------+---------------+--------+
|           1 | Charuta       |  90000 |
|           2 | Ayush         |  70000 |
|           3 | Mahesh        |  80000 |
|           4 | Kashish       |  60000 |
|           5 | Kinjal        |  20000 |
+-------------+---------------+--------+
5 rows in set (0.00 sec)

mysql> truncate table employee1;
Query OK, 0 rows affected (0.05 sec)

mysql> select *from employee1;
Empty set (0.00 sec)

mysql> desc employee1;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_Name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop table employee1;
Query OK, 0 rows affected (0.04 sec)

mysql> create table employee1(employee_id int(10) NOT NULL primary key,employee_Name varchar(100) NOT NULL, salary double NOT NULL);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into employee1 values(001, 'Charuta',90000),(002, 'Ayush',70000),(003, 'Mahesh',80000),(004,'Kashish',60000),(005,'Kinjal',20000);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee1;
+-------------+---------------+--------+
| employee_id | employee_Name | salary |
+-------------+---------------+--------+
|           1 | Charuta       |  90000 |
|           2 | Ayush         |  70000 |
|           3 | Mahesh        |  80000 |
|           4 | Kashish       |  60000 |
|           5 | Kinjal        |  20000 |
+-------------+---------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee1 add email varchar(100) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee1;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_Name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
| email         | varchar(100) | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee1 modify employee_Name varchar(100) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee1;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_Name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
| email         | varchar(100) | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee1 drop column email;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee1;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_Name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee1 rename column salary to employeeSalary;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee1;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | NO   | PRI | NULL    |       |
| employee_Name  | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee1 rename to employee_info;
Query OK, 0 rows affected (0.04 sec)

mysql> desc employee_info;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | NO   | PRI | NULL    |       |
| employee_Name  | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_info drop primary key;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee_info;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | NO   |     | NULL    |       |
| employee_Name  | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_info add constraint primary key(employee_id);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_info;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | NO   | PRI | NULL    |       |
| employee_Name  | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| employee             |
| employee_info        |
+----------------------+
2 rows in set (0.01 sec)



