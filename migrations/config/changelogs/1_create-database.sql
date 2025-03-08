DROP TABLE IF EXISTS stocks;

CREATE TABLE stocks (
	id  SERIAL PRIMARY KEY,
	ticker text NULL,
	price numeric NULL
);