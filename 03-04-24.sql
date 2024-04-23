
mysql> create table instructor ( ID int , name varchar(25) , dept_name varchar(20) , salary int);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into instructor values(10101,"Srinivasan","Comp.Sci.",65000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values(12121,"Wu","Finance",90000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values(15151,"Mozart","Music",40000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values(22222,"Einstein","Physics",95000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values(32343,"El Said","History",60000);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into instructor values(33456,"Gold","Physics",87000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values(45565,"Katz","Comp.Sci.",75000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values(58583,"Califieri","History",62000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values(76543,"Singh","Finance",80000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into instructor values(76766,"Crick","Biology",72000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into instructor values(83821,"Brandt","Comp.Sci.",92000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into instructor values(98345,"Kim","Elec.Eng.",80000);
Query OK, 1 row affected (0.00 sec)

mysql> select * from instructor;
+-------+------------+-----------+--------+
| ID    | name       | dept_name | salary |
+-------+------------+-----------+--------+
| 10101 | Srinivasan | Comp.Sci. |  65000 |
| 12121 | Wu         | Finance   |  90000 |
| 15151 | Mozart     | Music     |  40000 |
| 22222 | Einstein   | Physics   |  95000 |
| 32343 | El Said    | History   |  60000 |
| 33456 | Gold       | Physics   |  87000 |
| 45565 | Katz       | Comp.Sci. |  75000 |
| 58583 | Califieri  | History   |  62000 |
| 76543 | Singh      | Finance   |  80000 |
| 76766 | Crick      | Biology   |  72000 |
| 83821 | Brandt     | Comp.Sci. |  92000 |
| 98345 | Kim        | Elec.Eng. |  80000 |
+-------+------------+-----------+--------+
12 rows in set (0.00 sec)

mysql> create table teaches ( ID int , Course_id varchar(25) , sec_id int ,semester varchar(20) , year int);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into teaches values(10101,"CS-101",1,"Fall",2017);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(10101,"CS-315",1,"Spring",2018);
Query OK, 1 row affected (0.00 sec)

mysql> insert into teaches values(10101,"CS-347",1,"Fall",2017);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(12121,"FIN-201",1,"Spring",2018);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(15151,"MU-199",1,"Spring",2018);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(22222,"PHY-101",1,"Fall",2017);
Query OK, 1 row affected (0.00 sec)

mysql> insert into teaches values(32343,"HIS-351",1,"Spring",2018);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(45565,"CS-101",1,"Spring",2018);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(45565,"CS-319",1,"Spring",2018);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(76766,"BIO-101",1,"Summer",2017);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(76766,"BIO-301",1,"Summer",2018);
Query OK, 1 row affected (0.00 sec)

mysql> insert into teaches values(83821,"CS-190",1,"Spring",2017);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(83821,"CS-190",2,"Spring",2017);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(83821,"CS-319",2,"Spring",2018);
Query OK, 1 row affected (0.01 sec)

mysql> insert into teaches values(98345,"EE-181",1,"Spring",2017);
Query OK, 1 row affected (0.01 sec)

mysql> select * from teaches;
+-------+-----------+--------+----------+------+
| ID    | Course_id | sec_id | semester | year |
+-------+-----------+--------+----------+------+
| 10101 | CS-101    |      1 | Fall     | 2017 |
| 10101 | CS-315    |      1 | Spring   | 2018 |
| 10101 | CS-347    |      1 | Fall     | 2017 |
| 12121 | FIN-201   |      1 | Spring   | 2018 |
| 15151 | MU-199    |      1 | Spring   | 2018 |
| 22222 | PHY-101   |      1 | Fall     | 2017 |
| 32343 | HIS-351   |      1 | Spring   | 2018 |
| 45565 | CS-101    |      1 | Spring   | 2018 |
| 45565 | CS-319    |      1 | Spring   | 2018 |
| 76766 | BIO-101   |      1 | Summer   | 2017 |
| 76766 | BIO-301   |      1 | Summer   | 2018 |
| 83821 | CS-190    |      1 | Spring   | 2017 |
| 83821 | CS-190    |      2 | Spring   | 2017 |
| 83821 | CS-319    |      2 | Spring   | 2018 |
| 98345 | EE-181    |      1 | Spring   | 2017 |
+-------+-----------+--------+----------+------+
15 rows in set (0.00 sec)

EXP-1

mysql> insert into instructor values(10211,"Smith","Biology",66000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from instructor;
+-------+------------+-----------+--------+
| ID    | name       | dept_name | salary |
+-------+------------+-----------+--------+
| 10101 | Srinivasan | Comp.Sci. |  65000 |
| 12121 | Wu         | Finance   |  90000 |
| 15151 | Mozart     | Music     |  40000 |
| 22222 | Einstein   | Physics   |  95000 |
| 32343 | El Said    | History   |  60000 |
| 33456 | Gold       | Physics   |  87000 |
| 45565 | Katz       | Comp.Sci. |  75000 |
| 58583 | Califieri  | History   |  62000 |
| 76543 | Singh      | Finance   |  80000 |
| 76766 | Crick      | Biology   |  72000 |
| 83821 | Brandt     | Comp.Sci. |  92000 |
| 98345 | Kim        | Elec.Eng. |  80000 |
| 10211 | Smith      | Biology   |  66000 |
+-------+------------+-----------+--------+
13 rows in set (0.00 sec)

mysql> DELETE FROM instructor WHERE ID="10211";
Query OK, 1 row affected (0.01 sec)

mysql> select * from instructor;
+-------+------------+-----------+--------+
| ID    | name       | dept_name | salary |
+-------+------------+-----------+--------+
| 10101 | Srinivasan | Comp.Sci. |  65000 |
| 12121 | Wu         | Finance   |  90000 |
| 15151 | Mozart     | Music     |  40000 |
| 22222 | Einstein   | Physics   |  95000 |
| 32343 | El Said    | History   |  60000 |
| 33456 | Gold       | Physics   |  87000 |
| 45565 | Katz       | Comp.Sci. |  75000 |
| 58583 | Califieri  | History   |  62000 |
| 76543 | Singh      | Finance   |  80000 |
| 76766 | Crick      | Biology   |  72000 |
| 83821 | Brandt     | Comp.Sci. |  92000 |
| 98345 | Kim        | Elec.Eng. |  80000 |
+-------+------------+-----------+--------+
12 rows in set (0.00 sec)

mysql> select * from instructor where dept_name = "History";
+-------+-----------+-----------+--------+
| ID    | name      | dept_name | salary |
+-------+-----------+-----------+--------+
| 32343 | El Said   | History   |  60000 |
| 58583 | Califieri | History   |  62000 |
+-------+-----------+-----------+--------+
2 rows in set (0.00 sec)

mysql> SELECT *FROM instructor CROSS JOIN teaches;
+-------+------------+-----------+--------+-------+-----------+--------+----------+------+
| ID    | name       | dept_name | salary | ID    | Course_id | sec_id | semester | year |
+-------+------------+-----------+--------+-------+-----------+--------+----------+------+
| 98345 | Kim        | Elec.Eng. |  80000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 76766 | Crick      | Biology   |  72000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 76543 | Singh      | Finance   |  80000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 58583 | Califieri  | History   |  62000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 45565 | Katz       | Comp.Sci. |  75000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 33456 | Gold       | Physics   |  87000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 32343 | El Said    | History   |  60000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 22222 | Einstein   | Physics   |  95000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 15151 | Mozart     | Music     |  40000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 12121 | Wu         | Finance   |  90000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 10101 | CS-101    |      1 | Fall     | 2017 |
| 98345 | Kim        | Elec.Eng. |  80000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 76766 | Crick      | Biology   |  72000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 76543 | Singh      | Finance   |  80000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 58583 | Califieri  | History   |  62000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 45565 | Katz       | Comp.Sci. |  75000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 33456 | Gold       | Physics   |  87000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 32343 | El Said    | History   |  60000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 22222 | Einstein   | Physics   |  95000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 15151 | Mozart     | Music     |  40000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 12121 | Wu         | Finance   |  90000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 10101 | CS-315    |      1 | Spring   | 2018 |
| 98345 | Kim        | Elec.Eng. |  80000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 76766 | Crick      | Biology   |  72000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 76543 | Singh      | Finance   |  80000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 58583 | Califieri  | History   |  62000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 45565 | Katz       | Comp.Sci. |  75000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 33456 | Gold       | Physics   |  87000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 32343 | El Said    | History   |  60000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 22222 | Einstein   | Physics   |  95000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 15151 | Mozart     | Music     |  40000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 12121 | Wu         | Finance   |  90000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 10101 | CS-347    |      1 | Fall     | 2017 |
| 98345 | Kim        | Elec.Eng. |  80000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 76766 | Crick      | Biology   |  72000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 76543 | Singh      | Finance   |  80000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 58583 | Califieri  | History   |  62000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 45565 | Katz       | Comp.Sci. |  75000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 33456 | Gold       | Physics   |  87000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 32343 | El Said    | History   |  60000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 22222 | Einstein   | Physics   |  95000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 15151 | Mozart     | Music     |  40000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 12121 | Wu         | Finance   |  90000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 12121 | FIN-201   |      1 | Spring   | 2018 |
| 98345 | Kim        | Elec.Eng. |  80000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 76766 | Crick      | Biology   |  72000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 76543 | Singh      | Finance   |  80000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 58583 | Califieri  | History   |  62000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 45565 | Katz       | Comp.Sci. |  75000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 33456 | Gold       | Physics   |  87000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 32343 | El Said    | History   |  60000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 22222 | Einstein   | Physics   |  95000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 15151 | Mozart     | Music     |  40000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 12121 | Wu         | Finance   |  90000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 15151 | MU-199    |      1 | Spring   | 2018 |
| 98345 | Kim        | Elec.Eng. |  80000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 76766 | Crick      | Biology   |  72000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 76543 | Singh      | Finance   |  80000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 58583 | Califieri  | History   |  62000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 45565 | Katz       | Comp.Sci. |  75000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 33456 | Gold       | Physics   |  87000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 32343 | El Said    | History   |  60000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 22222 | Einstein   | Physics   |  95000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 15151 | Mozart     | Music     |  40000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 12121 | Wu         | Finance   |  90000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 22222 | PHY-101   |      1 | Fall     | 2017 |
| 98345 | Kim        | Elec.Eng. |  80000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 76766 | Crick      | Biology   |  72000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 76543 | Singh      | Finance   |  80000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 58583 | Califieri  | History   |  62000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 45565 | Katz       | Comp.Sci. |  75000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 33456 | Gold       | Physics   |  87000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 32343 | El Said    | History   |  60000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 22222 | Einstein   | Physics   |  95000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 15151 | Mozart     | Music     |  40000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 12121 | Wu         | Finance   |  90000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 32343 | HIS-351   |      1 | Spring   | 2018 |
| 98345 | Kim        | Elec.Eng. |  80000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 76766 | Crick      | Biology   |  72000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 76543 | Singh      | Finance   |  80000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 58583 | Califieri  | History   |  62000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 45565 | Katz       | Comp.Sci. |  75000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 33456 | Gold       | Physics   |  87000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 32343 | El Said    | History   |  60000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 22222 | Einstein   | Physics   |  95000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 15151 | Mozart     | Music     |  40000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 12121 | Wu         | Finance   |  90000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 45565 | CS-101    |      1 | Spring   | 2018 |
| 98345 | Kim        | Elec.Eng. |  80000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 76766 | Crick      | Biology   |  72000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 76543 | Singh      | Finance   |  80000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 58583 | Califieri  | History   |  62000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 45565 | Katz       | Comp.Sci. |  75000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 33456 | Gold       | Physics   |  87000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 32343 | El Said    | History   |  60000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 22222 | Einstein   | Physics   |  95000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 15151 | Mozart     | Music     |  40000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 12121 | Wu         | Finance   |  90000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 45565 | CS-319    |      1 | Spring   | 2018 |
| 98345 | Kim        | Elec.Eng. |  80000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 76766 | Crick      | Biology   |  72000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 76543 | Singh      | Finance   |  80000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 58583 | Califieri  | History   |  62000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 45565 | Katz       | Comp.Sci. |  75000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 33456 | Gold       | Physics   |  87000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 32343 | El Said    | History   |  60000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 22222 | Einstein   | Physics   |  95000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 15151 | Mozart     | Music     |  40000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 12121 | Wu         | Finance   |  90000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 76766 | BIO-101   |      1 | Summer   | 2017 |
| 98345 | Kim        | Elec.Eng. |  80000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 76766 | Crick      | Biology   |  72000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 76543 | Singh      | Finance   |  80000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 58583 | Califieri  | History   |  62000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 45565 | Katz       | Comp.Sci. |  75000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 33456 | Gold       | Physics   |  87000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 32343 | El Said    | History   |  60000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 22222 | Einstein   | Physics   |  95000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 15151 | Mozart     | Music     |  40000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 12121 | Wu         | Finance   |  90000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 76766 | BIO-301   |      1 | Summer   | 2018 |
| 98345 | Kim        | Elec.Eng. |  80000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 76766 | Crick      | Biology   |  72000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 76543 | Singh      | Finance   |  80000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 58583 | Califieri  | History   |  62000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 45565 | Katz       | Comp.Sci. |  75000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 33456 | Gold       | Physics   |  87000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 32343 | El Said    | History   |  60000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 22222 | Einstein   | Physics   |  95000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 15151 | Mozart     | Music     |  40000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 12121 | Wu         | Finance   |  90000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 83821 | CS-190    |      1 | Spring   | 2017 |
| 98345 | Kim        | Elec.Eng. |  80000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 76766 | Crick      | Biology   |  72000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 76543 | Singh      | Finance   |  80000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 58583 | Califieri  | History   |  62000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 45565 | Katz       | Comp.Sci. |  75000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 33456 | Gold       | Physics   |  87000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 32343 | El Said    | History   |  60000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 22222 | Einstein   | Physics   |  95000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 15151 | Mozart     | Music     |  40000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 12121 | Wu         | Finance   |  90000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 83821 | CS-190    |      2 | Spring   | 2017 |
| 98345 | Kim        | Elec.Eng. |  80000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 76766 | Crick      | Biology   |  72000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 76543 | Singh      | Finance   |  80000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 58583 | Califieri  | History   |  62000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 45565 | Katz       | Comp.Sci. |  75000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 33456 | Gold       | Physics   |  87000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 32343 | El Said    | History   |  60000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 22222 | Einstein   | Physics   |  95000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 15151 | Mozart     | Music     |  40000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 12121 | Wu         | Finance   |  90000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 83821 | CS-319    |      2 | Spring   | 2018 |
| 98345 | Kim        | Elec.Eng. |  80000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 83821 | Brandt     | Comp.Sci. |  92000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 76766 | Crick      | Biology   |  72000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 76543 | Singh      | Finance   |  80000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 58583 | Califieri  | History   |  62000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 45565 | Katz       | Comp.Sci. |  75000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 33456 | Gold       | Physics   |  87000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 32343 | El Said    | History   |  60000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 22222 | Einstein   | Physics   |  95000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 15151 | Mozart     | Music     |  40000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 12121 | Wu         | Finance   |  90000 | 98345 | EE-181    |      1 | Spring   | 2017 |
| 10101 | Srinivasan | Comp.Sci. |  65000 | 98345 | EE-181    |      1 | Spring   | 2017 |
+-------+------------+-----------+--------+-------+-----------+--------+----------+------+
180 rows in set (0.00 sec)

mysql> SELECT DISTINCT i.name,t.COURSE_ID FROM instructor i INNER JOIN teaches t on i.ID = t.ID;
+------------+-----------+
| name       | COURSE_ID |
+------------+-----------+
| Srinivasan | CS-101    |
| Srinivasan | CS-315    |
| Srinivasan | CS-347    |
| Wu         | FIN-201   |
| Mozart     | MU-199    |
| Einstein   | PHY-101   |
| El Said    | HIS-351   |
| Katz       | CS-101    |
| Katz       | CS-319    |
| Crick      | BIO-101   |
| Crick      | BIO-301   |
| Brandt     | CS-190    |
| Brandt     | CS-319    |
| Kim        | EE-181    |
+------------+-----------+
14 rows in set (0.00 sec)

mysql> SELECT NAME FROM instructor WHERE NAME LIKE "%dar%";
Empty set (0.00 sec)

mysql> SELECT NAME FROM instructor WHERE SALARY BETWEEN 90000 AND 100000;
+----------+
| NAME     |
+----------+
| Wu       |
| Einstein |
| Brandt   |
+----------+
3 rows in set (0.00 sec)


EXP-2

mysql> SELECT* FROM instructor ORDER BY SALARY;
+-------+------------+-----------+--------+
| ID    | name       | dept_name | salary |
+-------+------------+-----------+--------+
| 15151 | Mozart     | Music     |  40000 |
| 32343 | El Said    | History   |  60000 |
| 58583 | Califieri  | History   |  62000 |
| 10101 | Srinivasan | Comp.Sci. |  65000 |
| 76766 | Crick      | Biology   |  72000 |
| 45565 | Katz       | Comp.Sci. |  75000 |
| 76543 | Singh      | Finance   |  80000 |
| 98345 | Kim        | Elec.Eng. |  80000 |
| 33456 | Gold       | Physics   |  87000 |
| 12121 | Wu         | Finance   |  90000 |
| 83821 | Brandt     | Comp.Sci. |  92000 |
| 22222 | Einstein   | Physics   |  95000 |
+-------+------------+-----------+--------+
12 rows in set (0.00 sec)

mysql> SELECT DISTINCT Course_id FROM teaches WHERE semester='FALL' AND year='2017'OR semester='SPRING' AND year='2018';
+-----------+
| Course_id |
+-----------+
| CS-101    |
| CS-315    |
| CS-347    |
| FIN-201   |
| MU-199    |
| PHY-101   |
| HIS-351   |
| CS-319    |
+-----------+

mysql> SELECT DISTINCT COURSE_ID FROM teaches WHERE (SEMESTER ='Fall'AND YEAR = 2017) AND (SEMESTER = 'Spring'AND YEAR = 2018);
Empty set (0.00 sec)

mysql>  SELECT DISTINCT Course_id FROM teaches WHERE semester='FALL' AND year='2017'AND  NOT(semester='SPRING' AND year='2018');
+-----------+
| Course_id |
+-----------+
| CS-101    |
| CS-347    |
| PHY-101   |
+-----------+

mysql> INSERT INTO instructor VALUES(10211,'Smith','Biology',66000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO instructor VALUES(10212,'Tom','Biology',NULL);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM instructor;
+-------+------------+-----------+--------+
| ID    | name       | dept_name | salary |
+-------+------------+-----------+--------+
| 10101 | Srinivasan | Comp.Sci. |  65000 |
| 12121 | Wu         | Finance   |  90000 |
| 15151 | Mozart     | Music     |  40000 |
| 22222 | Einstein   | Physics   |  95000 |
| 32343 | El Said    | History   |  60000 |
| 33456 | Gold       | Physics   |  87000 |
| 45565 | Katz       | Comp.Sci. |  75000 |
| 58583 | Califieri  | History   |  62000 |
| 76543 | Singh      | Finance   |  80000 |
| 76766 | Crick      | Biology   |  72000 |
| 83821 | Brandt     | Comp.Sci. |  92000 |
| 98345 | Kim        | Elec.Eng. |  80000 |
| 10211 | Smith      | Biology   |  66000 |
| 10212 | Tom        | Biology   |   NULL |
+-------+------------+-----------+--------+
14 rows in set (0.00 sec)

mysql> SELECT * FROM instructor WHERE SALARY IS NULL;
+-------+------+-----------+--------+
| ID    | name | dept_name | salary |
+-------+------+-----------+--------+
| 10212 | Tom  | Biology   |   NULL |
+-------+------+-----------+--------+
1 row in set (0.00 sec)

mysql> SELECT AVG(SALARY) AS AVERAGE_SALARY FROM instructor WHERE DEPT_NAME ='Comp.Sci.';
+----------------+
| AVERAGE_SALARY |
+----------------+
|     77333.3333 |
+----------------+
1 row in set (0.00 sec)

EXP-3

mysql> SELECT DISTINCT  COUNT(ID) AS total_instructors FROM teaches WHERE SEMESTER ="SPRING" AND YEAR ="2018";
+-------------------+
| total_instructors |
+-------------------+
|                 7 |
+-------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*)  FROM teaches ;
+----------+
| COUNT(*) |
+----------+
|       15 |
+----------+
1 row in set (0.01 sec)

mysql> SELECT DEPT_NAME , AVG(SALARY) AS AVERAGE_SALARY FROM instructor GROUP BY DEPT_NAME;
+-----------+----------------+
| DEPT_NAME | AVERAGE_SALARY |
+-----------+----------------+
| Comp.Sci. |     77333.3333 |
| Finance   |     85000.0000 |
| Music     |     40000.0000 |
| Physics   |     91000.0000 |
| History   |     61000.0000 |
| Biology   |     69000.0000 |
| Elec.Eng. |     80000.0000 |
+-----------+----------------+
7 rows in set (0.00 sec)

mysql> SELECT DEPT_NAME , AVG(SALARY) AS AVERAGE_SALARY FROM instructor GROUP BY DEPT_NAME HAVING AVG(SALARY)>42000;
+-----------+----------------+
| DEPT_NAME | AVERAGE_SALARY |
+-----------+----------------+
| Comp.Sci. |     77333.3333 |
| Finance   |     85000.0000 |
| Physics   |     91000.0000 |
| History   |     61000.0000 |
| Biology   |     69000.0000 |
| Elec.Eng. |     80000.0000 |
+-----------+----------------+
6 rows in set (0.00 sec)

mysql> SELECT NAME FROM instructor WHERE name NOT IN ('Mozart',"Einstein");
+------------+
| NAME       |
+------------+
| Srinivasan |
| Wu         |
| El Said    |
| Gold       |
| Katz       |
| Califieri  |
| Singh      |
| Crick      |
| Brandt     |
| Kim        |
| Smith      |
| Tom        |
+------------+
12 rows in set (0.00 sec)

mysql> SELECT DISTINCT i1.name FROM instructor i1 WHERE i1.SALARY>(SELECT i2.SALARY FROM instructor i2 WHERE i2.DEPT_NAME = 'Biology');
ERROR 1242 (21000): Subquery returns more than 1 row

mysql> SELECT NAME FROM instructor i1 WHERE i1.SALARY > ALL (SELECT i2.SALARY FROM instructor i2 WHERE i2.DEPT_NAME = 'Biology');
Empty set (0.00 sec)

mysql> SELECT DEPT_NAME ,AVG(SALARY) AS  AVERAGE_SALARY FROM instructor GROUP BY DEPT_NAME HAVING AVG(SALARY) >42000;
+-----------+----------------+
| DEPT_NAME | AVERAGE_SALARY |
+-----------+----------------+
| Comp.Sci. |     77333.3333 |
| Finance   |     85000.0000 |
| Physics   |     91000.0000 |
| History   |     61000.0000 |
| Biology   |     69000.0000 |
| Elec.Eng. |     80000.0000 |
+-----------+----------------+
6 rows in set (0.00 sec)