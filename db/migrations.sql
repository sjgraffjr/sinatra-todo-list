CREATE DATABASE todo;

\c todo

CREATE TABLE todos(
 
 	id SERIAL PRIMARY KEY,
 	task VARCHAR(100)

	);