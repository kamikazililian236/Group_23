CREATE DATABASE Group_23;
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    faculty_id INT,
    classroom_id INT,
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
    FOREIGN KEY (classroom_id) REFERENCES classroom(classroom_id)
);

INSERT INTO Courses (course_id, course_name, credits, faculty_id, classroom_id)
VALUES
(1, 'Linux Introduction', 3, 4, 1),
(2, 'Python Programming', 4, 1, 2),
(3, 'Web Infrastructure', 4, 5, 3),
(4, 'Frontend Web Development', 4, 6, 2),
(5, 'Self Leadership and Dynamics', 3, 3, 5),
(6, 'Temporary Course', 2, 2, 1);

UPDATE Courses
SET credits = 5
WHERE course_id = 3;

DELETE FROM Courses
WHERE course_id = 6;

SELECT * FROM Courses
WHERE credits = 4;
SELECT * FROM Courses
WHERE credits >= 4;
