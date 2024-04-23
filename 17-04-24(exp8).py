import mysql.connector

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='root123',
    database='exp6'
)

cursor = conn.cursor()

# Create a view of instructors without their salary called faculty
instructors_view_without_salary = """
CREATE VIEW faculty AS
SELECT ID, name, dept_name
FROM instructor
"""

cursor.execute(instructors_view_without_salary)

display_instructor_view = """
SELECT *
FROM faculty
"""

cursor.execute(display_instructor_view)

results = cursor.fetchall()

print("Question1:")
for row in results:
    print(row)
print("\n")

#  Create a view of department salary totals
department_salary_view = """
CREATE VIEW department_salary_totals AS SELECT dept_name, SUM(salary) AS total_salary FROM instructor GROUP BY dept_name
"""

cursor.execute(department_salary_view)

display_department_view="""
SELECT * FROM department_salary_totals;
"""

cursor.execute(display_department_view)

results = cursor.fetchall()

print("Question2:")
for row in results:
    print(row)
print("\n")

#  Create a role of student
role= """
CREATE ROLE 'student';
"""

cursor.execute(role)

# Give select privileges on the view faculty to the role student.
grant_select = """
GRANT SELECT ON faculty TO student;
"""
cursor.execute(grant_select)

#  Create a new user and assign her the role of student. 
new_role = """
CREATE USER guru@localhost IDENTIFIED BY '1234'
"""

cursor.execute(new_role)

grant_user = """
GRANT student TO guru@localhost
"""

cursor.execute(grant_user)

#  Revoke privileges of the new user
revoke_user = """
REVOKE student FROM guru@localhost
"""

cursor.execute(revoke_user)

#  Remove the role of student.
remove_role = """
DROP ROLE student
"""

cursor.execute(remove_role)

# Give select privileges on the view faculty to the new user
select_user = """
GRANT SELECT ON faculty TO guru@localhost
"""

cursor.execute(select_user)

#  Create table teaches2 with same columns as teaches but with additional constraint that that semester is one of fall, winter, spring or summer.
new_table= """
CREATE TABLE teaches2 (
  ID INT NOT NULL,
  course_id VARCHAR(255) NOT NULL,
  sec_id INT NOT NULL,
  semester VARCHAR(255) NOT NULL CHECK (semester IN ('Fall', 'Winter', 'Spring', 'Summer')),
  year INT NOT NULL,
  FOREIGN KEY (ID) REFERENCES instructor(ID)
)
"""

cursor.execute(new_table)

#  Create index ID column of teaches. Compare the difference in time to obtain query results with or without index.
create_index = """
CREATE INDEX idx_ID ON teaches (ID)
"""

cursor.execute(create_index)

#  Drop the index to free up the space.
drop_index = """
DROP INDEX idx_ID ON teaches
"""
cursor.execute(drop_index)