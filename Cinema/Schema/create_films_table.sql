CREATE DATABASE cinema_booking_system;

SHOW DATABASES;

USE cinema_booking_system;

CREATE TABLE films (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL UNIQUE,
  length_min INT NOT NULL
);

SHOW TABLES;

DESC films;