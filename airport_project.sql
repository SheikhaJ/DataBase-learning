/*
CREATE TABLE Airline(
airline_id int PRIMARY KEY Identity(1,1),
airline_name varchar(60) not null,
airline_number int not null, 
airline_email varchar(60) not null, 
);

CREATE TABLE Flight(
f_id int PRIMARY KEY Identity(1,1),
f_name varchar(60) not null,
departure_city varchar(60) not null, 
destination_city varchar(60) not null, 
arrival_time time not null, 
departure_time time not null,
status varchar(60) not null, 
gate_no int not null, 
airlineID int Foreign Key References Airline(airline_id) 
);

CREATE TABLE Terminal(
ter_id int PRIMARY KEY Identity(1,1),
ter_name varchar(60) not null,
);

CREATE TABLE Passengers(
pass_id int PRIMARY KEY Identity(1,1),
pass_fname varchar(60) not null,
pass_lname varchar(60) not null, 
pass_phone int not null,
pass_email varchar(60) not null, 
pass_DOB date not null,
pass_gender varchar(60) not null, 
pass_nationality varchar(60) not null,
passport_no int not null,
airlineID int Foreign Key References Airline(airline_id), 
flightID int Foreign Key References Flight(f_id),
terminalID int Foreign Key References Terminal(ter_id) 
);

CREATE TABLE Officer(
officer_id int PRIMARY KEY Identity(1,1),
officer_name varchar(60) not null,
position varchar(60) not null, 
);

CREATE TABLE Check_point(
c_id int PRIMARY KEY Identity(1,1),
pass_location varchar(60) not null,
t_name varchar(60) not null, 
pass_capacity int not null,
officerID int Foreign Key References Officer(officer_id), 
terminalID int Foreign Key References Terminal(ter_id)
);

CREATE TABLE Gate(
get_id int PRIMARY KEY Identity(1,1),
get_no int not null,
airlineID int Foreign Key References Airline(airline_id), 
terminalID int Foreign Key References Terminal(ter_id)
);

CREATE TABLE Baggege(
bag_id int PRIMARY KEY Identity(1,1),
tracking_no int not null,
weight int not null,
passengerID int Foreign Key References Passengers(pass_id), 
checkID int Foreign Key References Check_point(c_id)
); */