CREATE TABLE directors (
  director_id INT PRIMARY KEY,
  director_name VARCHAR(50)
);

CREATE TABLE movies (
  movie_id INT PRIMARY KEY,
  movie_title VARCHAR(100),
  director_id INT,
  source_id INT,
  FOREIGN KEY (director_id) REFERENCES directors (director_id),
  FOREIGN KEY (source_id) REFERENCES sources (source_id)
);

CREATE TABLE actors (
  actor_id INT PRIMARY KEY,
  actor_name VARCHAR(50)
);

CREATE TABLE movie_actors (
  movie_id INT,
  actor_id INT,
  FOREIGN KEY (movie_id) REFERENCES movies (movie_id),
  FOREIGN KEY (actor_id) REFERENCES actors (actor_id)
);

CREATE TABLE sources (
  source_id INT PRIMARY KEY,
  source_name VARCHAR(100)
);
