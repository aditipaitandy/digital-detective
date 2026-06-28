CREATE DATABASE cyber_intelligence;

USE cyber_intelligence;

CREATE TABLE users
(
user_id INT PRIMARY KEY,
name VARCHAR(100),
age INT,
city VARCHAR(50),
risk_score INT,
created_date DATE
);

