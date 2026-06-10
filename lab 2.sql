/* 

Lab 1: Database Schema: Consider a simple database with one tables: BankAccount BankAccount

 Table:  Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101

*/




mysql> create database BankDB;
Query OK, 1 row affected (0.02 sec)

mysql> use BankDB;
Database changed
mysql> CREATE TABLE BankAccount (
    ->     account_id INT PRIMARY KEY,
    ->     account_holder_name VARCHAR(100),
    ->     account_balance DECIMAL(10,2)
    ->    );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO BankAccount
    -> (account_id, account_holder_name, account_balance)
    -> VALUES
    -> (101, 'Rahul Sharma', 25000.00),
    -> (102, 'Priya Patel', 35000.00),
    -> (103, 'Amit Kumar', 45000.00),
    -> (104, 'Neha Singh', 28000.00),
    -> (105, 'Rohan Mehta', 50000.00);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Rahul Sharma        |        25000.00 |
|        102 | Priya Patel         |        35000.00 |
|        103 | Amit Kumar          |        45000.00 |
|        104 | Neha Singh          |        28000.00 |
|        105 | Rohan Mehta         |        50000.00 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name, account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rahul Sharma        |        25000.00 |
| Priya Patel         |        35000.00 |
| Amit Kumar          |        45000.00 |
| Neha Singh          |        28000.00 |
| Rohan Mehta         |        50000.00 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name, account_balance from BankAccount where account_balance >30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Priya Patel         |        35000.00 |
| Amit Kumar          |        45000.00 |
| Rohan Mehta         |        50000.00 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> UPDATE BankAccount
    -> SET account_balance = 40000
    -> WHERE account_id = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from BankAccount where account_id = 101;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Rahul Sharma        |        40000.00 |
+------------+---------------------+-----------------+
1 row in set (0.00 sec)

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Rahul Sharma        |        40000.00 |
|        102 | Priya Patel         |        35000.00 |
|        103 | Amit Kumar          |        45000.00 |
|        104 | Neha Singh          |        28000.00 |
|        105 | Rohan Mehta         |        50000.00 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql>