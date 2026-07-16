-- =========================================
-- MEMBER 4: COURSES TABLE
-- =========================================

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
(1, 'Introduction to Programming', 3, 1, 1),
(2, 'Database Systems', 4, 2, 2),
(3, 'Data Structures', 3, 1, 3),
(4, 'Business Analytics', 3, 3, 2),
(5, 'Web Development', 4, 2, 1);

UPDATE Courses
SET credits = 4
WHERE course_id = 3;

DELETE FROM Courses
WHERE course_id = 5;

SELECT * FROM Courses
WHERE credits >= 4;