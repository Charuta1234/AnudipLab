/*     
Create Database StudentManagementSystem

1.Create Table student with attribute:  

●StudentID (Primary Key)
●Name
●Age
●Address


2.Create a table with named Feedback  with attributes:

● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table

 */



mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.03 sec)

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| company                 |
| e_commerce              |
| information_schema      |
| murder_mystery          |
| mysql                   |
| onlineretail            |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
11 rows in set (0.01 sec)

mysql> create table student(studentID varchar(10) not null primary key, name varchar(100) not null, age int not null, address varchar(50));
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| student                           |
+-----------------------------------+
1 row in set (0.00 sec)

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| studentID | varchar(10)  | NO   | PRI | NULL    |       |
| name      | varchar(100) | NO   |     | NULL    |       |
| age       | int          | NO   |     | NULL    |       |
| address   | varchar(50)  | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select *from student;
Empty set (0.00 sec)

mysql> insert into student values ('s101','charuta', 23,'alibag'),('s102', 'neha', 27,'Banglore'), ('s103', 'Jyoti', 35,'Delhi'),('s104', 'Mitali', 40,'Hydrabad'),('s105','Shweta',38,'Delhi'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql>  insert into student values ('s101','charuta', 23,'alibag'),('s102', 'neha', 27,'Banglore'), ('s103', 'Jyoti', 35,'Delhi'),('s104', 'Mitali', 40,'Hydrabad'),('s105','Shweta',38,'Delhi');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from student;
+-----------+---------+-----+----------+
| studentID | name    | age | address  |
+-----------+---------+-----+----------+
| s101      | charuta |  23 | alibag   |
| s102      | neha    |  27 | Banglore |
| s103      | Jyoti   |  35 | Delhi    |
| s104      | Mitali  |  40 | Hydrabad |
| s105      | Shweta  |  38 | Delhi    |
+-----------+---------+-----+----------+
5 rows in set (0.00 sec)

mysql> create table feedback(feedbackID varchar(10) not null primary key, studentID varchar(10) not null, date date not null, instructorname varchar (50) not null, foreign key (studentID) references student (studentID));
Query OK, 0 rows affected (0.09 sec)

mysql> insert into feedback values('f101','s101','2025-06-01','mr.das','poor performance'), ('f102','s102','2025-07-02','mr.kulkarni','exllent performance'), ('f103','s103','2025-08-01','mr.wagle','poor performance'), ('f104','s104','2025-06-02','mr.kamat','excellent performance'),('f105','s105','2025-09-01','mr.pandhare','excellent performance');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> ALTER TABLE feedback
    -> ADD COLUMN feedback VARCHAR(255);
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into feedback values('f101','s101','2025-06-01','mr.das','poor performance'), ('f102','s102','2025-07-02','mr.kulkarni','exllent performance'), ('f103','s103','2025-08-01','mr.wagle','poor performance'), ('f104','s104','2025-06-02','mr.kamat','excellent performance'),('f105','s105','2025-09-01','mr.pandhare','excellent performance');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from feedback;
+------------+-----------+------------+----------------+-----------------------+
| feedbackID | studentID | date       | instructorname | feedback              |
+------------+-----------+------------+----------------+-----------------------+
| f101       | s101      | 2025-06-01 | mr.das         | poor performance      |
| f102       | s102      | 2025-07-02 | mr.kulkarni    | exllent performance   |
| f103       | s103      | 2025-08-01 | mr.wagle       | poor performance      |
| f104       | s104      | 2025-06-02 | mr.kamat       | excellent performance |
| f105       | s105      | 2025-09-01 | mr.pandhare    | excellent performance |
+------------+-----------+------------+----------------+-----------------------+
5 rows in set (0.00 sec)

mysql> select *from student;
+-----------+---------+-----+----------+
| studentID | name    | age | address  |
+-----------+---------+-----+----------+
| s101      | charuta |  23 | alibag   |
| s102      | neha    |  27 | Banglore |
| s103      | Jyoti   |  35 | Delhi    |
| s104      | Mitali  |  40 | Hydrabad |
| s105      | Shweta  |  38 | Delhi    |
+-----------+---------+-----+----------+
5 rows in set (0.00 sec)

mysql>