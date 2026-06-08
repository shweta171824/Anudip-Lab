/*     
Create Database StudentManagementSystem

1.Create Table student

with attribute:  ●StudentID (Primary Key)
●Name
●Age
●Address


2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table

 */


create database studentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
7 rows in set (0.00 sec)

mysql> use studentManagementSystem;
Database changed
mysql> CREATE TABLE student(student_id varchar(10)NOT NULL primary key, name varchar(100) NOT NULL, age int NOT NULL, address varchar(100)NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql>  CREATE TABLE student(student_id varchar(10)NOT NULL primary key, name varchar(100) NOT NULL, age int NOT NULL, address varchar(100)NOT NULL);
Query OK, 0 rows affected (0.02 sec)

mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
7 rows in set (0.00 sec)

mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| student                           |
+-----------------------------------+
1 row in set (0.01 sec)

mysql> desc student;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| student_id | varchar(10)  | NO   | PRI | NULL    |       |
| name       | varchar(100) | NO   |     | NULL    |       |
| age        | int          | NO   |     | NULL    |       |
| address    | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

insert into student values(001,'Shweta Bhosale',21,'Nagothane'),(002,'Charuta Kadam',22,'Alibag'),(003,'Ayush Jivale',21,'Panvel'),(004,'Mahesh Pandare',21,'Rabale');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select *from student;
+------------+----------------+-----+-----------+
| student_id | name           | age | address   |
+------------+----------------+-----+-----------+
| 1          | Shweta Bhosale |  21 | Nagothane |
| 2          | Charuta Kadam  |  22 | Alibag    |
| 3          | Ayush Jivale   |  21 | Panvel    |
| 4          | Mahesh Pandare |  21 | Rabale    |
+------------+----------------+-----+-----------+
4 rows in set (0.00 sec)

create table feedback1(feedback_id varchar(15) not null primary key,student_id varchar(10) not null,date date not null,insructor_name varchar(50) not null,feedback varchar(50) not null,foreign key(student_id) references student(student_id));
Query OK, 0 rows affected (0.02 sec)

mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| feedback                          |
| feedback1                         |
| student                           |
+-----------------------------------+
3 rows in set (0.00 sec)

mysql> desc feedback1;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| feedback_id    | varchar(15) | NO   | PRI | NULL    |       |
| student_id     | varchar(10) | NO   | MUL | NULL    |       |
| date           | date        | NO   |     | NULL    |       |
| insructor_name | varchar(50) | NO   |     | NULL    |       |
| feedback       | varchar(50) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)
 INSERT INTO feedback1 VALUES
    -> ('f101','1','2025-06-01','Sejal','nice teaching'),
    -> ('f102','2','2025-06-02','Riya','Very supportive teacher'),
    -> ('f103','3','2025-06-03','Payal','explains concept clearly'),
    -> ('f104','4','2025-06-04','Naveli','Needs practical explanation');
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from feedback1 ;
+-------------+------------+------------+----------------+-----------------------------+
| feedback_id | student_id | date       | insructor_name | feedback                    |
+-------------+------------+------------+----------------+-----------------------------+
| f101        | 1          | 2025-06-01 | Sejal          | nice teaching               |
| f102        | 2          | 2025-06-02 | Riya           | Very supportive teacher     |
| f103        | 3          | 2025-06-03 | Payal          | explains concept clearly    |
| f104        | 4          | 2025-06-04 | Naveli         | Needs practical explanation |
+-------------+------------+------------+----------------+-----------------------------+
4 rows in set (0.00 sec)
