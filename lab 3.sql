/*

Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order

*/




mysql> create database student_info;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| bankdb                  |
| company                 |
| e_commerce              |
| information_schema      |
| murder_mystery          |
| mysql                   |
| onlineretail            |
| performance_schema      |
| sakila                  |
| student_info            |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
13 rows in set (0.01 sec)

mysql> use student_info;
Database changed

mysql> create table student(stud_id int primary key, firstname varchar (40) not null, lastname varchar (50) not null, age int, phoneno int not null, address varchar (60) not null);
Query OK, 0 rows affected (0.19 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| stud_id   | int         | NO   | PRI | NULL    |       |
| firstname | varchar(40) | NO   |     | NULL    |       |
| lastname  | varchar(50) | NO   |     | NULL    |       |
| age       | int         | YES  |     | NULL    |       |
| phoneno   | int         | NO   |     | NULL    |       |
| address   | varchar(60) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.02 sec)

mysql> create table student(stud_id int primary key, firstname varchar (40) not null, lastname varchar (50) not null, age int, phoneno varchar(60) not null, address varchar (60) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into student values (101, 'Rahul', 'Sharma', 20, '9876543210', 'Mumbai'),(102, 'Priya', 'Patel', 21, '9876543211', 'Pune'),(103, 'Amit', 'Kumar', 22, '9876543212', 'Delhi'),(104, 'Neha', 'Singh', 19, '9876543213', 'Nagpur'),(105, 'Rohan', 'Mehta', 20, '9876543214', 'Nashik');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from student;
+---------+-----------+----------+------+------------+---------+
| stud_id | firstname | lastname | age  | phoneno    | address |
+---------+-----------+----------+------+------------+---------+
|     101 | Rahul     | Sharma   |   20 | 9876543210 | Mumbai  |
|     102 | Priya     | Patel    |   21 | 9876543211 | Pune    |
|     103 | Amit      | Kumar    |   22 | 9876543212 | Delhi   |
|     104 | Neha      | Singh    |   19 | 9876543213 | Nagpur  |
|     105 | Rohan     | Mehta    |   20 | 9876543214 | Nashik  |
+---------+-----------+----------+------+------------+---------+
5 rows in set (0.00 sec)

mysql> select *from student order by lastname asc;
+---------+-----------+----------+------+------------+---------+
| stud_id | firstname | lastname | age  | phoneno    | address |
+---------+-----------+----------+------+------------+---------+
|     103 | Amit      | Kumar    |   22 | 9876543212 | Delhi   |
|     105 | Rohan     | Mehta    |   20 | 9876543214 | Nashik  |
|     102 | Priya     | Patel    |   21 | 9876543211 | Pune    |
|     101 | Rahul     | Sharma   |   20 | 9876543210 | Mumbai  |
|     104 | Neha      | Singh    |   19 | 9876543213 | Nagpur  |
+---------+-----------+----------+------+------------+---------+
5 rows in set (0.00 sec)

mysql>