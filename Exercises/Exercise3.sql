CREATE TABLE specialties (
  specialty_id INT PRIMARY KEY,
  specialty_name VARCHAR(50)
);

CREATE TABLE doctors (
  doctor_id INT PRIMARY KEY,
  doctor_name VARCHAR(50),
  specialty_id INT,
  FOREIGN KEY (specialty_id) REFERENCES specialties (specialty_id)
);

CREATE TABLE patients (
  patient_id INT PRIMARY KEY,
  patient_name VARCHAR(50),
  gp_id INT,
  FOREIGN KEY (gp_id) REFERENCES doctors (doctor_id)
);

CREATE TABLE appointments (
  appointment_id INT PRIMARY KEY,
  patient_id INT,
  doctor_id INT,
  appointment_date DATE,
  FOREIGN KEY (patient_id) REFERENCES patients (patient_id),
  FOREIGN KEY (doctor_id) REFERENCES doctors (doctor_id)
);

CREATE TABLE patient_cards (
  card_id INT PRIMARY KEY,
  patient_id INT,
  visit_date DATE,
  treatment VARCHAR(100),
  FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
);
