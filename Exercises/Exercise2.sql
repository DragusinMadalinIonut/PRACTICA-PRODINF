CREATE TABLE languages (
  language_id INT PRIMARY KEY,
  language_name VARCHAR(50)
);

CREATE TABLE languages (
  language_id INT PRIMARY KEY,
  language_name VARCHAR(50)
);

CREATE TABLE languages (
  language_id INT PRIMARY KEY,
  language_name VARCHAR(50)
);

CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(100),
  language_id INT,
  level INT,
  FOREIGN KEY (language_id) REFERENCES languages(language_id)
);



CREATE TABLE teachers (
  teacher_id INT PRIMARY KEY,
  teacher_name VARCHAR(50)
);

CREATE TABLE groups (
  group_id INT PRIMARY KEY,
  course_id INT,
  teacher_id INT,
  schedule VARCHAR(100),
  FOREIGN KEY (course_id) REFERENCES courses (course_id),
  FOREIGN KEY (teacher_id) REFERENCES teachers (teacher_id)
);

CREATE TABLE class_days (
  class_day_id INT PRIMARY KEY,
  group_id INT,
  day VARCHAR(20),
  FOREIGN KEY (group_id) REFERENCES groups (group_id)
);
