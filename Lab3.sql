Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id, FirstName, LastName, Age, Phoneno, Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order



mysql> create database student;
Query OK, 1 row affected (0.01 sec)

mysql> use student;
Database changed
mysql> create table student_info(stud_id int primary key, First_Name varchar(50), Last_Name varchar(50), Age int ,Phone_no varchar(15), Address varchar(100));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into student_info values(100,'Tanvi','Gharat',21,'4322256352','Rasayani'),(101,'Bhavesh','Dalvi',20,'7300058537','Pali'),(102,'Sourabh','Gokave',22,'7323158937','Panvel'),(103,'Charuta','Kamat',21,'7380058509','Alibag'),(104,'Shweta','Bhosale',21,'8654308597','Nagothane');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from student_info;
+---------+------------+-----------+------+------------+-----------+
| stud_id | First_Name | Last_Name | Age  | Phone_no   | Address   |
+---------+------------+-----------+------+------------+-----------+
|     100 | Tanvi      | Gharat    |   21 | 4322256352 | Rasayani  |
|     101 | Bhavesh    | Dalvi     |   20 | 7300058537 | Pali      |
|     102 | Sourabh    | Gokave    |   22 | 7323158937 | Panvel    |
|     103 | Charuta    | Kamat     |   21 | 7380058509 | Alibag    |
|     104 | Shweta     | Bhosale   |   21 | 8654308597 | Nagothane |
+---------+------------+-----------+------+------------+-----------+
5 rows in set (0.00 sec)

mysql> select *from student_info order by Last_Name;
+---------+------------+-----------+------+------------+-----------+
| stud_id | First_Name | Last_Name | Age  | Phone_no   | Address   |
+---------+------------+-----------+------+------------+-----------+
|     104 | Shweta     | Bhosale   |   21 | 8654308597 | Nagothane |
|     101 | Bhavesh    | Dalvi     |   20 | 7300058537 | Pali      |
|     100 | Tanvi      | Gharat    |   21 | 4322256352 | Rasayani  |
|     102 | Sourabh    | Gokave    |   22 | 7323158937 | Panvel    |
|     103 | Charuta    | Kamat     |   21 | 7380058509 | Alibag    |
+---------+------------+-----------+------+------------+-----------+
5 rows in set (0.00 sec)
