create database test_university;
use test_university;

create table departments (
	id INT not null auto_increment,
	name VARCHAR(100) not null,
	address VARCHAR(255) not NULL,
	primary key (id)
); 

create table degrees (
	id INT not null auto_increment,
	name VARCHAR(255) not null,
	email VARCHAR(100),
	level VARCHAR(100),
	departments_id INT not null,
	primary key (id),
	foreign key (departments_id) references departments(id)
);

create table student (
	id INT not null auto_increment,
	name VARCHAR(255) not null,
	email VARCHAR(100),
	surname VARCHAR(255) not null,
	date_of_birth DATE not null,
	fiscal_code VARCHAR(16) not null,
	date_of_enrolment DATE not null,
	registration_number INT not null,
	degrees_id INT not null,
	primary key (id),
	foreign key (degrees_id) references degrees(id)
);

create table teachers (
	id INT not null auto_increment,
	name VARCHAR(255) not null,
	surname VARCHAR(255) not null,
	phone VARCHAR(50),
	email VARCHAR(100),
	office_address VARCHAR(255),
	primary key (id)
);

create table courses (
	id INT not null auto_increment,
	name VARCHAR(255) not null,
	description VARCHAR(255),
	website VARCHAR(150) not null,
	cfu INT not null,
	degrees_id INT not null,
	primary key (id),
	foreign key (degrees_id) references degrees(id)
);

create table exams (
	id INT not null auto_increment,
	exam_date DATE not null,
	exam_hour TIMESTAMP,
	location VARCHAR(255),
	address VARCHAR(150),
	courses_id INT not null,
	primary key (id),
	foreign key (courses_id) references courses(id)
);

create table student_exams (
	student_id int not null,
	exams_id int not null,
	vote INT,
	primary key(student_id, exams_id),
	foreign key(student_id) references student(id),
	foreign key(exams_id) references exams(id)
);

create table teachers_courses (
	teachers_id int not null,
	courses_id int not null,
	primary key(teachers_id, courses_id),
	foreign key(teachers_id) references teachers(id),
	foreign key(courses_id) references courses(id)
);


alter table degrees add column address varchar(255);
alter table degrees add column website varchar(255);

alter table departments add column phone varchar(50);
alter table departments add column email varchar(100);
alter table departments add column website varchar(150);
alter table departments add column head_of_department varchar(150);




