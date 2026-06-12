
mysql> create database joins;
Query OK, 1 row affected (0.01 sec)

mysql> use joins;
Database changed
mysql> create table department(department_id int not null primary key, department_name varchar (30) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(30) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into department values(1, 'HR'),(2, 'IT'), (3, 'Finance'),(4, 'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> create table employee(employee_id int primary key not null, employee_name varchar (50) not null, department_id int, foreign key (department_id) references department(department_id));
Query OK, 0 rows affected (0.06 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(1, 'Charuta', 1), (2, 'Riya', 2),(3, 'Vidya', 1), (4, 'Roshani', null), (5, 'Krish', 4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | Charuta       |             1 |
|           2 | Riya          |             2 |
|           3 | Vidya         |             1 |
|           4 | Roshani       |          NULL |
|           5 | Krish         |             4 |
+-------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee inner join department on employee.department_id = department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Charuta       | HR              |
| Vidya         | HR              |
| Riya          | IT              |
| Krish         | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee left join department on employee.department_id = department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Charuta       | HR              |
| Riya          | IT              |
| Vidya         | HR              |
| Roshani       | NULL            |
| Krish         | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | Charuta       |             1 |
|           2 | Riya          |             2 |
|           3 | Vidya         |             1 |
|           4 | Roshani       |          NULL |
|           5 | Krish         |             4 |
+-------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee right join department on employee.department_id = department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Charuta       | HR              |
| Vidya         | HR              |
| Riya          | IT              |
| NULL          | Finance         |
| Krish         | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Charuta       | Marketing       |
| Charuta       | Finance         |
| Charuta       | IT              |
| Charuta       | HR              |
| Riya          | Marketing       |
| Riya          | Finance         |
| Riya          | IT              |
| Riya          | HR              |
| Vidya         | Marketing       |
| Vidya         | Finance         |
| Vidya         | IT              |
| Vidya         | HR              |
| Roshani       | Marketing       |
| Roshani       | Finance         |
| Roshani       | IT              |
| Roshani       | HR              |
| Krish         | Marketing       |
| Krish         | Finance         |
| Krish         | IT              |
| Krish         | HR              |
+---------------+-----------------+
20 rows in set (0.00 sec)

mysql>