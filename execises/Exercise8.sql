CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  employee_name VARCHAR(50),
  current_job_id INT
);

CREATE TABLE jobs (
  job_id INT PRIMARY KEY,
  job_title VARCHAR(50),
  salary DECIMAL(10, 2)
);

CREATE TABLE job_history (
  job_history_id INT PRIMARY KEY,
  employee_id INT,
  job_id INT,
  start_date DATE,
  end_date DATE
);

ALTER TABLE employees
ADD CONSTRAINT fk_employees_jobs
FOREIGN KEY (current_job_id)
REFERENCES jobs (job_id);

ALTER TABLE job_history
ADD CONSTRAINT fk_job_history_employees
FOREIGN KEY (employee_id)
REFERENCES employees (employee_id);

ALTER TABLE job_history
ADD CONSTRAINT fk_job_history_jobs
FOREIGN KEY (job_id)
REFERENCES jobs (job_id);
