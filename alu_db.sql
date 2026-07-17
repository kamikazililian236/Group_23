CREATE  DATABASE Group_23;
create table Classroom(
    classroom_id int primary key,
    room_number varchar(10),
    building varchar(50),
    capacity int
);


insert into Classroom(classroom_id,room_number,building,capacity)
values
(001,03,'South East',50),
(002,04,'Ilinios Chamber',45),
(003,05,'Social Commons',25),
(004,06,'Berlin corner',76),
(005,07,'Frederick rooms',37),
(006,08,'Leadership center',22)

UPDATE Classroom
SET capacity = 30  WHERE classroom_id = 006;

DELETE FROM Classroom WHERE classroom_id = 005;
SELECT * FROM Classroom WHERE capacity > 40;
SELECT * FROM Classroom;
CREATE TABLE Students(
    student_id int primary key,
    name varchar(100),
    email varchar(100),
    classroom_id int,
    foreign key (classroom_id) references Classroom(classroom_id),
    enrollment_date date
);
select * from Students;
insert into Students(student_id, name, email, classroom_id, enrollment_date)
VALUES
(123, 'Lilian Kamikazi', 'l.kamikazi@alustudent.com', 001, '2026-01-05'),
(234, 'Kingsley Kipkoech', 'k.kipkoech@alustudent', 002, '2026-01-06'),
(542, 'Vanessa Kampiire', 'v.kampiire@alustudent.com', 001, '2026-01-06'),
(656, 'Gabriel Agabo', 'g.agabo@alustudent.com', 002, '2026-01-06'),
(768, 'Rita Akariza', 'r.akariza@alustudent.com', 003, '2026-01-05'),
(876, 'Felix Mwaniki', 'f.mwaniki@alustudent', 004, '2026-01-05')

UPDATE Students SET classroom_id = 003 WHERE student_id = 234; #Felix
SELECT name, email FROM Students WHERE student_id = 876;
DELETE FROM Students WHERE student_id = 876;
select * from Students;
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(100)
);

INSERT INTO Faculty (faculty_id, name, email, department)
VALUES
(1, 'Herve Musangwa', 'hmusangwa@alueducation.com', 'Software Engineering'),
(2, 'Ruth Bazing', 'rbazing@alueducation.com', 'Software Engineering'),
(3, 'Angelique Ishimwe', 'aishimwe@alueducation.com', 'Self Leadership'),
(4, 'Silas N. Gasasira', 'sgasasira@alueducation.com', 'Computing and IT'),
(5, 'Zachariah Jambo', 'zjambo@alueducation.com', 'Computing and IT'),
(6, 'Sampson S. Daniels', 'sdaniels@alueducation.com', 'Software Engineering'),
(7, 'Teacher to be', '----@alueducation.com', 'unknown');
 select * from Faculty;
UPDATE Faculty SET department = 'Web Infrastructure' WHERE faculty_id = 4;
DELETE FROM Faculty WHERE faculty_id = 7;
SELECT * FROM Faculty WHERE department = 'Software Engineering';
 select * from Faculty;




CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    faculty_id INT,
    classroom_id INT,
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
    FOREIGN KEY (classroom_id) REFERENCES Classroom(classroom_id)
);

INSERT INTO Courses (course_id, course_name, credits, faculty_id, classroom_id)
VALUES
(1, 'Linux Introduction', 3, 4, 1),
(2, 'Python Programming', 4, 1, 2),
(3, 'Web Infrastructure', 4,5,3),
(4, 'Frontend Web Development', 4, 6, 3),
(5, 'Self Leadership and Dynamics', 3, 3,2),
(6, 'Temporary Course', 2, 2, 1);
 select * from Courses;

UPDATE Courses
SET credits = 5
WHERE course_id = 3;

DELETE FROM Courses WHERE course_id = 6;

SELECT * FROM Courses WHERE credits = 4;
SELECT * FROM Courses WHERE credits >= 4;

CREATE TABLE Extra_Curricular_Activities(
    activity_id int primary key,
    activity_name varchar(100),
    category varchar(50),
    faculty_advisor_id int,
    foreign key (faculty_advisor_id) references Faculty(faculty_id)

);
CREATE TABLE Student_Courses(
    student_id int,
    course_id int,
    primary key (student_id, course_id),
    foreign key (student_id) references Students(student_id),
    foreign key (course_id) references Courses(course_id)
);
CREATE TABLE Student_Activities(
    student_id int,
    activity_id int,
    primary key (student_id, activity_id),
    foreign key (student_id) references Students(student_id),
    foreign key (activity_id) references Extra_Curricular_Activities(activity_id)
);
insert into Extra_Curricular_Activities(activity_id, activity_name, category, faculty_advisor_id)
values
(1, 'U-love club', 'Social', 1),
(2, 'Alfajiri  club', 'Social', 4),
(3, 'Debate Society', 'Academic', 3),
(4, 'Noise makers', 'Music', 2),
(5, 'Claude  builders club', 'Academic', 5),
(6, 'Catholic society', 'Religious', 1);
insert into Student_Courses(student_id, course_id)
values
(123, 1),
(123, 2),
(234, 2),
(234, 3),
(542, 2),
(542, 4),
(656, 1),
(656, 5),
(768, 5),
(768, 2);
insert into Student_Activities(student_id, activity_id)
values
(123, 2),
(234, 1),
(542, 3),
(656, 2),
(768, 4),
(768, 1);
UPDATE Extra_Curricular_Activities
SET activity_name = ' ALU SPORTS  Club' WHERE activity_id = 1;
DELETE FROM Extra_Curricular_Activities WHERE activity_id = 6;
SELECT * FROM Student_Activities    WHERE activity_id = 2;




SELECT * FROM Extra_Curricular_Activities;
SELECT * FROM Student_Activities;
SELECT *FROM Student_Courses