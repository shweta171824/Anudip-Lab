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
8 rows in set (0.08 sec)




select employee_info;
ERROR 1054 (42S22): Unknown column 'employee_info' in 'field list'
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

mysql> select *from employee_info limit 3;
+-------------+---------------+----------------+
| employee_id | employee_Name | employeeSalary |
+-------------+---------------+----------------+
|           1 | Charuta       |          90000 |
|           2 | Ayush         |          70000 |
|           3 | Mahesh        |          80000 |
+-------------+---------------+----------------+
3 rows in set (0.00 sec)

mysql> select *from employee_info limit 2;
+-------------+---------------+----------------+
| employee_id | employee_Name | employeeSalary |
+-------------+---------------+----------------+
|           1 | Charuta       |          90000 |
|           2 | Ayush         |          70000 |
+-------------+---------------+----------------+
2 rows in set (0.00 sec)

mysql> select *from employee_info order by employeeSalary;
+-------------+---------------+----------------+
| employee_id | employee_Name | employeeSalary |
+-------------+---------------+----------------+
|           5 | Kinjal        |          20000 |
|           4 | Kashish       |          60000 |
|           2 | Ayush         |          70000 |
|           3 | Mahesh        |          80000 |
|           1 | Charuta       |          90000 |
+-------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> select *from employee_info order by employee_Name;
+-------------+---------------+----------------+
| employee_id | employee_Name | employeeSalary |
+-------------+---------------+----------------+
|           2 | Ayush         |          70000 |
|           1 | Charuta       |          90000 |
|           4 | Kashish       |          60000 |
|           5 | Kinjal        |          20000 |
|           3 | Mahesh        |          80000 |
+-------------+---------------+----------------+
5 rows in set (0.02 sec)

mysql> select *from employee_info order by employee_Name desc;
+-------------+---------------+----------------+
| employee_id | employee_Name | employeeSalary |
+-------------+---------------+----------------+
|           3 | Mahesh        |          80000 |
|           5 | Kinjal        |          20000 |
|           4 | Kashish       |          60000 |
|           1 | Charuta       |          90000 |
|           2 | Ayush         |          70000 |
+-------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> select *from employee_info order by employeeSalary desc;
+-------------+---------------+----------------+
| employee_id | employee_Name | employeeSalary |
+-------------+---------------+----------------+
|           1 | Charuta       |          90000 |
|           3 | Mahesh        |          80000 |
|           2 | Ayush         |          70000 |
|           4 | Kashish       |          60000 |
|           5 | Kinjal        |          20000 |
+-------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> select *from employee_info order by employeeSalary desc limit 2;
+-------------+---------------+----------------+
| employee_id | employee_Name | employeeSalary |
+-------------+---------------+----------------+
|           1 | Charuta       |          90000 |
|           3 | Mahesh        |          80000 |
+-------------+---------------+----------------+
2 rows in set (0.00 sec)


mysql> select *from customer;
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| customer_id | name      | city     | email                    | phone_no   | address          | pin_code |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag   | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c102        | neha      | Mumbai   | nehakamat29@gmail.com    | 5467388399 | Gandhi Nagar     |   418012 |
| c103        | Vaishnavi | Pune     | vaishu09@gmail.com       | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi    | kumud9@gmail.com         | 8675645353 | Saki naka        |   123455 |
| c105        | Shweta    | Banglore | Shweta209@gmail.com      | 5765466777 | Tilak nagar road |   324567 |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
5 rows in set (0.00 sec)

mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| Alibag   |
| Mumbai   |
| Pune     |
| Delhi    |
| Banglore |
+----------+
5 rows in set (0.02 sec)

mysql> select city from customer;
+----------+
| city     |
+----------+
| Alibag   |
| Mumbai   |
| Pune     |
| Delhi    |
| Banglore |
+----------+
5 rows in set (0.03 sec)

mysql> select *from customer;
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| customer_id | name      | city     | email                    | phone_no   | address          | pin_code |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag   | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c102        | neha      | Mumbai   | nehakamat29@gmail.com    | 5467388399 | Gandhi Nagar     |   418012 |
| c103        | Vaishnavi | Pune     | vaishu09@gmail.com       | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi    | kumud9@gmail.com         | 8675645353 | Saki naka        |   123455 |
| c105        | Shweta    | Banglore | Shweta209@gmail.com      | 5765466777 | Tilak nagar road |   324567 |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer where customer_id between 'c101' and 'c104';
+-------------+-----------+--------+--------------------------+------------+------------------+----------+
| customer_id | name      | city   | email                    | phone_no   | address          | pin_code |
+-------------+-----------+--------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c102        | neha      | Mumbai | nehakamat29@gmail.com    | 5467388399 | Gandhi Nagar     |   418012 |
| c103        | Vaishnavi | Pune   | vaishu09@gmail.com       | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi  | kumud9@gmail.com         | 8675645353 | Saki naka        |   123455 |
+-------------+-----------+--------+--------------------------+------------+------------------+----------+
4 rows in set (0.03 sec)


mysql> select *from product;
+------------+--------------+-------------+--------------+----------------+---------------+-------+
| product_id | product_name | category    | sub_category | original_price | selling_price | stock |
+------------+--------------+-------------+--------------+----------------+---------------+-------+
| p101       | chair        | furniture   | office chair |           1000 |          2000 |   100 |
| p102       | television   | electronics | sony         |          20000 |         30000 |   200 |
| p103       | computer     | electronics | lenevo       |          50000 |         70000 |   500 |
| p104       | water bottle | essentails  | cello        |            250 |           300 |  1000 |
| p105       | pen          | stationary  | montex       |             10 |            20 |    50 |
+------------+--------------+-------------+--------------+----------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> select *from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      102 | c103        | p104       |       50 |       10000 | cash         | 2026-06-06 00:00:00 | delivered    |
|      103 | c104        | p103       |       30 |       10000 | gpay         | 2026-07-01 00:00:00 | shipping     |
|      104 | c105        | p105       |       60 |       30000 | cash         | 2026-08-07 00:00:00 | delivered    |
|      105 | c101        | p101       |       40 |       25000 | cash         | 2026-07-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+------
       ^C
mysql> select *from order_details where order_date between '2026-07-01' and '2026-08-07';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      103 | c104        | p103       |       30 |       10000 | gpay         | 2026-07-01 00:00:00 | shipping     |
|      104 | c105        | p105       |       60 |       30000 | cash         | 2026-08-07 00:00:00 | delivered    |
|      105 | c101        | p101       |       40 |       25000 | cash         | 2026-07-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select *from order_details where order_date not between '2026-07-01' and '2026-08-07';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      102 | c103        | p104       |       50 |       10000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)

mysql> select *from customer;
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| customer_id | name      | city     | email                    | phone_no   | address          | pin_code |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag   | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c102        | neha      | Mumbai   | nehakamat29@gmail.com    | 5467388399 | Gandhi Nagar     |   418012 |
| c103        | Vaishnavi | Pune     | vaishu09@gmail.com       | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi    | kumud9@gmail.com         | 8675645353 | Saki naka        |   123455 |
| c105        | Shweta    | Banglore | Shweta209@gmail.com      | 5765466777 | Tilak nagar road |   324567 |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer where customer_id in('c101','c103','c105');
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| customer_id | name      | city     | email                    | phone_no   | address          | pin_code |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag   | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c103        | Vaishnavi | Pune     | vaishu09@gmail.com       | 5566768898 | Sane guruji road |   467123 |
| c105        | Shweta    | Banglore | Shweta209@gmail.com      | 5765466777 | Tilak nagar road |   324567 |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
3 rows in set (0.02 sec)

mysql> select *from customer where customer_id not in('c101','c103','c105');
+-------------+-------+--------+-----------------------+------------+--------------+----------+
| customer_id | name  | city   | email                 | phone_no   | address      | pin_code |
+-------------+-------+--------+-----------------------+------------+--------------+----------+
| c102        | neha  | Mumbai | nehakamat29@gmail.com | 5467388399 | Gandhi Nagar |   418012 |
| c104        | Kumud | Delhi  | kumud9@gmail.com      | 8675645353 | Saki naka    |   123455 |
+-------------+-------+--------+-----------------------+------------+--------------+----------+
2 rows in set (0.00 sec)

mysql> select *from customer where city is null;
Empty set (0.02 sec)

mysql> select *from customer where city is not null;
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| customer_id | name      | city     | email                    | phone_no   | address          | pin_code |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag   | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c102        | neha      | Mumbai   | nehakamat29@gmail.com    | 5467388399 | Gandhi Nagar     |   418012 |
| c103        | Vaishnavi | Pune     | vaishu09@gmail.com       | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi    | kumud9@gmail.com         | 8675645353 | Saki naka        |   123455 |
| c105        | Shweta    | Banglore | Shweta209@gmail.com      | 5765466777 | Tilak nagar road |   324567 |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer where city = 'pune' and address = 'Saki naka';
Empty set (0.02 sec)

mysql> select *from customer where city = 'pune' or address = 'Saki naka';
+-------------+-----------+-------+--------------------+------------+------------------+----------+
| customer_id | name      | city  | email              | phone_no   | address          | pin_code |
+-------------+-----------+-------+--------------------+------------+------------------+----------+
| c103        | Vaishnavi | Pune  | vaishu09@gmail.com | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi | kumud9@gmail.com   | 8675645353 | Saki naka        |   123455 |
+-------------+-----------+-------+--------------------+------------+------------------+----------+
2 rows in set (0.02 sec)
