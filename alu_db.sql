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