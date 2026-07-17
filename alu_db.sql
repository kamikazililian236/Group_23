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
SET capacity = 30
WHERE classroom_id = 006;

DELETE FROM Classroom WHERE classroom_id = 005;
SELECT * FROM Classroom WHERE capacity > 40;

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


