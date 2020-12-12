/*CREATE DATABASE tpKafka;*/



DROP TABLE IF EXISTS global;
DROP TABLE IF EXISTS countries;

/* CREATION TABLES */

CREATE TABLE global
(
	id INT PRIMARY KEY NOT NULL,
	new_confirmed bigint,
	total_confirmed bigint,
	new_deaths bigint,
	total_deaths bigint,
	new_recovered bigint,
	total_recovered bigint,
	date_maj TIMESTAMP
);


CREATE TABLE countries
(
	country VARCHAR(200) PRIMARY KEY,
	country_code VARCHAR(6),
	slug VARCHAR(200),
	new_confirmed bigint,
	total_confirmed bigint,
	new_deaths bigint,
	total_deaths bigint,
	new_recovered bigint,
	total_recovered bigint,
	date_maj TIMESTAMP
);

