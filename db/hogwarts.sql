DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;


CREATE TABLE students (
  id serial2 PRIMARY KEY,
  first_name varchar(255) NOT NULL,
  second_name varchar(255) NOT NULL,
  house varchar(255) NOT NULL,
  age int2 NOT NULL
);

CREATE TABLE houses (
  id serial2 PRIMARY KEY,
  name varchar(255) NOT NULL,
  logo text NOT NULL
);
