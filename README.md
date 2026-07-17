# Group 23 - ALU Database Design Assignment

This repository contains the relational database design for a school management system. The project was built collaboratively as a team.

## Database Entities
The database consists of 5 main tables and 2 junction tables:
1. **Classroom** - Holds room numbers, building names, and capacity.
2. **Students** - Stores student details, linked to their assigned classroom.
3. **Faculty** - Stores staff/coaches details.
4. **Courses** - Holds course names and credits, linked to classrooms and faculty.
5. **Extra-Curricular Activities** - Holds club names, linked to advising faculty.
6. **Student_Courses** (Junction Table) - Connects students to their enrolled courses.
7. **Student_Activities** (Junction Table) - Connects students to their clubs.

## Team Contributions
* **Member 1 (Felix):** Students table and tasks.
* **Member 2 (Lilian):** Classroom table and tasks.
* **Member 3 (Gabriel):** Faculty table and tasks.
* **Member 4 (Rita):** Courses table and tasks.
* **Member 5 (Kingsley & Vanessa):** Extra-Curricular activities, junction tables, and merge resolution.

## How to Run the Script
1. Connect to your MySQL database server.
2. Run the `alu_db.sql` file to create the database, tables, insert the sample data, and verify with the join queries.
