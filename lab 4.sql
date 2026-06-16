/*

Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.

*/


create database studmanagementsystem;
Query OK, 1 row affected (0.01 sec)

mysql> use  studmanagementsystem;
Database changed

mysql> CREATE TABLE Student (
    ->     StudentId INT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> desc Student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentId | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(50) | YES  |     | NULL    |       |
| LastName  | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> INSERT INTO Student VALUES
    -> (1, 'Charuta', 'Kamat'),
    -> (2, 'Arjun', 'Singh'),
    -> (3, 'Shweta', 'Bhosale'),
    -> (4, 'Ayush', 'Jivale'),
    -> (5, 'Mahesh', 'Pandhare');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Student;
+-----------+-----------+----------+
| StudentId | FirstName | LastName |
+-----------+-----------+----------+
|         1 | Charuta   | Kamat    |
|         2 | Arjun     | Singh    |
|         3 | Shweta    | Bhosale  |
|         4 | Ayush     | Jivale   |
|         5 | Mahesh    | Pandhare |
+-----------+-----------+----------+
5 rows in set (0.00 sec)

CREATE TABLE Course (
    ->     CourseId INT PRIMARY KEY,
    ->     CourseName VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> desc Course;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| CourseId   | int         | NO   | PRI | NULL    |       |
| CourseName | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO Course VALUES
    -> (101, 'DBMS'),
    -> (102, 'Python'),
    -> (103, 'Machine Learning'),
    -> (104, 'Java'),
    -> (105, 'Web Development');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from Course;
+----------+------------------+
| CourseId | CourseName       |
+----------+------------------+
|      101 | DBMS             |
|      102 | Python           |
|      103 | Machine Learning |
|      104 | Java             |
|      105 | Web Development  |
+----------+------------------+
5 rows in set (0.00 sec)

 CREATE TABLE Enrollment (
    ->     EnrollmentId INT PRIMARY KEY,
    ->     StudentId INT,
    ->     CourseId INT,
    ->     FOREIGN KEY (StudentId) REFERENCES Student(StudentId),
    ->     FOREIGN KEY (CourseId) REFERENCES Course(CourseId)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> desc Enrollment;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| EnrollmentId | int  | NO   | PRI | NULL    |       |
| StudentId    | int  | YES  | MUL | NULL    |       |
| CourseId     | int  | YES  | MUL | NULL    |       |
+--------------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)


 INSERT INTO Enrollment VALUES
    -> (1, 1, 101),
    -> (2, 2, 102),
    -> (3, 3, 103),
    -> (4, 4, 104),
    -> (5, 5, 105);
Query OK, 5 rows affected (0.01 sec)

mysql> select *from Enrollment;
+--------------+-----------+----------+
| EnrollmentId | StudentId | CourseId |
+--------------+-----------+----------+
|            1 |         1 |      101 |
|            2 |         2 |      102 |
|            3 |         3 |      103 |
|            4 |         4 |      104 |
|            5 |         5 |      105 |
+--------------+-----------+----------+
5 rows in set (0.00 sec)

mysql> SELECT
    ->     s.StudentId,
    ->     s.FirstName,
    ->     s.LastName,
    ->     c.CourseId,
    ->     c.CourseName
    -> FROM Student s
    -> INNER JOIN Enrollment e
    -> ON s.StudentId = e.StudentId
    -> INNER JOIN Course c
    -> ON e.CourseId = c.CourseId;
+-----------+-----------+----------+----------+------------------+
| StudentId | FirstName | LastName | CourseId | CourseName       |
+-----------+-----------+----------+----------+------------------+
|         1 | Charuta   | Kamat    |      101 | DBMS             |
|         2 | Arjun     | Singh    |      102 | Python           |
|         3 | Shweta    | Bhosale  |      103 | Machine Learning |
|         4 | Ayush     | Jivale   |      104 | Java             |
|         5 | Mahesh    | Pandhare |      105 | Web Development  |
+-----------+-----------+----------+----------+------------------+
5 rows in set (0.00 sec)

