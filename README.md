# DatabaseSystemsProject
Database Systems Project


This script is designed to manage a gradebook system, allowing users to perform tasks related to student courses, scores, and assignments. The script includes definitions for tables, inserts data, and performs different queries. Below is an overview of what the project does and how it’s useful.

GOALS: 
- Write the commands for creating tables and inserting values;
- Show the tables with the contents that you have inserted;
- Compute the average/highest/lowest score of an assignment;
- List all of the students in a given course;
- List all of the students in a course and all of their scores on every assignment;
- Add an assignment to a course;
- Change the percentages of the categories for a course;
- Add 2 points to the score of each student on an assignment;
- Add 2 points just to those students whose last name contains a ‘Q’.
- Compute the grade for a student;
- Compute the grade for a student, where the lowest score for a given category is dropped.

USER GUIDE:
- To start, make sure you have MySQL downloaded
- Run the script to create the tables and insert the data. This will produce the tables with the inserted contents 
- The script will produce the table and show the average/highest/lowest score
- Run the comments that read "-- Compute the [highest/lowest/average] score of assignment ID 1" to produce the average/highest/lowest scores.
- Run the portion under the comment "-- List all students for a given course (course id=1)" to produce the table that lists all the students
- Run the code under the comment "/*Add 2 points to the score of each student on an assignment*/". Reference the scores table to see the reflected change.
- Run the code under the comment "/* Add 2 points just to those students whose last name contains a ‘Q’  */". Reference the scores of the student w/ the last name 'Quincy' in the scores table to see the reflected change.
- Run the code under the comment "COMPUTE GRADE FOR STUDENTS + DROP THE LOWEST SCORES" to complete tasks 11 and 12. Reference the grades table to see the reflected change.
