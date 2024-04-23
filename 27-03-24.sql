mysql> use sys;
Database changed
mysql> create table employees(emp_id int , name varchar(20),hourly_pay int,job varchar(20));
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> insert into employees values(101,"John",100,"manager");
Query OK, 1 row affected (0.01 sec)

mysql> insert into employees values(102,"Rithik",90,"cashier");
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(103,"Zamal",80,"cook");
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(104,"Geo",750,"teacher");
Query OK, 1 row affected (0.00 sec)

mysql> select * from employees;
+--------+--------+------------+---------+
| emp_id | name   | hourly_pay | job     |
+--------+--------+------------+---------+
|    101 | John   |        100 | manager |
|    102 | Rithik |         90 | cashier |
|    103 | Zamal  |         80 | cook    |
|    104 | Geo    |        750 | teacher |
+--------+--------+------------+---------+
4 rows in set (0.00 sec)

mysql> alter table employees add column salary decimal(10,2) after hourly_pay;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employees;
+--------+--------+------------+--------+---------+
| emp_id | name   | hourly_pay | salary | job     |
+--------+--------+------------+--------+---------+
|    101 | John   |        100 |   NULL | manager |
|    102 | Rithik |         90 |   NULL | cashier |
|    103 | Zamal  |         80 |   NULL | cook    |
|    104 | Geo    |        750 |   NULL | teacher |
+--------+--------+------------+--------+---------+
4 rows in set (0.00 sec)

mysql>
mysql> update employees set salary = hourly_pay * 2080;
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> select * from employees;
+--------+--------+------------+------------+---------+
| emp_id | name   | hourly_pay | salary     | job     |
+--------+--------+------------+------------+---------+
|    101 | John   |        100 |  208000.00 | manager |
|    102 | Rithik |         90 |  187200.00 | cashier |
|    103 | Zamal  |         80 |  166400.00 | cook    |
|    104 | Geo    |        750 | 1560000.00 | teacher |
+--------+--------+------------+------------+---------+
4 rows in set (0.00 sec)

mysql> create trigger before_hourly_pay_update
    -> before update on employees
    -> for each row
    -> set new.salary = (new.hourly_pay * 2080);
Query OK, 0 rows affected (0.02 sec)

mysql> select * from employees;
+--------+--------+------------+------------+---------+
| emp_id | name   | hourly_pay | salary     | job     |
+--------+--------+------------+------------+---------+
|    101 | John   |        100 |  208000.00 | manager |
|    102 | Rithik |         90 |  187200.00 | cashier |
|    103 | Zamal  |         80 |  166400.00 | cook    |
|    104 | Geo    |        750 | 1560000.00 | teacher |
+--------+--------+------------+------------+---------+

mysql> show triggers;
+----------------------------+--------+------------+-----------------------------------------------------------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+---------------------+----------------------+----------------------+--------------------+
| Trigger                    | Event  | Table      | Statement
                                                               | Timing | Created                | sql_mode
                                                                                                 | Definer             | character_set_client | collation_connection | Database Collation |
+----------------------------+--------+------------+-----------------------------------------------------------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+---------------------+----------------------+----------------------+--------------------+
| before_hourly_pay_update   | UPDATE | employees  | set new.salary = (new.hourly_pay * 2080)
                                                               | BEFORE | 2024-04-23 15:32:26.75 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | root@localhost      | cp850                | cp850_general_ci     | utf8mb4_0900_ai_ci |
| sys_config_insert_set_user | INSERT | sys_config | BEGIN
    IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN
        SET NEW.set_by = USER();
    END IF;
END | BEFORE | 2024-04-20 13:09:39.83 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | mysql.sys@localhost | utf8mb4              | utf8mb4_0900_ai_ci   | utf8mb4_0900_ai_ci |
| sys_config_update_set_user | UPDATE | sys_config | BEGIN
    IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN
        SET NEW.set_by = USER();
    END IF;
END | BEFORE | 2024-04-20 13:09:39.83 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | mysql.sys@localhost | utf8mb4              | utf8mb4_0900_ai_ci   | utf8mb4_0900_ai_ci |
+----------------------------+--------+------------+-----------------------------------------------------------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+---------------------+----------------------+----------------------+--------------------+
3 rows in set (0.01 sec)

mysql>  update employees set hourly_pay = 50  where emp_id = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employees;
+--------+--------+------------+------------+---------+
| emp_id | name   | hourly_pay | salary     | job     |
+--------+--------+------------+------------+---------+
|    101 | John   |         50 |  104000.00 | manager |
|    102 | Rithik |         90 |  187200.00 | cashier |
|    103 | Zamal  |         80 |  166400.00 | cook    |
|    104 | Geo    |        750 | 1560000.00 | teacher |
+--------+--------+------------+------------+---------+
4 rows in set (0.00 sec)
mysql> update employees set hourly_pay = hourly_pay +1;
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql>
mysql> delete from employees where emp_id = 4;
Query OK, 0 rows affected (0.00 sec)

mysql>
mysql>  create trigger before_hourly_pay_insert
    ->     before insert on employees
    ->     for each row
    ->     set new.salary = (new.hourly_pay * 2080);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> before insert on employees
    -> for each row
    -> set new.salary = (new.h' at line 2
mysql>
mysql> insert into employees values(104, "Aman",290,null,"teacher");
Query OK, 1 row affected (0.01 sec)

mysql>
mysql>
mysql> select * from employees;
+--------+--------+------------+------------+---------+
| emp_id | name   | hourly_pay | salary     | job     |
+--------+--------+------------+------------+---------+
|    101 | John   |         51 |  106080.00 | manager |
|    102 | Rithik |         91 |  189280.00 | cashier |
|    103 | Zamal  |         81 |  168480.00 | cook    |
|    104 | Geo    |        751 | 1562080.00 | teacher |
|    104 | Aman   |        290 |       NULL | teacher |
+--------+--------+------------+------------+---------+
5 rows in set (0.00 sec)

mysql> create table expenses(expense_id int primary key, expense_name varchar(50),expense_total decimal(10,2));

mysql>  insert into expenses values (1,"salaries",0);
Query OK, 1 row affected (0.01 sec)

mysql>   insert into expenses values (2,"supplies",0);
Query OK, 1 row affected (0.01 sec)

mysql>     insert into expenses  values (3,"taxes", 0);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM expenses;
+------------+--------------+---------------+
| expense_id | expense_name | expense_total |
+------------+--------------+---------------+
|          1 | salaries     |          0.00 |
|          2 | supplies     |          0.00 |
|          3 | taxes        |          0.00 |
+------------+--------------+---------------+
3 rows in set (0.00 sec)

mysql>  update expenses set expense_total = (select sum(salary) from employees) where expense_name = "salaries";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
mysql> select * from expenses;
+------------+--------------+---------------+
| expense_id | expense_name | expense_total |
+------------+--------------+---------------+
|          1 | salaries     |    2639520.00 |
|          2 | supplies     |          0.00 |
|          3 | taxes        |          0.00 |
+------------+--------------+---------------+
3 rows in set (0.00 sec)
+------------+--------------+---------------+
mysql> create trigger after_salary_delete
    -> after delete on employees
    ->     for each row
    ->  update expenses
    ->    set expense_total = expense_total - old.salary
    ->    where expense_name = "salaries";
Query OK, 0 rows affected (0.01 sec)

mysql>  delete from employees where emp_id = 103;
Query OK, 1 row affected (0.01 sec)

mysql>
mysql>  select * from expenses;
+------------+--------------+---------------+
| expense_id | expense_name | expense_total |
+------------+--------------+---------------+
|          1 | salaries     |    2468960.00 |
|          2 | supplies     |          0.00 |
|          3 | taxes        |          0.00 |
+------------+--------------+---------------+
3 rows in set (0.00 sec)

mysql> create trigger after_salary_insert
    ->     after insert on employees
    ->     for each row
    ->     update expenses
    ->     set expense_total = expense_total + new.salary
    ->     where expense_name = "salaries";
Query OK, 0 rows affected (0.01 sec)

mysql> insert into employees values( 103, "Zid",180,null,"doctor");
Query OK, 1 row affected (0.01 sec)

mysql>
mysql>  select * from expenses;
+------------+--------------+---------------+
| expense_id | expense_name | expense_total |
+------------+--------------+---------------+
|          1 | salaries     |          NULL |
|          2 | supplies     |          0.00 |
|          3 | taxes        |          0.00 |
+------------+--------------+---------------+
3 rows in set (0.00 sec)
+------------+--------------+---------------+