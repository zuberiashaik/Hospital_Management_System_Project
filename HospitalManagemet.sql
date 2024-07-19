use hospitalmanagementsystem;
create table patient(
mrno INT primary key,
name varchar(100),
age INT,
gender varchar(100),
notes TEXT
);

CREATE TABLE doctor (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    specialist VARCHAR(100)
);
CREATE TABLE registration (
    mrno INT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    note TEXT,
    foreign key(mrno)references patient(mrno)
);

CREATE TABLE health_office (
    reception TEXT
);


create table administraction(
input varchar(100),
endorsem varchar(100),
letterno int);

create table medical_reprt(
mrno INT,
report_date DATE,
diagnose TEXT,
drugs TEXT,
reference TEXT,
foreign key(mrno)references patient(mrno)
);