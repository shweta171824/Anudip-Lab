Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| bankb                   |
| e_commerce              |
| information_schema      |
| joins                   |
| mysql                   |
| performance_schema      |
| sakila                  |
| storeprocedure          |
| student                 |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
12 rows in set (0.02 sec)

mysql> use studentmanagementsystem;
Database changed
mysql> create table Students(student_id int primary key, First_name varchar(50), Last_name varchar(50));
Query OK, 0 rows affected (0.11 sec)

mysql> insert into Students values(01,'Sanjana','Bhosale'),(02,'Sejal','Patil'),(03,'Parth','Patekar'),(04,'Darshan','Kasabale'),(05,'Riya','Jambhale');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| feedback                          |
| feedback1                         |
| student                           |
| students                          |
+-----------------------------------+
4 rows in set (0.02 sec)

mysql> select *from Students;
+------------+------------+-----------+
| student_id | First_name | Last_name |
+------------+------------+-----------+
|          1 | Sanjana    | Bhosale   |
|          2 | Sejal      | Patil     |
|          3 | Parth      | Patekar   |
|          4 | Darshan    | Kasabale  |
|          5 | Riya       | Jambhale  |
+------------+------------+-----------+
5 rows in set (0.00 sec)

mysql> create table Courses(course_id int primary key, course_name varchar(50));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into Courses values(01,'Data Analytics'),(02,'Java Advance'),(03,'Python'),(04,'Digital Marketing'),(05,'C');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from Courses;
+-----------+-------------------+
| course_id | course_name       |
+-----------+-------------------+
|         1 | Data Analytics    |
|         2 | Java Advance      |
|         3 | Python            |
|         4 | Digital Marketing |
|         5 | C                 |
+-----------+-------------------+
5 rows in set (0.00 sec)

mysql> CREATE TABLE Enrollments1 (enrollment_id int primary key,student_id int,course_id int,foreign key (student_id) references students(student_id),foreign key (course_id) references Courses(course_id));
Query OK, 0 rows affected (0.03 sec)

mysql> insert into Enrollments1 values(01,1,1),(02,2,2),(03,3,4),(04,4,3),(05,5,5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from Enrollments1;
+---------------+------------+-----------+
| enrollment_id | student_id | course_id |
+---------------+------------+-----------+
|             1 |          1 |         1 |
|             2 |          2 |         2 |
|             3 |          3 |         4 |
|             4 |          4 |         3 |
|             5 |          5 |         5 |
+---------------+------------+-----------+
5 rows in set (0.00 sec)

mysql> select Students.student_id,Students.First_name,Students.Last_name,Courses.course_id,Courses.course_name  from Enrollments1 inner join Students on Enrollments1.student_id = Students.student_id inner join Courses on Enrollments1.course_id = Courses.course_id;
+------------+------------+-----------+-----------+-------------------+
| student_id | First_name | Last_name | course_id | course_name       |
+------------+------------+-----------+-----------+-------------------+
|          1 | Sanjana    | Bhosale   |         1 | Data Analytics    |
|          2 | Sejal      | Patil     |         2 | Java Advance      |
|          3 | Parth      | Patekar   |         4 | Digital Marketing |
|          4 | Darshan    | Kasabale  |         3 | Python            |
|          5 | Riya       | Jambhale  |         5 | C                 |
+------------+------------+-----------+-----------+-------------------+
5 rows in set (0.00 sec)

