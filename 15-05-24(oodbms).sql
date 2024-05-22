SQL*Plus: Release 21.0.0.0.0 - Production on Wed May 15 10:51:44 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Wed May 15 2024 10:29:18 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> create type addr_ty as object
  2  (street varchar2(60),
  3  city varchar2(30),
  4  state char(2),
  5  zip varchar(9));
  6  /

Type created.

SQL> CREATE TYPE person_ty AS OBJECT
  2     (name   varchar2(25),
  3     address  addr_ty);
  4  /

Type created.

SQL> CREATE TYPE emp_ty AS OBJECT
  2     (empt_id        varchar2(9),
  3     person  person_ty);
  4  /

Type created.

SQL> CREATE TABLE EMP_OO
  2     (full_emp emp_ty);

Table created.

SQL> insert into emp_oo values
  2  (emp_ty('100',
  3  person_ty('Ram',
  4  addr_ty('1000 TU',
  5  'Patiala', 'PB', '147001'))));

1 row created.

SQL> insert into emp_oo values
  2     (emp_ty('101',
  3     person_ty('Sham',
  4     addr_ty('1001 TU',
  5  'Patiala', 'PB', '147001'))));

1 row created.

SQL> select * from emp_oo;

FULL_EMP(EMPT_ID, PERSON(NAME, ADDRESS(STREET, CITY, STATE, ZIP)))
--------------------------------------------------------------------------------
EMP_TY('100', PERSON_TY('Ram', ADDR_TY('1000 TU', 'Patiala', 'PB', '147001')))
EMP_TY('101', PERSON_TY('Sham', ADDR_TY('1001 TU', 'Patiala', 'PB', '147001')))

SQL> desc emp_oo;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FULL_EMP                                           EMP_TY

SQL> select e.full_emp.empt_id ID,
  2  e.full_emp.person.name NAME,
  3  e.full_emp.person.address.city CITY
  4  from emp_oo e;

ID        NAME                      CITY
--------- ------------------------- ------------------------------
100       Ram                       Patiala
101       Sham                      Patiala

SQL> Update emp_oo e set
  2     e.full_emp.person.name='Raj'
  3     where
  4     e.full_emp.empt_id='100';

1 row updated.

SQL> select e.full_emp.empt_id ID,
  2      e.full_emp.person.name NAME,
  3      e.full_emp.person.address.city CITY
  4      from emp_oo e;

ID        NAME                      CITY
--------- ------------------------- ------------------------------
100       Raj                       Patiala
101       Sham                      Patiala

SQL> create or replace type newemp_ty as object (firstname varchar2(25),
  2  lastname varchar2(25), birthdate date,
  3  member function AGE(birthdate in DATE) return NUMBER)
  4  /

Type created.

SQL> create or replace type body newemp_ty as
  2     member function AGE(BirthDate in DATE) return NUMBER is
  3     begin
  4             RETURN ROUND(SysDate - birthdate);
  5     end;
  6  end;
  7  /

Type body created.

SQL> create table new_emp_oo
  2  (employee newemp_ty);

Table created.

SQL> insert into new_emp_oo values
  2  (newemp_ty('Ram', 'Lal', '12-dec-1976'));

1 row created.

SQL> select e.employee.firstname, e.employee.age(e.employee.birthdate) from
  2  new_emp_oo e;

EMPLOYEE.FIRSTNAME        E.EMPLOYEE.AGE(E.EMPLOYEE.BIRTHDATE)
------------------------- ------------------------------------
Ram                                                      17321

SQL> create table new_emp1 of emp_ty;

Table created.

SQL> create type emp_ty1 as object
  2  (empt_id varchar2(9),
  3  person person_ty);
  4  /

Type created.

SQL> create table emp_oo1(full_emp emp_ty1);

Table created.

SQL> insert into emp_oo1 values
  2        (emp_ty1('101',
  3        person_ty('Sham',
  4        addr_ty('1001 TU',
  5     'Patiala', 'PB', '147001'))));

1 row created.

SQL> insert into new_emp1 values ('100', person_ty('raj', addr_ty('1000 TU', 'Pta', 'Pb', '147001')));


1 row created.

SQL> select * from new_emp1;

EMPT_ID
---------
PERSON(NAME, ADDRESS(STREET, CITY, STATE, ZIP))
--------------------------------------------------------------------------------
100
PERSON_TY('raj', ADDR_TY('1000 TU', 'Pta', 'Pb', '147001'))


SQL> select ref(p) from new_emp1 p;

REF(P)
--------------------------------------------------------------------------------
000028020962310E79DAD541678083F34D04C7597F4FAF0E96224F4E05993B631113268ED20041B9
810000


SQL> create type new_dept_oo as object
  2  (depno number(3), dname varchar(20));
  3  /

Type created.

SQL> CREATE TABLE dept_table OF new_dept_oo;

Table created.

SQL> insert into dept_table values(10, 'comp');

1 row created.

SQL> insert into dept_table values(20, 'chem');

1 row created.

SQL> insert into dept_table values(10, 'math');

1 row created.

SQL> select ref(p) from dept_table p;

REF(P)
--------------------------------------------------------------------------------
0000280209E0B2B6CBC62A4509A73B0168855948CE0BD10BC5001F4AD79B080B129E78F1DF0041B9
990000

00002802091BDD768FBC6E4197B0D94EE374114CD80BD10BC5001F4AD79B080B129E78F1DF0041B9
990001

0000280209F5B9EBEAEDA94A45A9BF32CFD67DAE7D0BD10BC5001F4AD79B080B129E78F1DF0041B9
990002


SQL> create table emp_test_fk(
  2  empno number(3),
  3  name varchar(10),
  4  dept ref new_dept_oo);

Table created.

SQL> desc emp_test_fk
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                              NUMBER(3)
 NAME                                               VARCHAR2(10)
 DEPT                                               REF OF NEW_DEPT_OO

SQL> set desc depth 2
SQL> desc emp_test_fk
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                              NUMBER(3)
 NAME                                               VARCHAR2(10)
 DEPT                                               REF OF NEW_DEPT_OO
   DEPNO                                            NUMBER(3)
   DNAME                                            VARCHAR2(20)

SQL> insert into emp_test_fk
  2  select 100, 'raj', ref(p) from dept_table p where depno = 10;

2 rows created.

SQL> insert into emp_test_fk
  2  select 101, 'shyam', ref(p) from dept_table p where depno = 20;

1 row created.

SQL> select * from emp_test_fk;

     EMPNO NAME
---------- ----------
DEPT
--------------------------------------------------------------------------------
       100 raj
0000220208E0B2B6CBC62A4509A73B0168855948CE0BD10BC5001F4AD79B080B129E78F1DF

       100 raj
0000220208F5B9EBEAEDA94A45A9BF32CFD67DAE7D0BD10BC5001F4AD79B080B129E78F1DF

       101 shyam
00002202081BDD768FBC6E4197B0D94EE374114CD80BD10BC5001F4AD79B080B129E78F1DF


SQL> select empno, name, deref(e.dept) from emp_test_fk e;

     EMPNO NAME
---------- ----------
DEREF(E.DEPT)(DEPNO, DNAME)
--------------------------------------------------------------------------------
       100 raj
NEW_DEPT_OO(10, 'comp')

       100 raj
NEW_DEPT_OO(10, 'math')

       101 shyam
NEW_DEPT_OO(20, 'chem')


SQL> select empno, name, deref(e.dept), deref(e.dept).depno depno,
  2  deref(e.dept).dname dname from emp_test_fk e;

     EMPNO NAME
---------- ----------
DEREF(E.DEPT)(DEPNO, DNAME)
--------------------------------------------------------------------------------
     DEPNO DNAME
---------- --------------------
       100 raj
NEW_DEPT_OO(10, 'comp')
        10 comp

       100 raj
NEW_DEPT_OO(10, 'math')
        10 math

     EMPNO NAME
---------- ----------
DEREF(E.DEPT)(DEPNO, DNAME)
--------------------------------------------------------------------------------
     DEPNO DNAME
---------- --------------------

       101 shyam
NEW_DEPT_OO(20, 'chem')
        20 chem


SQL> create table emp_table_fk
  2  (employee emp_ty,
  3  dept ref new_dept_oo);

Table created.

SQL> set describe depth 1
SQL> desc emp_table_fk
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE                                           EMP_TY
 DEPT                                               REF OF NEW_DEPT_OO

SQL> set describe depth 2
SQL> desc emp_table_fk
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE                                           EMP_TY
   EMPT_ID                                          VARCHAR2(9)
   PERSON                                           PERSON_TY
 DEPT                                               REF OF NEW_DEPT_OO
   DEPNO                                            NUMBER(3)
   DNAME                                            VARCHAR2(20)

SQL> set describe depth 3
SQL> desc emp_table_fk
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE                                           EMP_TY
   EMPT_ID                                          VARCHAR2(9)
   PERSON                                           PERSON_TY
     NAME                                           VARCHAR2(25)
     ADDRESS                                        ADDR_TY
 DEPT                                               REF OF NEW_DEPT_OO
   DEPNO                                            NUMBER(3)
   DNAME                                            VARCHAR2(20)

SQL> set describe depth 4
SQL> desc emp_table_fk
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE                                           EMP_TY
   EMPT_ID                                          VARCHAR2(9)
   PERSON                                           PERSON_TY
     NAME                                           VARCHAR2(25)
     ADDRESS                                        ADDR_TY
       STREET                                       VARCHAR2(60)
       CITY                                         VARCHAR2(30)
       STATE                                        CHAR(2)
       ZIP                                          VARCHAR2(9)
 DEPT                                               REF OF NEW_DEPT_OO
   DEPNO                                            NUMBER(3)
   DNAME                                            VARCHAR2(20)

SQL> INSERT INTO emp_table_fk
  2  VALUES (
  3      emp_ty(
  4          100,
  5          person_ty('ram', addr_ty('10 tu', 'pat', 'pb', '147001'))
  6      ),
  7      (SELECT REF(P)
  8       FROM dept_table P
  9       WHERE depno = 10
 10       AND ROWNUM = 1)
 11  );

1 row created.

SQL> select * from emp_table_fk;

EMPLOYEE(EMPT_ID, PERSON(NAME, ADDRESS(STREET, CITY, STATE, ZIP)))
--------------------------------------------------------------------------------
DEPT
--------------------------------------------------------------------------------
EMP_TY('100', PERSON_TY('ram', ADDR_TY('10 tu', 'pat', 'pb', '147001')))
0000220208E0B2B6CBC62A4509A73B0168855948CE0BD10BC5001F4AD79B080B129E78F1DF


SQL> select e.employee.empt_id id, e.employee.person.name name,
  2  deref(e.dept), deref(e.dept).depno depno,
  3  deref(e.dept).dname dname from emp_table_fk e;

ID        NAME
--------- -------------------------
DEREF(E.DEPT)(DEPNO, DNAME)
--------------------------------------------------------------------------------
     DEPNO DNAME
---------- --------------------
100       ram
NEW_DEPT_OO(10, 'comp')
        10 comp
