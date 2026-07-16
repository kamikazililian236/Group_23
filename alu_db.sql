CREATE  DATABASE  GROUP_23;
CREATE TABLE Extra_Curricular_Activities(
    activity_id int primary key,
    activity_name varchar(100),
    faculty_id int,
    foreign key (faculty_id) references Faculty(faculty_id)
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
insert into Extra_Curricular_Activities(activity_id, activity_name, faculty_id)
values
(1, 'Coding Club', 1),
(2, 'Football Club', 4),
(3, 'Debate Society', 3),
(4, 'Music Band', 2),
(5, 'Drama Club', 5),
(6, 'Temporary Club', 1);
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
(876, 2);
insert into Student_Activities(student_id, activity_id)
values
(123, 2),
(234, 1),
(542, 3),
(656, 2),
(768, 4),
(876, 1);
UPDATE Extra_Curricular_Activities
SET activity_name = 'Web Development Club'
WHERE activity_id = 1;
DELETE FROM Extra_Curricular_Activities
WHERE activity_id = 6;
SELECT * FROM Student_Activities
WHERE activity_id = 2;