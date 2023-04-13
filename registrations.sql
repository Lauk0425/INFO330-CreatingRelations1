CREATE TABLE IF NOT EXISTS student_courses 
(studentid, course, grade NUMERIC DEFAULT NULL, 
FOREIGN KEY (studentid) REFERENCES students(id), 
FOREIGN KEY (course) REFERENCES course(code)); 

INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO330A');
INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO448A');
INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO314');
INSERT INTO student_courses (studentid, course) VALUES (3, 'INFO330A');
INSERT INTO student_courses (studentid, course) VALUES (3, 'INFO449A');
INSERT INTO student_courses (studentid, course) VALUES (2, 'BAW0100');
INSERT INTO student_courses (studentid, course) VALUES (2, 'BAW100A');
INSERT INTO student_courses (studentid, course) VALUES (4, 'BAW0100');