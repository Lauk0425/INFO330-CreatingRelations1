CREATE TABLE IF NOT EXISTS student_courses 
(studentid INTEGER, course VARCHAR(10), grade NUMERIC (2,1) DEFAULT NULL, 
FOREIGN KEY (studentid) REFERENCES students(id), 
FOREIGN KEY (course) REFERENCES course(code)); 

INSERT INTO student_courses (studentid, course, grade) VALUES (1, 'INFO330A', 3.1 );
INSERT INTO student_courses (studentid, course, grade) VALUES (1, 'INFO448A', 3.7);
INSERT INTO student_courses (studentid, course, grade) VALUES (1, 'INFO314', 2.5);
INSERT INTO student_courses (studentid, course, grade) VALUES (3, 'INFO330A', 2.9);
INSERT INTO student_courses (studentid, course, grade) VALUES (3, 'INFO449A', 3.6);
INSERT INTO student_courses (studentid, course, grade) VALUES (2, 'BAW0100', 3.9);
INSERT INTO student_courses (studentid, course, grade) VALUES (2, 'BAW100A', 3.8);
INSERT INTO student_courses (studentid, course, grade) VALUES (4, 'BAW0100', 3.5);