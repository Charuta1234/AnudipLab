
mysql> ^C
mysql> use e_commerce;
Database changed
mysql> create table employee(employeeID int (10) not null primary key, employeeName varchar (50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> insert into employee values(1, 'Charuta Kamat', 50000), (2, 'Vidya Bhagat', 25000), (3, 'Vishakha Gosavi', 90000), (4, 'Parth Sakpal', 70000), (5, 'Sukhda Wagle', 60000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+------------+-----------------+--------+
| employeeID | employeeName    | salary |
+------------+-----------------+--------+
|          1 | Charuta Kamat   |  50000 |
|          2 | Vidya Bhagat    |  25000 |
|          3 | Vishakha Gosavi |  90000 |
|          4 | Parth Sakpal    |  70000 |
|          5 | Sukhda Wagle    |  60000 |
+------------+-----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary=80000 where employeeID=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from employee;
+------------+-----------------+--------+
| employeeID | employeeName    | salary |
+------------+-----------------+--------+
|          1 | Charuta Kamat   |  50000 |
|          2 | Vidya Bhagat    |  25000 |
|          3 | Vishakha Gosavi |  90000 |
|          4 | Parth Sakpal    |  70000 |
|          5 | Sukhda Wagle    |  80000 |
+------------+-----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set employeeName='Anup Pal' where employeeID=2;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from employee;
+------------+-----------------+--------+
| employeeID | employeeName    | salary |
+------------+-----------------+--------+
|          1 | Charuta Kamat   |  50000 |
|          2 | Anup Pal        |  25000 |
|          3 | Vishakha Gosavi |  90000 |
|          4 | Parth Sakpal    |  70000 |
|          5 | Sukhda Wagle    |  80000 |
+------------+-----------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee where employeeID=5;
Query OK, 1 row affected (0.01 sec)

mysql> select *from employee;
+------------+-----------------+--------+
| employeeID | employeeName    | salary |
+------------+-----------------+--------+
|          1 | Charuta Kamat   |  50000 |
|          2 | Anup Pal        |  25000 |
|          3 | Vishakha Gosavi |  90000 |
|          4 | Parth Sakpal    |  70000 |
+------------+-----------------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee;
Query OK, 4 rows affected (0.01 sec)

mysql> select *from employee;
Empty set (0.00 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into employee values(1, 'Charuta Kamat', 50000), (2, 'Vidya Bhagat', 25000), (3, 'Vishakha Gosavi', 90000), (4, 'Parth Sakpal', 70000), (5, 'Sukhda Wagle', 60000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+------------+-----------------+--------+
| employeeID | employeeName    | salary |
+------------+-----------------+--------+
|          1 | Charuta Kamat   |  50000 |
|          2 | Vidya Bhagat    |  25000 |
|          3 | Vishakha Gosavi |  90000 |
|          4 | Parth Sakpal    |  70000 |
|          5 | Sukhda Wagle    |  60000 |
+------------+-----------------+--------+
5 rows in set (0.00 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.04 sec)

mysql> select *from employee;
Empty set (0.00 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.03 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> create table employee(employeeID int (10) not null primary key, employeeName varchar (50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> insert into employee values(1, 'Charuta Kamat', 50000), (2, 'Vidya Bhagat', 25000), (3, 'Vishakha Gosavi', 90000), (4, 'Parth Sakpal', 70000), (5, 'Sukhda Wagle', 60000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+------------+-----------------+--------+
| employeeID | employeeName    | salary |
+------------+-----------------+--------+
|          1 | Charuta Kamat   |  50000 |
|          2 | Vidya Bhagat    |  25000 |
|          3 | Vishakha Gosavi |  90000 |
|          4 | Parth Sakpal    |  70000 |
|          5 | Sukhda Wagle    |  60000 |
+------------+-----------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee add email varchar(100) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(50)  | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee modify employeeName varchar(100) not null;
Query OK, 5 rows affected (0.09 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee drop column email;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename column salary to employeeSalary;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.04 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details drop primary key;
Query OK, 5 rows affected (0.11 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   |     | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> alter table employee_details add constraint primary key(employeeID);
Query OK, 0 rows affected (0.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_deatils;
ERROR 1146 (42S02): Table 'e_commerce.employee_deatils' doesn't exist
mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc e_commerce;
ERROR 1146 (42S02): Table 'e_commerce.e_commerce' doesn't exist
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.01 sec)

mysql>