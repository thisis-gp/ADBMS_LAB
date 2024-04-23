mysql> create table customer(CNO varchar(8),NAME varchar(27),ADDRESS varchar(27),CITY varchar(25));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into customer values("C1","Rahat","Thapar Campus","Patiala");
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values("C2","Ruhi","Tagore Nagar","Jalandhar");
Query OK, 1 row affected (0.00 sec)

mysql> insert into customer values("C3","Chahat","Dharampura","Qadian");
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values("C4","Pooja","GNDU","Amristar");
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+------+--------+---------------+-----------+
| CNO  | NAME   | ADDRESS       | CITY      |
+------+--------+---------------+-----------+
| C1   | Rahat  | Thapar Campus | Patiala   |
| C2   | Ruhi   | Tagore Nagar  | Jalandhar |
| C3   | Chahat | Dharampura    | Qadian    |
| C4   | Pooja  | GNDU          | Amristar  |
+------+--------+---------------+-----------+
4 rows in set (0.00 sec)

mysql> create table loan(CNO varchar(8),LNO varchar(27),AMOUNT int);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into loan values("C2","L1",10000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into loan values("C3","L2",15000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into loan values("C3","L3",25000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into loan values("C4","L4",35000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from loan;
+------+------+--------+
| CNO  | LNO  | AMOUNT |
+------+------+--------+
| C1   | L1   |  10000 |
| C2   | L1   |  10000 |
| C3   | L2   |  15000 |
| C3   | L3   |  25000 |
| C4   | L4   |  35000 |
+------+------+--------+
5 rows in set (0.00 sec)

mysql> CREATE TABLE SALESMAN(SALESMAN_ID int,NAME varchar(30),CITY varchar(50),COMMISSION float);
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO SALESMAN VALUES(5001,'James Hoog','New York',0.15);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO SALESMAN VALUES(5002,'Nil Knite','Paris',0.13);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO SALESMAN VALUES(5005,'Pit Alex','London',0.11);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO SALESMAN VALUES(5006,'MC Lyon','Paris',0.14);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM SALESMAN ;
+-------------+------------+----------+------------+
| SALESMAN_ID | NAME       | CITY     | COMMISSION |
+-------------+------------+----------+------------+
|        5001 | James Hoog | New York |       0.15 |
|        5002 | Nil Knite  | Paris    |       0.13 |
|        5005 | Pit Alex   | London   |       0.11 |
|        5006 | MC Lyon    | Paris    |       0.14 |
+-------------+------------+----------+------------+
4 rows in set (0.00 sec)

mysql>
mysql>
mysql> CREATE TABLE CUSTOMER(CUSTOMER_ID int,CUSTOMER_NAME varchar(30),CITY varchar(50),GRADE int,SALESMAN_ID int);
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO CUSTOMER VALUES(3002,'Nick Rimando','New York',100,5001);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO CUSTOMER VALUES(3005,'Graham Zusi','California',200,5002);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CUSTOMER VALUES(3004,'Fabian Johns','Paris',300,5006);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CUSTOMER VALUES(3007,'Brad Davis','New York',200,5001);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM CUSTOMER ;
+-------------+---------------+------------+-------+-------------+
| CUSTOMER_ID | CUSTOMER_NAME | CITY       | GRADE | SALESMAN_ID |
+-------------+---------------+------------+-------+-------------+
|        3002 | Nick Rimando  | New York   |   100 |        5001 |
|        3005 | Graham Zusi   | California |   200 |        5002 |
|        3004 | Fabian Johns  | Paris      |   300 |        5006 |
|        3007 | Brad Davis    | New York   |   200 |        5001 |
+-------------+---------------+------------+-------+-------------+
4 rows in set (0.00 sec)

mysql>
mysql>
mysql> CREATE TABLE ORDERS(ORDER_NO int,PURCH_AMT float,ORDER_DATE date,CUSTOMER_ID int,SALESMAN_ID int);
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO ORDERS VALUES(70001,150.5,'2016-10-05',3005,5002);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ORDERS VALUES(70002,65.26,'2016-10-05',3002,5001);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ORDERS VALUES(70007,948.5,'2016-09-10',3005,5006);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ORDERS VALUES(70005,2400.6,'2016-07-27',3007,5001);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM ORDERS ;
+----------+-----------+------------+-------------+-------------+
| ORDER_NO | PURCH_AMT | ORDER_DATE | CUSTOMER_ID | SALESMAN_ID |
+----------+-----------+------------+-------------+-------------+
|    70001 |     150.5 | 2016-10-05 |        3005 |        5002 |
|    70002 |     65.26 | 2016-10-05 |        3002 |        5001 |
|    70007 |     948.5 | 2016-09-10 |        3005 |        5006 |
|    70005 |    2400.6 | 2016-07-27 |        3007 |        5001 |
+----------+-----------+------------+-------------+-------------+
4 rows in set (0.00 sec)