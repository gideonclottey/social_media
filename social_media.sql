CREATE DATABASE IF NOT EXISTS media;

USE media; -- usinmg the media databes for tables 

CREATE TABLE user
(u_id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(255) NOT NULL,
created_at 	TIMESTAMP DEFAULT NOW());

CREATE TABLE photo
(p_id INT AUTO_INCREMENT PRIMARY KEY,
image_url VARCHAR(255) NOT NULL,
user_id INT NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (user_id) REFERENCES user(u_id));