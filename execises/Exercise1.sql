CREATE TABLE cities (
  city_id INT PRIMARY KEY,
  city_name VARCHAR(50)
);

CREATE TABLE hotels (
  hotel_id INT PRIMARY KEY,
  hotel_name VARCHAR(100),
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
  customer_id INT,
  hotel_id INT,
  number_of_people INT,
  start_date DATE,
  end_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
  FOREIGN KEY (hotel_id) REFERENCES hotels (hotel_id)
);
