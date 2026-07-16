CREATE TABLE Students(
    student_id int primary key,
    name varchar(100),
    email varchar(100),
    foreign key(classroom_id), references Classroom(classroom_id),
    enrollment_date date
);

