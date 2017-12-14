DROP TABLE IF EXISTS students;


CREATE TABLE students (
  id serial4 PRIMARY KEY,
  first_name varchar(255) NOT NULL,
  second_name varchar(255) NOT NULL,
  house varchar(255) NOT NULL,
  age int2 NOT NULL
);
