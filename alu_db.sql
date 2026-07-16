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
UPDATE Faculty 
SET department = 'Web Infrastructure' WHERE faculty_id = 4;
DELETE FROM Faculty WHERE faculty_id = 7;
SELECT * FROM Faculty WHERE department = 'Software Engineering';

