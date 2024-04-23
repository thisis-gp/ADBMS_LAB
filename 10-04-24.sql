EXP--4 & 5

mysql> SELECT dept_name, SUM(SALARY) AS TOTAL_SALARY from instructor group by dept_name HAVING SUM(SALARY) > (SELECT AVG(TOTAL_SALARY) FROM (SELECT SUM(SALARY) AS TOTAL_SALARY FROM instructor GROUP BY dept_name) AS AVG_SALARY) ;
+-----------+--------------+
| dept_name | TOTAL_SALARY |
+-----------+--------------+
| Comp.Sci. |       232000 |
| Finance   |       170000 |
| Physics   |       182000 |
| Biology   |       138000 |
+-----------+--------------+
4 rows in set (0.00 sec)

mysql> SELECT instructor.name AS instructor_name, teaches.Course_id
    -> FROM instructor
    -> JOIN teaches  ON instructor.ID = teaches.ID;
+-----------------+-----------+
| instructor_name | Course_id |
+-----------------+-----------+
| Srinivasan      | CS-101    |
| Srinivasan      | CS-315    |
| Srinivasan      | CS-347    |
| Wu              | FIN-201   |
| Mozart          | MU-199    |
| Einstein        | PHY-101   |
| El Said         | HIS-351   |
| Katz            | CS-101    |
| Katz            | CS-319    |
| Crick           | BIO-101   |
| Crick           | BIO-301   |
| Brandt          | CS-190    |
| Brandt          | CS-190    |
| Brandt          | CS-319    |
| Kim             | EE-181    |
+-----------------+-----------+
15 rows in set (0.00 sec)

mysql> SELECT instructor.NAME as instructor_name, teaches.Course_id
    -> FROM instructor
    -> LEFT JOIN teaches ON instructor.ID = teaches.ID;
+-----------------+-----------+
| instructor_name | Course_id |
+-----------------+-----------+
| Srinivasan      | CS-347    |
| Srinivasan      | CS-315    |
| Srinivasan      | CS-101    |
| Wu              | FIN-201   |
| Mozart          | MU-199    |
| Einstein        | PHY-101   |
| El Said         | HIS-351   |
| Gold            | NULL      |
| Katz            | CS-319    |
| Katz            | CS-101    |
| Califieri       | NULL      |
| Singh           | NULL      |
| Crick           | BIO-301   |
| Crick           | BIO-101   |
| Brandt          | CS-319    |
| Brandt          | CS-190    |
| Brandt          | CS-190    |
| Kim             | EE-181    |
| Smith           | NULL      |
| Tom             | NULL      |
+-----------------+-----------+
20 rows in set (0.00 sec)
mysql> CREATE VIEW FACULTY AS SELECT ID, name, dept_name FROM instructor;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from FACULTY;
+-------+------------+-----------+
| ID    | name       | dept_name |
+-------+------------+-----------+
| 10101 | Srinivasan | Comp.Sci. |
| 12121 | Wu         | Finance   |
| 15151 | Mozart     | Music     |
| 22222 | Einstein   | Physics   |
| 32343 | El Said    | History   |
| 33456 | Gold       | Physics   |
| 45565 | Katz       | Comp.Sci. |
| 58583 | Califieri  | History   |
| 76543 | Singh      | Finance   |
| 76766 | Crick      | Biology   |
| 83821 | Brandt     | Comp.Sci. |
| 98345 | Kim        | Elec.Eng. |
| 10211 | Smith      | Biology   |
| 10212 | Tom        | Biology   |
+-------+------------+-----------+
14 rows in set (0.00 sec)

mysql> CREATE USER nw_user@localhost IDENTIFIED BY "1234";
Query OK, 0 rows affected (0.03 sec)

mysql> GRANT SELECT ON FACULTY TO nw_user@localhost;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE VIEW DEPT_SALARY_TOTAL AS SELECT dept_name, SUM(SALARY) AS TOTAL_SALARY FROM instructor GROUP BY dept_name
;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM DEPT_SALARY_TOTAL;
+-----------+--------------+
| dept_name | TOTAL_SALARY |
+-----------+--------------+
| Comp.Sci. |       232000 |
| Finance   |       170000 |
| Music     |        40000 |
| Physics   |       182000 |
| History   |       122000 |
| Biology   |       138000 |
| Elec.Eng. |        80000 |
+-----------+--------------+
7 rows in set (0.00 sec)

mysql> CREATE ROLE 'student';
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT SELECT ON FACULTY TO student;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE USER mydb@localhost IDENTIFIED BY 'root';
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT student TO mydb@localhost;
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT ALL PRIVILEGES ON student.* TO mydb@localhost;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM FACULTY WHERE dept_name = 'Biology';
+-------+-------+-----------+
| ID    | name  | dept_name |
+-------+-------+-----------+
| 76766 | Crick | Biology   |
| 10211 | Smith | Biology   |
| 10212 | Tom   | Biology   |
+-------+-------+-----------+
3 rows in set (0.00 sec)

mysql> revoke student from mydb@localhost;
Query OK, 0 rows affected (0.01 sec)

mysql> DROP ROLE student;
Query OK, 0 rows affected (0.01 sec)

mysql> grant select on faculty to mydb@localhost;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE teaches2 (ID INT NOT NULL,course_id VARCHAR(255) NOT NULL,sec_id INT NOT NULL,semester VARCHAR(255) NOT NULL CHECK 
(semester IN ('Fall', 'Winter', 'Spring', 'Summer')),year INT NOT NULL,FOREIGN KEY (ID) REFERENCES instructor(ID));
Query OK, 0 rows affected (0.01 sec)

mysql> select * from TEACHES2;
Empty set (0.001 sec)

mysql> CREATE INDEX idx_ID ON teaches (ID);
Query OK, 0 rows affected (0.022 sec)

mysql> DROP INDEX idx_ID ON teaches;
Query OK, 0 rows affected (0.01 sec)


