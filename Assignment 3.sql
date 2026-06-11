
mysql> use e_commerce;
Database changed
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

mysql> select * from employee_details;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          1 | Charuta Kamat   |          50000 |
|          2 | Vidya Bhagat    |          25000 |
|          3 | Vishakha Gosavi |          90000 |
|          4 | Parth Sakpal    |          70000 |
|          5 | Sukhda Wagle    |          60000 |
+------------+-----------------+----------------+
5 rows in set (0.00 sec)

mysql> alter table employee_details  rename employee;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from employee;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          1 | Charuta Kamat   |          50000 |
|          2 | Vidya Bhagat    |          25000 |
|          3 | Vishakha Gosavi |          90000 |
|          4 | Parth Sakpal    |          70000 |
|          5 | Sukhda Wagle    |          60000 |
+------------+-----------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee where employeeSalary >50000;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          3 | Vishakha Gosavi |          90000 |
|          4 | Parth Sakpal    |          70000 |
|          5 | Sukhda Wagle    |          60000 |
+------------+-----------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from employee order by employeeSalary desc;
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

mysql> select * from employee order by employeeSalary;
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

mysql> create table orders(order_id int primary key, department varchar(40) not null, amount double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into orders values(1, 'sales', 1000), (2, 'sales', 1500),(3, 'HR', 800);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   1500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department, avg(amount) as total_avg from orders group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| sales      |      1250 |
| HR         |       800 |
+------------+-----------+
2 rows in set (0.00 sec)

mysql> select department,sum(amount) as total_amount from orders group by department having sum(amount) >1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
+------------+--------------+
1 row in set (0.00 sec)

mysql> select *from employee;
+------------+-----------------+----------------+
| employeeID | employeeName    | employeeSalary |
+------------+-----------------+----------------+
|          1 | Charuta Kamat   |          50000 |
|          2 | Vidya Bhagat    |          25000 |
|          3 | Vishakha Gosavi |          90000 |
|          4 | Parth Sakpal    |          70000 |
|          5 | Sukhda Wagle    |          60000 |
+------------+-----------------+----------------+
5 rows in set (0.00 sec)

mysql> create table employee_deatils(employeeID int not null, name varchar(40) not null, department varchar (40) not null, salary double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> drop table employee_deatils;
Query OK, 0 rows affected (0.02 sec)

mysql> create table employee_details(employeeID int not null, name varchar(40) not null, department varchar (40) not null, salary double not null);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into employee_details values (1, 'Charuta Kamat', 'HR', 5000), (2, 'Sakshi Singh', 'IT', 7000), (3, 'Bharti Patil', 'IT', 6000), (4, 'Neha Shanbhag', 'HR', 5000), (5, 'Riya Biswas', 'Finance', 4500);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee_details;
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|          1 | Charuta Kamat | HR         |   5000 |
|          2 | Sakshi Singh  | IT         |   7000 |
|          3 | Bharti Patil  | IT         |   6000 |
|          4 | Neha Shanbhag | HR         |   5000 |
|          5 | Riya Biswas   | Finance    |   4500 |
+------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee_details group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| Finance    |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee_details group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        10000 |
| IT         |        13000 |
| Finance    |         4500 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department, avg(salary) as total_avg from employee_details group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| HR         |      5000 |
| IT         |      6500 |
| Finance    |      4500 |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> select department, salary, count(*) from employee_details group by department, salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |   5000 |        2 |
| IT         |   7000 |        1 |
| IT         |   6000 |        1 |
| Finance    |   4500 |        1 |
+------------+--------+----------+
4 rows in set (0.00 sec)

mysql> select *from employee_details;
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|          1 | Charuta Kamat | HR         |   5000 |
|          2 | Sakshi Singh  | IT         |   7000 |
|          3 | Bharti Patil  | IT         |   6000 |
|          4 | Neha Shanbhag | HR         |   5000 |
|          5 | Riya Biswas   | Finance    |   4500 |
+------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total from employee_details group by department having count(*) >1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.00 sec)

mysql> select department, count(*) as total from employee_details group by department having count(*) <=1;
+------------+-------+
| department | total |
+------------+-------+
| Finance    |     1 |
+------------+-------+
1 row in set (0.00 sec)

mysql> select department, count(*) from employee_details group by department having count(*) > 1;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        2 |
+------------+----------+
2 rows in set (0.00 sec)

mysql>