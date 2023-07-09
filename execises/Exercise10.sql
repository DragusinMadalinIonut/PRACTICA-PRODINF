CREATE TABLE clients (
  client_id INT PRIMARY KEY,
  client_name VARCHAR(50)
);

CREATE TABLE jobs (
  job_id INT PRIMARY KEY,
  job_title VARCHAR(50),
  salary DECIMAL(10, 2)
);

CREATE TABLE matchmaking (
  matchmaking_id INT PRIMARY KEY,
  client_id INT,
  job_id INT,
  date DATE,
  CONSTRAINT fk_matchmaking_clients
    FOREIGN KEY (client_id)
    REFERENCES clients (client_id),
  CONSTRAINT fk_matchmaking_jobs
    FOREIGN KEY (job_id)
    REFERENCES jobs (job_id)
);

