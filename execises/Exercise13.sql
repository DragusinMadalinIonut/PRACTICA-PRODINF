CREATE TABLE authors (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(50)
);

CREATE TABLE books (
  book_id INT PRIMARY KEY,
  title VARCHAR(100),
  author_id INT,
  UNIQUE (title, author_id),
  FOREIGN KEY (author_id) REFERENCES authors (author_id)
);

CREATE TABLE copies (
  copy_id INT PRIMARY KEY,
  book_id INT,
  UNIQUE (book_id, copy_id),
  FOREIGN KEY (book_id) REFERENCES books (book_id)
);

CREATE TABLE readers (
  reader_id INT PRIMARY KEY,
  reader_name VARCHAR(50)
);

CREATE TABLE loans (
  loan_id INT PRIMARY KEY,
  reader_id INT,
  copy_id INT,
  loan_date DATE,
  return_date DATE,
  FOREIGN KEY (reader_id) REFERENCES readers (reader_id),
  FOREIGN KEY (copy_id) REFERENCES copies (copy_id)
);
