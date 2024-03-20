-- Project Title: Metro Management System (metroconnect.com)
--Group Members
--Umer Khalid (22L-6546)
--Tahawar Ali (22L-6761)
--Muhammad Abdullah (22L-6594)
--Faizan Shabir (22L-6552)

create database MetroManagementSystem

create table [User]
(
UserName varchar(255),
UserID int primary key,
cnic int,
password varchar(255)
);

create table Trains
(
TrainID int primary key,
FromStation varchar(255),
ToStation varchar(255),
StartTime datetime,
EndTime datetime
);

create table Reservations
(
ReservationID int primary key,
PassengerID int foreign key references [User](UserID),
FromStation varchar(255),
ToStation varchar(255),
TrainID int foreign key references Trains(TrainID),
TrainName varchar(255)
);

create table Payments
(
PaymentID int primary key,
UserId int foreign key references [User](UserID),
UserName varchar(255),
PaymentDate datetime,
amount float
);

create table Stations
(
StationID int primary key,
StationName varchar(255)
);

create table Department
(
DepartmentID int primary key,
StationID int foreign key references Stations(StationID),
DepartmentName varchar(255)
);

create table Employees
(
EmployeeID int primary key,
FirstName varchar(255),
LastName varchar(255),
Salary float,
BirthDate date,
DepartmentID int foreign key references Department(DepartmentID),
StationID int foreign key references Stations(StationID),
Phone varchar(255)
);

create table ComplaintsAndQueries
(
complaint_id int,
UserID int foreign key references [User](UserID),
username varchar(255), 
queries varchar(255),
complaint_date date
);

create table rides
(
RideID int primary key,
FromStation varchar(255),
ToStation varchar(255),
StartTime datetime,
EndTime datetime,
[Date] date,
TrainID int foreign key references Trains(TrainID)
);

create table [Routes]
(
RouteID int primary key,
FromStation varchar(255),
ToStation varchar(255),
Fare float,
TravelTime varchar(255),
Distance float,
Popularity int,
[State] varchar(255) 
);


