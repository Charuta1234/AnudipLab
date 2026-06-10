
mysql> select *from employee_details;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          1 | Charuta Kamat   |          50000 |
|          2 | Vidya Bhagat    |          25000 |
|          3 | Vishakha Gosavi |          90000 |
|          4 | Parth Sakpal    |          70000 |
|          5 | Sukhda Wagle    |          60000 |
+------------+-----------------+----------------+
5 rows in set (0.01 sec)

mysql> select *from employee_details limit 3;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          1 | Charuta Kamat   |          50000 |
|          2 | Vidya Bhagat    |          25000 |
|          3 | Vishakha Gosavi |          90000 |
+------------+-----------------+----------------+
3 rows in set (0.01 sec)

mysql> select *from employee_details limit 2;
+------------+---------------+----------------+
| employeeID | employeeName  | employeeSalary |
+------------+---------------+----------------+
|          1 | Charuta Kamat |          50000 |
|          2 | Vidya Bhagat  |          25000 |
+------------+---------------+----------------+
2 rows in set (0.00 sec)

mysql> select *from employee_details order by employeeSalary;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          2 | Vidya Bhagat    |          25000 |
|          1 | Charuta Kamat   |          50000 |
|          5 | Sukhda Wagle    |          60000 |
|          4 | Parth Sakpal    |          70000 |
|          3 | Vishakha Gosavi |          90000 |
+------------+-----------------+----------------+
5 rows in set (0.00 sec)

mysql> select *from employee_details order by employeeName;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          1 | Charuta Kamat   |          50000 |
|          4 | Parth Sakpal    |          70000 |
|          5 | Sukhda Wagle    |          60000 |
|          2 | Vidya Bhagat    |          25000 |
|          3 | Vishakha Gosavi |          90000 |
+------------+-----------------+----------------+
5 rows in set (0.00 sec)

mysql> select *from employee_details order by employeeName desc;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          3 | Vishakha Gosavi |          90000 |
|          2 | Vidya Bhagat    |          25000 |
|          5 | Sukhda Wagle    |          60000 |
|          4 | Parth Sakpal    |          70000 |
|          1 | Charuta Kamat   |          50000 |
+------------+-----------------+----------------+
5 rows in set (0.00 sec)

mysql> select *from employee_details order by employeeSalary desc;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          3 | Vishakha Gosavi |          90000 |
|          4 | Parth Sakpal    |          70000 |
|          5 | Sukhda Wagle    |          60000 |
|          1 | Charuta Kamat   |          50000 |
|          2 | Vidya Bhagat    |          25000 |
+------------+-----------------+----------------+
5 rows in set (0.00 sec)

mysql> select *from employee_details order by employeeSalary desc limit 2;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          3 | Vishakha Gosavi |          90000 |
|          4 | Parth Sakpal    |          70000 |
+------------+-----------------+----------------+
2 rows in set (0.00 sec)

mysql> select *from customer;
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| customer_id | name      | city     | email                    | phone_no   | address          | pin_code |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag   | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c102        | neha      | Mumbai   | nehakamat@29@gmail.com   | 5467388399 | Gandhi Nagar     |   418012 |
| c103        | Vaishnavi | Pune     | vaishu@09@gmail.com      | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi    | kumud9@gmail.com         | 8675645353 | Saki naka        |   123455 |
| c105        | Shweta    | Banglore | Shweta@09@gmail.com      | 5765466777 | Tilak nagar road |   324567 |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
5 rows in set (0.00 sec)

mysql> select distinct city from cuatomer;
ERROR 1146 (42S02): Table 'e_commerce.cuatomer' doesn't exist
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
5 rows in set (0.03 sec)

mysql> select not distinct city from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'distinct city from customer' at line 1
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
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| customer_id | name      | city     | email                    | phone_no   | address          | pin_code |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag   | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c102        | neha      | Mumbai   | nehakamat@29@gmail.com   | 5467388399 | Gandhi Nagar     |   418012 |
| c103        | Vaishnavi | Pune     | vaishu@09@gmail.com      | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi    | kumud9@gmail.com         | 8675645353 | Saki naka        |   123455 |
| c105        | Shweta    | Banglore | Shweta@09@gmail.com      | 5765466777 | Tilak nagar road |   324567 |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+-----------+--------+--------------------------+------------+------------------+----------+
| customer_id | name      | city   | email                    | phone_no   | address          | pin_code |
+-------------+-----------+--------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c102        | neha      | Mumbai | nehakamat@29@gmail.com   | 5467388399 | Gandhi Nagar     |   418012 |
| c103        | Vaishnavi | Pune   | vaishu@09@gmail.com      | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi  | kumud9@gmail.com         | 8675645353 | Saki naka        |   123455 |
+-------------+-----------+--------+--------------------------+------------+------------------+----------+
4 rows in set (0.00 sec)

mysql> select *from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p104       |       50 |       10000 | cash         | 2026-06-06 00:00:00 | delivered    |
|      103 | c104        | p103       |       30 |       10000 | gpay         | 2026-07-01 00:00:00 | shipping     |
|      104 | c105        | p105       |       60 |       30000 | cash         | 2026-08-07 00:00:00 | delivered    |
|      105 | c101        | p101       |       40 |       25000 | cash         | 2026-07-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> select *from order_details where order_date between '2026-01-01' and '2026-07-03';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p104       |       50 |       10000 | cash         | 2026-06-06 00:00:00 | delivered    |
|      103 | c104        | p103       |       30 |       10000 | gpay         | 2026-07-01 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select *from order_details where order_date not between '2026-01-01' and '2026-07-03';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      104 | c105        | p105       |       60 |       30000 | cash         | 2026-08-07 00:00:00 | delivered    |
|      105 | c101        | p101       |       40 |       25000 | cash         | 2026-07-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select *from customer;
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| customer_id | name      | city     | email                    | phone_no   | address          | pin_code |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag   | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c102        | neha      | Mumbai   | nehakamat@29@gmail.com   | 5467388399 | Gandhi Nagar     |   418012 |
| c103        | Vaishnavi | Pune     | vaishu@09@gmail.com      | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi    | kumud9@gmail.com         | 8675645353 | Saki naka        |   123455 |
| c105        | Shweta    | Banglore | Shweta@09@gmail.com      | 5765466777 | Tilak nagar road |   324567 |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer where customer_id in('c101', 'c103', 'c105');
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| customer_id | name      | city     | email                    | phone_no   | address          | pin_code |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag   | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c103        | Vaishnavi | Pune     | vaishu@09@gmail.com      | 5566768898 | Sane guruji road |   467123 |
| c105        | Shweta    | Banglore | Shweta@09@gmail.com      | 5765466777 | Tilak nagar road |   324567 |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
3 rows in set (0.00 sec)

mysql> select *from customer where customer_id not in('c101', 'c103', 'c105');
+-------------+-------+--------+------------------------+------------+--------------+----------+
| customer_id | name  | city   | email                  | phone_no   | address      | pin_code |
+-------------+-------+--------+------------------------+------------+--------------+----------+
| c102        | neha  | Mumbai | nehakamat@29@gmail.com | 5467388399 | Gandhi Nagar |   418012 |
| c104        | Kumud | Delhi  | kumud9@gmail.com       | 8675645353 | Saki naka    |   123455 |
+-------------+-------+--------+------------------------+------------+--------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is not null;
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| customer_id | name      | city     | email                    | phone_no   | address          | pin_code |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
| c101        | charuta   | Alibag   | charutakamat19@gmail.com | 7722046108 | Ram nagar        |   402108 |
| c102        | neha      | Mumbai   | nehakamat@29@gmail.com   | 5467388399 | Gandhi Nagar     |   418012 |
| c103        | Vaishnavi | Pune     | vaishu@09@gmail.com      | 5566768898 | Sane guruji road |   467123 |
| c104        | Kumud     | Delhi    | kumud9@gmail.com         | 8675645353 | Saki naka        |   123455 |
| c105        | Shweta    | Banglore | Shweta@09@gmail.com      | 5765466777 | Tilak nagar road |   324567 |
+-------------+-----------+----------+--------------------------+------------+------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city= 'Mumbai' and address = 'Ram nagar';
Empty set (0.00 sec)

mysql> select * from customer where city= 'Mumbai' or address = 'Ram nagar';
+-------------+---------+--------+--------------------------+------------+--------------+----------+
| customer_id | name    | city   | email                    | phone_no   | address      | pin_code |
+-------------+---------+--------+--------------------------+------------+--------------+----------+
| c101        | charuta | Alibag | charutakamat19@gmail.com | 7722046108 | Ram nagar    |   402108 |
| c102        | neha    | Mumbai | nehakamat@29@gmail.com   | 5467388399 | Gandhi Nagar |   418012 |
+-------------+---------+--------+--------------------------+------------+--------------+----------+
2 rows in set (0.00 sec)

mysql>