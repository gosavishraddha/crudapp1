DROP DATABASE  IF EXISTS cruddb1;
CREATE DATABASE cruddb1;

\c cruddb1

DROP TABLE IF EXISTS students;
CREATE TABLE students(
    id     SERIAL PRIMARY KEY,
    name   VARCHAR(100) NOT NULL,
    email  VARCHAR(50) UNIQUE NOT NULL,
    mobile VARCHAR(10) NOT NULL
);

INSERT INTO students(name,email,mobile)VALUES('shreya kinge','shreya@gmail.com','1234567897');
INSERT INTO students(name,email,mobile)VALUES('shreya dhumal','shreyadhumal@gmail.com','9765432142');
INSERT INTO students(name,email,mobile)VALUES('mrunal kadu','mrunal@gmail.com','9123456783');

SELECT * FROM students;