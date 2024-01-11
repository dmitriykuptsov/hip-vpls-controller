CREATE DATABASE IF NOT EXISTS HIP_VPLS;

use HIP_VPLS;

CREATE TABLE IF NOT EXISTS Users (
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(100) NOT NULL,
	password VARCHAR(100) NOT NULL,
	salt VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Devices (
	id INT PRIMARY KEY AUTO_INCREMENT,
	hit VARCHAR(100) NOT NULL,
	ip VARCHAR(100) NOT NULL,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Mesh (
	id INT PRIMARY KEY AUTO_INCREMENT,
	device_1_id INT NOT NULL,
	device_2_id INT NOT NULL,
	name VARCHAR(100) NOT NULL DEFAULT ""
);

CREATE TABLE IF NOT EXISTS Firewall (
	id INT PRIMARY KEY AUTO_INCREMENT,
	device_1_id INT NOT NULL,
	device_2_id INT NOT NULL,
	rule VARCHAR(100) NOT NULL DEFAULT "allow"
);

CREATE TABLE IF NOT EXISTS ACL (
	id INT PRIMARY KEY AUTO_INCREMENT,
	device_id INT NOT NULL,
	mac1 VARCHAR(8) NOT NULL,
	mac2 VARCHAR(8) NOT NULL,
	rule VARCHAR(100) NOT NULL DEFAULT "allow"
);

CREATE TABLE IF NOT EXISTS Hashes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	device_id INT NOT NULL,
	type VARCHAR(8) NOT NULL,
	hash VARCHAR(32) NOT NULL
);
