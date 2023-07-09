CREATE TABLE divisions (
  division_id INT PRIMARY KEY,
  division_name VARCHAR(50)
);

CREATE TABLE doctors (
  doctor_id INT PRIMARY KEY,
  doctor_name VARCHAR(50),
  division_id INT,
  FOREIGN KEY (division_id) REFERENCES divisions (division_id)
);

CREATE TABLE wards (
  ward_id INT PRIMARY KEY,
  ward_name VARCHAR(50),
  head_doctor_id INT,
  FOREIGN KEY (head_doctor_id) REFERENCES doctors (doctor_id)
);

CREATE TABLE patients (
  patient_id INT PRIMARY KEY,
  patient_name VARCHAR(50),
  registration_time TIMESTAMP,
  ward_id INT,
  doctor_id INT,
  FOREIGN KEY (ward_id) REFERENCES wards (ward_id),
  FOREIGN KEY (doctor_id) REFERENCES doctors (doctor_id)
);

