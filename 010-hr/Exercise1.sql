-- Schema for a hotel network
CREATE TABLE cities (
  city_id INT PRIMARY KEY,
  city_name VARCHAR(50)
);

CREATE TABLE hotels (
  hotel_id INT PRIMARY KEY,
  hotel_name VARCHAR(50),
  city_id INT,
  FOREIGN KEY (city_id) REFERENCES cities (city_id)
);

CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  employee_name VARCHAR(50),
  job_title VARCHAR(50),
  city_id INT,
  FOREIGN KEY (city_id) REFERENCES cities (city_id)
);

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50)
);

CREATE TABLE bookings (
  booking_id INT PRIMARY KEY,
  hotel_id INT,
  customer_id INT,
  num_of_people INT,
  num_of_days INT,
  booking_date DATE,
  FOREIGN KEY (hotel_id) REFERENCES hotels (hotel_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);
