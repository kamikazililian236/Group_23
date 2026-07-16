CREATE  DATABASE Group_23;
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    department VARCHAR(100),
    email VARCHAR(100)
);
insert into Faculty(faculty_id, name, email, department)
values
(1, 'Herve Musangwa', 'hmusangwa@alueducation.com', 'Software Engineering'),
(2, 'Ruth Bazing', 'rbazing@alueducation.com', 'Software Engineering'),
(3, 'Angelique Ishimwe', 'aishimwe@alueducation.com', 'Self Leadership'),
(4, 'Silas N. Gasasira', 'sgasasira@alueducation.com', 'Computing and IT'),
(5, 'Zachariah Jambo', 'zjambo@alueducation.com', 'Computing and IT'),
(6, 'Sampson S. Daniels', 'sdaniels@alueducation.com', 'Software Engineering'),
(7, 'Temporary Teacher', 'temp@alueducation.com', 'Temporary');
UPDATE Faculty 
SET department = 'Web Infrastructure' 
WHERE faculty_id = 4;
DELETE FROM Faculty 
WHERE faculty_id = 7;
SELECT * FROM Faculty 
WHERE department = 'Software Engineering';

