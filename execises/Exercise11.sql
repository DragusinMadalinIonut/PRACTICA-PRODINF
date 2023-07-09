CREATE TABLE students (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50)
);

CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50)
);

CREATE TABLE laboratory_groups (
  group_id INT PRIMARY KEY,
  group_name VARCHAR(50),
  course_id INT,
  FOREIGN KEY (course_id) REFERENCES courses (course_id)
);

CREATE TABLE university_staff (
  staff_id INT PRIMARY KEY,
  staff_name VARCHAR(50)
);

CREATE TABLE classes (
  class_id INT PRIMARY KEY,
  course_id INT,
  group_id INT,
  staff_id INT,
  class_date DATE,
  FOREIGN KEY (course_id) REFERENCES courses (course_id),
  FOREIGN KEY (group_id) REFERENCES laboratory_groups (group_id),
  FOREIGN KEY (staff_id) REFERENCES university_staff (staff_id)
);

CREATE TABLE student_presence (
  presence_id INT PRIMARY KEY,
  student_id INT,
  class_id INT,
  is_present NUMBER(1),
  FOREIGN KEY (student_id) REFERENCES students (student_id),
  FOREIGN KEY (class_id) REFERENCES classes (class_id)
);

