
create table car (
	car_uid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

create table person (
  person_uid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	gender VARCHAR(7) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50),
  car_uid UUID REFERENCES car (car_uid),
  UNIQUE(person_uid),
  UNIQUE(email)
);


insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Hyundai', 'Tucson', '51712.22');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Volvo', 'XC60', '28275.98');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Lexus', 'LFA', '51969.51');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Ford', 'Crown Victoria', '75820.31');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Lincoln', 'Continental Mark VII', '58075.37');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Lexus', 'HS', '97614.43');

insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Felecia', 'Teissier', 'fteissier1i@privacy.gov.au', 'Female', '1972-11-21', 'Canada');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Ailee', 'Theseira', 'atheseira1j@github.io', 'Female', '1986-08-17', 'Germany');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Raviv', 'Fick', 'rfick1k@discovery.com', 'Male', '1998-03-11', 'France');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Tobias', 'Bodycomb', 'tbodycomb1l@seesaa.net', 'Male', '1980-01-30', 'United States');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Laurena', 'McCloughlin', null, 'Female', '2004-04-15', 'United States');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Bernie', 'Cockson', null, 'Female', '1992-10-18', 'France');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Juliette', 'Millett', null, 'Female', '1979-08-26', 'United States');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Cash', 'Ravenscroftt', null, 'Male', '1995-09-03', 'Canada');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Thomasa', 'Wigley', 'twigley1q@ucoz.ru', 'Female', '1991-04-27', 'United States');
