-- Schema for a cookery book
CREATE TABLE dishes (
  dish_id INT PRIMARY KEY,
  dish_name VARCHAR(50),
  category VARCHAR(50),
  difficulty INT,
  preparation_time INT
);

CREATE TABLE ingredients (
  ingredient_id INT PRIMARY KEY,
  ingredient_name VARCHAR(50)
);

CREATE TABLE dish_ingredients (
  dish_id INT,
  ingredient_id INT,
  amount VARCHAR(50),
  FOREIGN KEY (dish_id) REFERENCES dishes (dish_id),
  FOREIGN KEY (ingredient_id) REFERENCES ingredients (ingredient_id)
);

CREATE TABLE occasions (
  occasion_id INT PRIMARY KEY,
  occasion_name VARCHAR(50)
);

CREATE TABLE dish_occasions (
  dish_id INT,
  occasion_id INT,
  FOREIGN KEY (dish_id) REFERENCES dishes (dish_id),
  FOREIGN KEY (occasion_id) REFERENCES occasions (occasion_id)
);
