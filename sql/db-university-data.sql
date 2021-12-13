insert into departments(name, address, email, website, head_of_department, phone) values('Ingegneria', 'P.za Leonardo da Vinci, Milano', 'ingegneria@polimi.com', 'www.polimi.it', 'Renza Piano', '02 12345678');
insert into departments(name, address, email, website, head_of_department, phone) values('Economia', 'V.le Cavour, Milano', 'economia@cattolica.com', 'www.economia.it', 'Warren Buffet', '02 98765432');

insert into degrees(name, email, level, departments_id, address, website) values('Ingegneria Informatica', 'ingInfo@polimi.com', 'Magistrale', 5, 'Via Golgi 30, Milano', 'www.inggInfo.it');
insert into degrees(name, email, level, departments_id, address, website) values('Economia e Commercio', 'eco&commercio@cattolica.com', 'Triennale', 6, 'Via non mi ricordo 14, Milano', 'www.eco&commercio.it');

insert into courses(name, description, website, cfu, degrees_id) values('Programmazione in C', 'Fondamenti di prigrammazione in C e sistema binario', 'www.CCourse.it', 10, 1);
insert into courses(name, description, website, cfu, degrees_id) values('Bilanci', 'Calcoli di bilancio e stato patrimoniale', 'www.BilanciEco.it', 8, 2);

insert into exams(exam_date, exam_hour, location, address, courses_id) values ('2022-01-19', '08:30', 'Aula B3.2.2', 'Via Golgi, 12', 1);
insert into exams(exam_date, exam_hour, location, address, courses_id) values ('2022-02-14', '09:00', 'Aula A2', 'V.le Cavour 10', 2);

insert into student(name, email, surname, date_of_birth, fiscal_code, date_of_enrolment, registration_number, degrees_id) values('Mario', 'marioRossi@gmail.com', 'Rossi', '1992-05-11', 'MRARSS12A10H262F', '2022-08-20', 855432, 1);
insert into student(name, email, surname, date_of_birth, fiscal_code, date_of_enrolment, registration_number, degrees_id) values('Lucia', 'luciaBianchi@gmail.com', 'Bianchi', '2000-09-02', 'LCUBNC82A22H264T', '2022-07-30', 855001, 2);

insert into student_exams(student_id, exams_id, vote) values(1, 1, 27);
insert into student_exams(student_id, exams_id, vote) values(2, 2, 30);

insert into teachers(name, surname, phone, email, office_address) values('Lorenzo', 'Boella', '018-2335971', 'boella@polimi.com', 'Via Golgi 75, Milano');
insert into teachers(name, surname, phone, email, office_address) values('Cristiana', 'Bolchini', '410-4617811', 'bolchini@cattolica.com', 'V.le Cavour 1, Milano');

insert into teachers_courses(teachers_id, courses_id) values(1, 1);
insert into teachers_courses(teachers_id, courses_id) values(2, 2);
