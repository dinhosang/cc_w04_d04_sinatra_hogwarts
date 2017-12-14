DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;


CREATE TABLE houses (
  id serial2 PRIMARY KEY,
  name varchar(255) NOT NULL,
  logo text NOT NULL
);


CREATE TABLE students (
  id serial2 PRIMARY KEY,
  first_name varchar(255) NOT NULL,
  second_name varchar(255) NOT NULL,
  house int2 REFERENCES houses(id),
  age int2 NOT NULL
);
