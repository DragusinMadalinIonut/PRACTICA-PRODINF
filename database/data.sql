-- Create the database
CREATE DATABASE IF NOT EXISTS TicketsManagement;

-- Switch to the database
USE TicketsManagement;

-- Create the table
CREATE TABLE IF NOT EXISTS tickets (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    status VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- Insert sample data
INSERT INTO tickets (name, email, status) VALUES
    ('Hans', 'hans@mail.com', 'active');


-- Create the table
CREATE TABLE IF NOT EXISTS destinations (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Insert sample data
INSERT INTO destinations (name, location, description) VALUES
    ('Destination 1', 'Location 1', 'Description 1'),
    ('Destination 2', 'Location 2', 'Description 2');
