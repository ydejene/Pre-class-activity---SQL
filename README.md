Student Performance Database Queries
Project Description
This repository contains a set of SQL queries for a pre-class activity focused on database design and data manipulation. The project involves creating a student performance database to track and analyze grades from students enrolled at ALU Rwanda in Linux and Python courses.

The SQL script creates and populates a small-scale database and then performs a series of analytical queries to extract specific insights about student performance.

Database Structure
The project uses three interconnected tables to store student and grade information:

students

student_id (Primary Key)

student_name

intake_year

linux_grades

course_id (Primary Key)

course_name

student_id (Foreign Key)

grade_obtained

python_grades

course_id (Primary Key)

course_name

student_id (Foreign Key)

grade_obtained

Queries Implemented
The queries.sql file contains the following queries, executed in order:

Insert Sample Data: Populates all three tables with a mix of students who took one or both courses.

Find Failing Students: Identifies students who scored less than 50% in the Linux course.

Find Students in a Single Course: Finds students who took either Linux or Python, but not both.

Find Students in Both Courses: Identifies students who are enrolled in both Linux and Python.

Calculate Average Grade: Computes the average grade separately for the Linux and Python courses.

Identify Top Performer: Determines the single top-performing student based on the average of their grades across both courses.

How to Use
Save the file: Save the provided SQL code as a file named queries.sql.

Open MySQL: Use a MySQL client (such as MySQL Workbench or the command-line interface).

Run the script: Execute the queries.sql file to create the tables, insert the data, and run all the defined queries.
