DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE students (
  id SERIAL,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house VARCHAR(255),
  age INT
);

CREATE TABLE houses (
  id SERIAL,
  name VARCHAR(255),
  logo VARCHAR(512)
);
