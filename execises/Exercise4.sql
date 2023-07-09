-- Schema for a housing association
CREATE TABLE buildings (
  building_id INT PRIMARY KEY,
  building_name VARCHAR(50)
);

CREATE TABLE apartments (
  apartment_id INT PRIMARY KEY,
  building_id INT,
  FOREIGN KEY (building_id) REFERENCES buildings (building_id)
);

CREATE TABLE tenants (
  tenant_id INT PRIMARY KEY,
  tenant_name VARCHAR(50),
  apartment_id INT,
  is_member BOOLEAN,
  FOREIGN KEY (apartment_id) REFERENCES apartments (apartment_id)
);


CREATE TABLE charges (
  charge_id INT PRIMARY KEY,
  apartment_id INT,
  charge_date DATE,
  charge_amount DECIMAL(10, 2),
  FOREIGN KEY (apartment_id) REFERENCES apartments (apartment_id)
);

CREATE TABLE additional_services (
  service_id INT PRIMARY KEY,
  apartment_id INT,
  service_name VARCHAR(50),
  service_amount DECIMAL(10, 2),
  FOREIGN KEY (apartment_id) REFERENCES apartments (apartment_id)
);
