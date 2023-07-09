-- Schema for a zoo
CREATE TABLE cages (
  cage_id INT PRIMARY KEY,
  cage_name VARCHAR(50)
);

CREATE TABLE animals (
  animal_id INT PRIMARY KEY,
  animal_name VARCHAR(50),
  species_id INT,
  date_of_birth DATE,
  FOREIGN KEY (species_id) REFERENCES species (species_id)
);

CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  employee_name VARCHAR(50)
);

CREATE TABLE cage_employees (
  cage_id INT,
  employee_id INT,
  FOREIGN KEY (cage_id) REFERENCES cages (cage_id),
  FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);

CREATE TABLE species (
  species_id INT PRIMARY KEY,
  species_name VARCHAR(50),
  graphic_of_operations VARCHAR(100)
);

CREATE TABLE species_operations (
  species_id INT,
  operation_name VARCHAR(50),
  operation_time DATE, 
  FOREIGN KEY (species_id) REFERENCES species (species_id)
);



