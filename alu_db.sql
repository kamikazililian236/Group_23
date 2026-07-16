CREATE TABLE Students(
    student_id int primary key,
    name varchar(100),
    email varchar(100),
    foreign key(classroom_id), references Classroom(classroom_id),
    enrollment_date date
);

select * from Students;
insert from Students(student_id, name, email, classroom_id, enrollment_date)
VALUES
(123, 'Lilian Kamikazi', 'l.kamikazi@alustudent.com', 001, '2026-01-05'),
(234, 'Kingsley Kipkoech', 'k.kipkoech@alustudent', 002, '2026-01-06'),
(542, 'Vanessa Kampiire', 'v.kampiire@alustudent.com' 001, '2026-01-06'),
(656, 'Gabriel Agabo', 'g.agabo@alustudent.com', 002, '2026-01-06'),
(768, 'Rita Akariza', 'r.akariza@alustudent.com', 003, '2026-01-05'),
(876, 'Felix Mwaniki', 'f.mwaniki@alustudent', 004, '2026-01-05')

UPDATE Students SET classroom_id = 003 WHERE student_id = 234 #Felix
