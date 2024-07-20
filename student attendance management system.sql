CREATE TABLE student (
    s_id INT PRIMARY KEY,
    s_name VARCHAR(100),
    gender CHAR(1)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

CREATE TABLE faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(100),
    gender CHAR(1)
);

CREATE TABLE lecture (
    lecture_no INT PRIMARY KEY,
    date DATE,
    start_time TIME,
    duration INT,
    type VARCHAR(50),
    course_id INT,
    faculty_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id)
);

CREATE TABLE attendance (
    s_id INT,
    lecture_no INT,
    status VARCHAR(20),
    PRIMARY KEY (s_id, lecture_no),
    FOREIGN KEY (s_id) REFERENCES student(s_id),
    FOREIGN KEY (lecture_no) REFERENCES lecture(lecture_no)
);