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

mysql> SELECT NAME,COMMISSION FROM SALESMAN;
+------------+------------+
| NAME       | COMMISSION |
+------------+------------+
| James Hoog |       0.15 |
| Nil Knite  |       0.13 |
| Pit Alex   |       0.11 |
| MC Lyon    |       0.14 |
+------------+------------+
4 rows in set (0.00 sec)

mysql> SELECT DISTINCT SALESMAN_ID FROM ORDERS;
+-------------+
| SALESMAN_ID |
+-------------+
|        5002 |
|        5001 |
|        5006 |
+-------------+
3 rows in set (0.00 sec)

mysql> SELECT NAME,CITY FROM SALESMAN WHERE CITY='Paris';
+-----------+-------+
| NAME      | CITY  |
+-----------+-------+
| Nil Knite | Paris |
| MC Lyon   | Paris |
+-----------+-------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM CUSTOMER WHERE GRADE=200;
+-------------+---------------+------------+-------+-------------+
| CUSTOMER_ID | CUSTOMER_NAME | CITY       | GRADE | SALESMAN_ID |
+-------------+---------------+------------+-------+-------------+
|        3005 | Graham Zusi   | California |   200 |        5002 |
|        3007 | Brad Davis    | New York   |   200 |        5001 |
+-------------+---------------+------------+-------+-------------+
2 rows in set (0.00 sec)

mysql> SELECT ORDER_NO,ORDER_DATE,PURCH_AMT FROM ORDERS WHERE SALESMAN_ID=5001;
+----------+------------+-----------+
| ORDER_NO | ORDER_DATE | PURCH_AMT |
+----------+------------+-----------+
|    70002 | 2016-10-05 |     65.26 |
|    70005 | 2016-07-27 |    2400.6 |
+----------+------------+-----------+
2 rows in set (0.00 sec)

mysql> select name from salesman where city ="Paris" and salesman_id = 5006;
+---------+
| name    |
+---------+
| MC Lyon |
+---------+
1 row in set (0.00 sec)

mysql> select * from customer where city like 'New York';
+-------------+---------------+----------+-------+-------------+
| CUSTOMER_ID | CUSTOMER_NAME | CITY     | GRADE | SALESMAN_ID |
+-------------+---------------+----------+-------+-------------+
|        3002 | Nick Rimando  | New York |   100 |        5001 |
|        3007 | Brad Davis    | New York |   200 |        5001 |
+-------------+---------------+----------+-------+-------------+
2 rows in set (0.00 sec)

mysql> select * from customer where grade = 200 and city not in('paris','london');
+-------------+---------------+------------+-------+-------------+
| CUSTOMER_ID | CUSTOMER_NAME | CITY       | GRADE | SALESMAN_ID |
+-------------+---------------+------------+-------+-------------+
|        3005 | Graham Zusi   | California |   200 |        5002 |
|        3007 | Brad Davis    | New York   |   200 |        5001 |
+-------------+---------------+------------+-------+-------------+
2 rows in set (0.00 sec)

mysql> select * from salesman where name not like 'Nail Knite' order by salesman_id desc,city;
+-------------+------------+----------+------------+
| SALESMAN_ID | NAME       | CITY     | COMMISSION |
+-------------+------------+----------+------------+
|        5006 | MC Lyon    | Paris    |       0.14 |
|        5005 | Pit Alex   | London   |       0.11 |
|        5002 | Nil Knite  | Paris    |       0.13 |
|        5001 | James Hoog | New York |       0.15 |
+-------------+------------+----------+------------+
4 rows in set (0.00 sec)