/*Task 1 Part 2 Q2: Create the tables and their attributes (i.e., the schemas) in Microsoft SQL 2008. */
drop database project;

create database Project;
use Project;

create table students (

ID int auto_increment primary key,
First_Name varchar(100)  not null ,
Last_Name varchar(100)  not null ,
Street varchar(100)  not null ,
City  varchar(100) not null ,
ZipCode  varchar(100)not null ,
Date_of_birth varchar(100) not null ,
Gender varchar(100)  not null ,
Category varchar(100) not null ,
Nationality varchar(100) not null ,
Current_Status varchar(100) not null ,
Special_Needs  varchar(100)  not null ,
Course_Registered_For  varchar(100)  not null ,
Created_At  varchar (100) not null ,
Modified_At varchar (100) not null 
);

create table Hall_Of_Residence (

ID int auto_increment primary key,
Student_FullName varchar(100)  not null ,
Address  varchar(100) not null ,
Telephone_Number varchar(100) not null ,
Manager_Name  varchar(100) not null ,
Room_Number int  not null , 
Place_Number  int  not null ,
Monthly_Rent_Rate varchar(100)  not null ,
Created_At  varchar (100) not null ,
Modified_At  varchar (100)not null 
);


create table Student_Flats (

ID int auto_increment primary key,
Flat_Number  int not null ,
Address  varchar (100)  not null ,
Number_of_rooms_avaliable  varchar(100)  not null ,
Created_At  varchar (100)  not null ,
Modified_At  varchar (100) not null 
);

create table Student_Flat_Inspections (

ID int auto_increment primary key,
Name_of_staff_member varchar(100) not null ,
Room_Number int not null ,
Date_of_inspection varchar(100)  not null ,
Flat_Condition varchar(100) not null , 
Additional_Comments varchar(100)  not null ,
Created_At varchar (100)  not null ,
Modified_At varchar (100) not null 
);


create table Leases (

ID int auto_increment primary key,
Lease_Number int  not null,
Duration_of_lease int  not null,
Name varchar(100)  not null,
Flat_or_Place_Number int not null,
Address varchar(100)  not null,
Entry_Date  varchar(100) not null,
Exit_Date varchar(100)  not null,
Created_At varchar (100)  not null,
Modified_At varchar (100) not null
);

create table Invoices (

Date_of_payment varchar(100) not null ,
Method_of_payment varchar(100) not null ,
ID int auto_increment primary key,
Lease_Number int not null,
Which_quarter int not null,
Payment_Due varchar(100) not null ,
Student_FullName varchar(100) not null,
Place_or_Flat_Number int not null,
Address varchar (100) not null,
Invocie_Number varchar(100) unique key not null,
Created_At varchar (100)  not null,
Modified_At varchar (100)  not null
);

create table Accomodation_Staff_Table (

Staff_ID varchar (100) primary key,
First_Name varchar(100)  not null,
Last_Name varchar(100)  not null,
Address varchar(100)  not null,
Date_of_birth varchar(100)  not null,
Gender varchar(100)  not null,
Position varchar(100)  not null,
Location varchar(100) not null,
Start_Date varchar(100)  not null,
Created_At varchar (100)  not null,
Modified_At varchar (100) not null
);

create table Courses (

Course_ID varchar(100) primary key,
Course_Title varchar(100)  not null,
Years varchar(100)  not null,
Instructor_Name varchar(100) not null,
Room_Number int not null,
Department_Name varchar(100)  not null,
Student_ID int  not null,
Start_Date varchar(100)  not null,
Created_At varchar (100)  not null,
Modified_At varchar (100)  not null
);


create table Emergency_Contacts (

Student_ID int auto_increment primary key,
SSN int unique key,
First_Name varchar(100)  not null,
Last_Name varchar(100) not null,
Relation_with_student varchar(100)  not null,
Address varchar(100)  not null,
Contact_Number varchar(100)  not null,
Created_At varchar (100)  not null,
Modified_At varchar (100) not null
);


/*Task 1 Part 2 Q3: Create 10 sample records within the appropriate tables  */

/* Students */


insert into students(ID, First_Name, Last_Name, Street, City, ZipCode, Date_of_birth, Gender, Category, Nationality, Current_Status, Special_Needs, Course_Registered_For, Created_At, Modified_At)
values(1, 'John', 'Smith', 'Havelock Dr', 'Brampton', 'L6Y 6U8', '1980-04-06', 'Male', 'Sophomore', 'German', 'Placed', 'No', 'Physics','04-08-18','05-09-2020');                                             

insert into students(ID, First_Name, Last_Name, Street, City, ZipCode, Date_of_birth, Gender, Category, Nationality, Current_Status, Special_Needs, Course_Registered_For, Created_At, Modified_At)
values(2, 'Alex', 'Congo', 'Forrest Dr', 'Toronto', 'L6Z 5T9', '1984-06-27', 'Male', 'Junior', 'Male', 'Placed', 'No', 'English','04-08-18','05-09-2020');   
																																
insert into students(ID, First_Name, Last_Name, Street, City, ZipCode, Date_of_birth, Gender, Category, Nationality, Current_Status, Special_Needs, Course_Registered_For, Created_At, Modified_At)
values(3, 'Amir', 'Naraine', 'Lion Head Dr', 'Brampton', 'L6S 6H8', '1998-05-05', 'Male', 'Junior', 'Indian', 'Placed', 'No', 'Business','04-08-18','05-09-2020') ;  

insert into students(ID, First_Name, Last_Name, Street, City, ZipCode, Date_of_birth, Gender, Category, Nationality, Current_Status, Special_Needs, Course_Registered_For, Created_At, Modified_At)
values(4, 'Isiah', 'Johnson', 'Shooter crt', 'Hamilton', 'N2R 4R4', '1978-06-24', 'Male', 'Junior', 'Africian', 'Placed', 'No', 'Technology','04-08-18','05-09-2020') ;  

insert into students(ID, First_Name, Last_Name, Street, City, ZipCode, Date_of_birth, Gender, Category, Nationality, Current_Status, Special_Needs, Course_Registered_For, Created_At, Modified_At)
values(5, 'Kyle', 'Chao', 'Augusta Ave', 'Vaughan', 'R5R L6T', '1988-01-27', 'Male', 'Sophomore', 'Japanese', 'Waiting', 'No', 'Health Science','04-08-18','05-09-2020');   

insert into students(ID, First_Name, Last_Name, Street, City, ZipCode, Date_of_birth, Gender, Category, Nationality, Current_Status, Special_Needs, Course_Registered_For, Created_At, Modified_At)
values(6, 'Stacy', 'Morgan', 'Cool Dr', 'Brampton', 'L6Y P2P', '1982-05-06', 'Female', 'Junior', 'Polish', 'Placed', 'No', 'Hair Asthetics','04-08-18','05-09-2020') ;  

insert into students(ID, First_Name, Last_Name, Street, City, ZipCode, Date_of_birth, Gender, Category, Nationality, Current_Status, Special_Needs, Course_Registered_For, Created_At, Modified_At)
values(7, 'Kendall', 'Robert', 'Helpless Dr', 'Oakville', 'I6Y K3R', '1994-05-06', 'Female', 'Sophomore', 'Irish', 'Placed', 'No', 'Criminalogy','04-08-18','05-09-2020')  ; 

insert into students(ID, First_Name, Last_Name, Street, City, ZipCode, Date_of_birth, Gender, Category, Nationality, Current_Status, Special_Needs, Course_Registered_For, Created_At, Modified_At)
values(8, 'Kim', 'Kardashian', 'Hoeville Ave', 'Brampton', 'R6Y F5T', '1992-06-07', 'Female', 'Sophomore', 'Spaninsh', 'Placed', 'No', 'Fitness','04-08-18','05-09-2020') ;  

insert into students(ID, First_Name, Last_Name, Street, City, ZipCode, Date_of_birth, Gender, Category, Nationality, Current_Status, Special_Needs, Course_Registered_For, Created_At, Modified_At)
values(9, 'Kobe', 'Jacobs', 'Keele St', 'Toronto', 'T6Y G7T', '1997-07-26', 'Male', 'Sophomore', 'British', 'Waiting', 'No', 'Law','04-08-18','05-09-2020')   ;

insert into students(ID, First_Name, Last_Name, Street, City, ZipCode, Date_of_birth, Gender, Category, Nationality, Current_Status, Special_Needs, Course_Registered_For, Created_At, Modified_At)
values(10, 'Tim', 'Steve', 'Larry Dr', 'Richmond Hill', 'R5T Y7U', '1995-04-07', 'Male', 'Sophomore', 'Arab', 'Placed', 'No', 'Biology','04-08-18','05-09-2020')   ;

																																								
/* Hall_Of_Residence */

insert into Hall_Of_Residence(ID, Student_FullName, Address, Telephone_Number, Manager_Name, Room_Number, Place_Number, Monthly_Rent_Rate, Created_At, Modified_At)
values(10, 'Tim Steve', '45 Larry Dr', '519-005-6547', 'Steve Jacobs', 556, 4587, '1,600', 'September 30th, 2019', 'June 30th,2020');

insert into Hall_Of_Residence(ID, Student_FullName, Address, Telephone_Number, Manager_Name, Room_Number, Place_Number, Monthly_Rent_Rate, Created_At, Modified_At)
values(9, 'Kobe Jacobs', '54 Keele St', '647-859-9634', 'Johnathan Kuzma', 827, 5637, '4,600', 'June 8th, 2019', 'June 30th,2020');

insert into Hall_Of_Residence(ID, Student_FullName, Address, Telephone_Number, Manager_Name, Room_Number, Place_Number, Monthly_Rent_Rate, Created_At, Modified_At)
values(8, 'Kim Kardashian', '59 Hoeville Dr', '416-555-8596', 'Steve Jacobs', 456, 8596, '2,400', 'January 9th, 2019', 'June 30th,2020');

insert into Hall_Of_Residence(ID, Student_FullName, Address, Telephone_Number, Manager_Name, Room_Number, Place_Number, Monthly_Rent_Rate, Created_At, Modified_At)
values(7, 'Kendall Robert', '58 Helpless Dr', '905-987-5856', 'Johnathan Kuzma', 252, 4563, '5,600', 'March 30th, 2019', 'June 30th,2020');

insert into Hall_Of_Residence(ID, Student_FullName, Address, Telephone_Number, Manager_Name, Room_Number, Place_Number, Monthly_Rent_Rate, Created_At, Modified_At)
values(6, 'Stacy Morgan', '25 Cool Dr', '416-005-2525', 'Steve Jacobs', 356, 5454, '3,600', 'September 21st, 2019', 'June 30th,2020');

insert into Hall_Of_Residence(ID, Student_FullName, Address, Telephone_Number, Manager_Name, Room_Number, Place_Number, Monthly_Rent_Rate, Created_At, Modified_At)
values(5, 'Kyle Chao', '25 Augusta Ave', '416-585-9634', 'Steve Jacobs', 458, 5050, '5,600', 'July 26th, 2019', 'June 30th,2020');

insert into Hall_Of_Residence(ID, Student_FullName, Address, Telephone_Number, Manager_Name, Room_Number, Place_Number, Monthly_Rent_Rate, Created_At, Modified_At)
values(4, 'Isiah Johnson', '90 Shooter Crt', '647-856-6311', 'Steve Jacobs', 652, 2563, '2,560', 'August 30th, 2019', 'June 30th,2020');

insert into Hall_Of_Residence(ID, Student_FullName, Address, Telephone_Number, Manager_Name, Room_Number, Place_Number, Monthly_Rent_Rate, Created_At, Modified_At)
values(3, 'Amir Naraine', '22 Lion Head Dr', '647-856-3214', 'Johnathan Kuzma', 645, 4520, '4,200', 'April 24th, 2019', 'June 30th,2020');

insert into Hall_Of_Residence(ID, Student_FullName, Address, Telephone_Number, Manager_Name, Room_Number, Place_Number, Monthly_Rent_Rate, Created_At, Modified_At)
values(2, 'Alex Congo', '56 Forrest Dr', '416-545-9635', 'Steve Jacobs', 253, 2523, '1,800', 'Feburary 30th, 2019', 'June 30th,2020');

insert into Hall_Of_Residence(ID, Student_FullName, Address, Telephone_Number, Manager_Name, Room_Number, Place_Number, Monthly_Rent_Rate, Created_At, Modified_At)
values(1, 'John Smith', '25 Havelock Dr', '416-585-6547', 'Johnathan Kuzma', 453, 4056, '1,100', 'June 30th, 2019', 'June 30th,2020');

/* Student Flats */

insert into Student_Flats(ID, Flat_Number, Address, Number_of_rooms_avaliable, Created_At, Modified_At)
values(1, 500, '30 Indigo Dr', '5 Rooms', 'June 5th, 2019', 'June 30th,2020');

insert into Student_Flats(ID, Flat_Number, Address, Number_of_rooms_avaliable, Created_At, Modified_At)
values(2, 250, '30 Indigo Dr', '4 Rooms', 'July 4th, 2019', 'June 30th,2020');

insert into Student_Flats(ID, Flat_Number, Address, Number_of_rooms_avaliable, Created_At, Modified_At)
values(3, 145, '30 Indigo Dr', '3 Rooms', 'January 25th, 2019', 'June 30th,2020');

insert into Student_Flats(ID, Flat_Number, Address, Number_of_rooms_avaliable, Created_At, Modified_At)
values(4, 252, '30 Indigo Dr', '7 Rooms', 'March 5th, 2019', 'June 30th,2020');

insert into Student_Flats(ID, Flat_Number, Address, Number_of_rooms_avaliable, Created_At, Modified_At)
values(5, 650, '30 Indigo Dr', '2 Rooms', 'April 27th, 2019', 'June 30th,2020');

insert into Student_Flats(ID, Flat_Number, Address, Number_of_rooms_avaliable, Created_At, Modified_At)
values(6, 150, '30 Indigo Dr', '4 Rooms', 'May 5th, 2019', 'June 30th,2020');

insert into Student_Flats(ID, Flat_Number, Address, Number_of_rooms_avaliable, Created_At, Modified_At)
values(7, 245, '30 Indigo Dr', '4 Rooms', 'August 5th, 2019', 'June 30th,2020');

insert into Student_Flats(ID, Flat_Number, Address, Number_of_rooms_avaliable, Created_At, Modified_At)
values(8, 555, '30 Indigo Dr', '2 Rooms', 'June 8th, 2019', 'June 30th,2020');

insert into Student_Flats(ID, Flat_Number, Address, Number_of_rooms_avaliable, Created_At, Modified_At)
values(9, 410, '30 Indigo Dr', '3 Rooms', 'Feburary 5th, 2019', 'June 30th,2020');

insert into Student_Flats(ID, Flat_Number, Address, Number_of_rooms_avaliable, Created_At, Modified_At)
values(10, 485, '30 Indigo Dr','7 Rooms', 'April 15th, 2019', 'June 30th,2020');

/* Student_Flat_Inspections */ 

insert into Student_Flat_Inspections(ID, Name_of_staff_member, Room_Number, Date_of_inspection, Flat_Condition, Additional_Comments, Created_At, Modified_At)
values (1, 'Mason', 252, 'September 4th,2019', 'No', 'None', 'September 4th,2019', 'June 30th,2020');

insert into Student_Flat_Inspections(ID, Name_of_staff_member, Room_Number, Date_of_inspection, Flat_Condition, Additional_Comments, Created_At, Modified_At)
values (2, 'Mason', 352, 'September 5th,2019', 'No', 'None', 'September 5th, 2019', 'June 30th,2020') ;		

insert into Student_Flat_Inspections(ID, Name_of_staff_member, Room_Number, Date_of_inspection, Flat_Condition, Additional_Comments, Created_At, Modified_At)
values (3, 'Mason', 450, 'September 6th,2019', 'No', 'None', 'September 6th,2019', 'June 30th,2020') ;

insert into Student_Flat_Inspections(ID, Name_of_staff_member, Room_Number, Date_of_inspection, Flat_Condition, Additional_Comments, Created_At, Modified_At)
values (4, 'Mason', 410, 'September 7th,2019', 'No', 'None', 'September 7th,2019', 'June 30th,2020') 	;	

insert into Student_Flat_Inspections(ID, Name_of_staff_member, Room_Number, Date_of_inspection, Flat_Condition, Additional_Comments, Created_At, Modified_At)
values (5, 'Mason', 365, 'September 8th,2019', 'No', 'None', 'Spetember 8th,2019', 'June 30th,2020') 	;	

insert into Student_Flat_Inspections(ID, Name_of_staff_member, Room_Number, Date_of_inspection, Flat_Condition, Additional_Comments, Created_At, Modified_At)
values (6, 'Mason', 562, 'September 9th,2019', 'No', 'None', 'Spetember 9th,2019', 'June 30th,2020') 	;	

insert into Student_Flat_Inspections(ID, Name_of_staff_member, Room_Number, Date_of_inspection, Flat_Condition, Additional_Comments, Created_At, Modified_At)
values (7, 'Mason', 632, 'September 10th,2019', 'No', 'None', 'Spetember 10th,2019', 'June 30th,2020') ;		

insert into Student_Flat_Inspections(ID, Name_of_staff_member, Room_Number, Date_of_inspection, Flat_Condition, Additional_Comments, Created_At, Modified_At)
values (8, 'Mason', 526, 'September 11th,2019', 'No', 'None', 'Spetember 11th,2019', 'June 30th,2020') ;		

insert into Student_Flat_Inspections(ID, Name_of_staff_member, Room_Number, Date_of_inspection, Flat_Condition, Additional_Comments, Created_At, Modified_At)
values (9, 'Mason', 689, 'September 12th,2019', 'No', 'None', 'Spetember 12th,2019', 'June 30th,2020') 	;	

insert into Student_Flat_Inspections(ID, Name_of_staff_member, Room_Number, Date_of_inspection, Flat_Condition, Additional_Comments, Created_At, Modified_At)
values (10, 'Mason', 777, 'September 13th,2019', 'No', 'None', 'Spetember 13th,2019', 'June 30th,2020');

/* Leases */																																			

insert into Leases(ID, Lease_Number, Duration_of_lease, Name, Flat_or_Place_Number, Address, Entry_Date, Exit_Date, Created_At, Modified_At)
values(1, 1000, 2, 'Mason', 160, '55 Roxy Rd', '04-18-2019', '04-18-2020' , '04-18-2019', 'June 30th,2020');

insert into Leases(ID, Lease_Number, Duration_of_lease, Name, Flat_or_Place_Number, Address, Entry_Date, Exit_Date, Created_At, Modified_At)
values(2, 2000, 1, 'Alex', 150, '55 Roxy Rd', '04-18-2019', '04-18-2020' , '04-18-2019', 'June 30th,2020');

insert into Leases(ID, Lease_Number, Duration_of_lease, Name, Flat_or_Place_Number, Address, Entry_Date, Exit_Date, Created_At, Modified_At)
values(3, 3000, 3, 'Frenchie', 140, '55 Roxy Rd', '04-18-2019', '04-18-2020' , '04-18-2019', 'June 30th,2020');

insert into Leases(ID, Lease_Number, Duration_of_lease, Name, Flat_or_Place_Number, Address, Entry_Date, Exit_Date, Created_At, Modified_At)
values(4, 4000, 4, 'Julie', 120, '55 Roxy Rd', '04-18-2019', '04-18-2020' , '04-18-2019', 'June 30th,2020');

insert into Leases(ID, Lease_Number, Duration_of_lease, Name, Flat_or_Place_Number, Address, Entry_Date, Exit_Date, Created_At, Modified_At)
values(5, 5000, 1, 'Kyle', 140, '55 Roxy Rd', '04-18-2019', '04-18-2020' , '04-18-2019', 'June 30th,2020');

insert into Leases(ID, Lease_Number, Duration_of_lease, Name, Flat_or_Place_Number, Address, Entry_Date, Exit_Date, Created_At, Modified_At)
values(6, 6000, 2, 'Lamar', 170, '55 Roxy Rd', '04-18-2019', '04-18-2020' , '04-18-2019', 'June 30th,2020');

insert into Leases(ID, Lease_Number, Duration_of_lease, Name, Flat_or_Place_Number, Address, Entry_Date, Exit_Date, Created_At, Modified_At)
values(7, 7000, 2, 'Mason', 180, '55 Roxy Rd', '04-18-2019', '04-18-2020' , '04-18-2019', 'June 30th,2020');

insert into Leases(ID, Lease_Number, Duration_of_lease, Name, Flat_or_Place_Number, Address, Entry_Date, Exit_Date, Created_At, Modified_At)
values(8, 8000, 4, 'Jay', 190, '55 Roxy Rd', '04-18-2019', '04-18-2020' , '04-18-2019', 'June 30th,2020');

insert into Leases(ID, Lease_Number, Duration_of_lease, Name, Flat_or_Place_Number, Address, Entry_Date, Exit_Date, Created_At, Modified_At)
values(9, 9000, 2, 'Fred', 110, '55 Roxy Rd', '04-18-2019', '04-18-2020' , '04-18-2019', 'June 30th,2020');

insert into Leases(ID, Lease_Number, Duration_of_lease, Name, Flat_or_Place_Number, Address, Entry_Date, Exit_Date, Created_At, Modified_At)
values(10, 900, 2, 'Charlie', 100, '55 Roxy Rd', '04-18-2019', '04-18-2020' , '04-18-2019', 'June 30th,2020');

/* Invoices */

insert into Invoices(ID, Lease_Number, Which_quarter, Payment_Due, Student_FullName, Place_or_Flat_Number, Address, Invocie_Number, Created_At, Modified_At, Date_of_payment,Method_of_payment)
values(1, 1000, 4, '5,000', 'John Smith', 200, '55 Roxy Rd', 625, '04-18-2019', '04-18-2019', 'June 30th,2020' ,'Debit');

insert into Invoices(ID, Lease_Number, Which_quarter, Payment_Due, Student_FullName, Place_or_Flat_Number, Address, Invocie_Number, Created_At, Modified_At, Date_of_payment,Method_of_payment)
values(2, 2000, 2, '5,000', 'Alex Congo', 240, '55 Roxy Rd', 519, '04-18-2019', '04-18-2019',  'June 30th,2020','Credit');

insert into Invoices(ID, Lease_Number, Which_quarter, Payment_Due, Student_FullName, Place_or_Flat_Number, Address, Invocie_Number, Created_At, Modified_At, Date_of_payment,Method_of_payment)
values(3, 3000, 1, '5,000', 'King Shooter', 260, '55 Roxy Rd', 527, '04-18-2019', '04-18-2019', 'June 30th,2020', 'Debit');	

insert into Invoices(ID, Lease_Number, Which_quarter, Payment_Due, Student_FullName, Place_or_Flat_Number, Address, Invocie_Number, Created_At, Modified_At, Date_of_payment,Method_of_payment)
values(4, 4000, 4, '5,000', 'Stacy Morgan', 325, '55 Roxy Rd', 520, '04-18-2019', '04-18-2019', 'June 30th,2020' ,'Debit');

insert into Invoices(ID, Lease_Number, Which_quarter, Payment_Due, Student_FullName, Place_or_Flat_Number, Address, Invocie_Number, Created_At, Modified_At, Date_of_payment,Method_of_payment)
values(5, 5000, 2, '5,000', 'Kyle Robert', 350, '55 Roxy Rd', 521, '04-18-2019', '04-18-2019','June 30th,2020' ,'Credit');

insert into Invoices(ID, Lease_Number, Which_quarter, Payment_Due, Student_FullName, Place_or_Flat_Number, Address, Invocie_Number, Created_At, Modified_At, Date_of_payment,Method_of_payment)
values(6, 6000, 2, '5,000', 'Isiah Johnson', 400, '55 Roxy Rd', 524, '04-18-2019', '04-18-2019', 'June 30th,2020', 'Debit');	

insert into Invoices(ID, Lease_Number, Which_quarter, Payment_Due, Student_FullName, Place_or_Flat_Number, Address, Invocie_Number, Created_At, Modified_At, Date_of_payment,Method_of_payment)
values(7, 7000, 3, '5,000', 'Teddy Bruk', 280, '55 Roxy Rd', 101, '04-18-2019', '04-18-2019','June 30th,2020', 'Debit');	

insert into Invoices(ID, Lease_Number, Which_quarter, Payment_Due, Student_FullName, Place_or_Flat_Number, Address, Invocie_Number, Created_At, Modified_At, Date_of_payment,Method_of_payment)
values(8, 4000, 2, '5,000', 'French Joe', 475, '55 Roxy Rd', 528, '04-18-2019', '04-18-2019', 'June 30th,2020', 'Debit');

insert into Invoices(ID, Lease_Number, Which_quarter, Payment_Due, Student_FullName, Place_or_Flat_Number, Address, Invocie_Number, Created_At, Modified_At, Date_of_payment,Method_of_payment)
values(9, 9000, 3, '5,000', 'Kim Kardashian', 357, '55 Roxy Rd', 529, '04-18-2019', '04-18-2019', 'June 30th,2020' ,'Credit');

insert into Invoices(ID, Lease_Number, Which_quarter, Payment_Due, Student_FullName, Place_or_Flat_Number, Address, Invocie_Number, Created_At, Modified_At, Date_of_payment,Method_of_payment)
values(10, 10000, 3, '5,000', 'John Wick', 450, '55 Roxy Rd', 522, '04-18-2019', '04-18-2019','June 30th,2020', 'Debit')	;																									
																												
/* Accomodation_Staff_Table */

insert into Accomodation_Staff_Table(Staff_ID, First_Name, Last_Name, Address, Date_of_birth, Gender, Position, Location, Start_Date,Created_At,Modified_At)
values(100, 'Steve','Jobs','55 Roxy Rd', '1982-08-15', 'Male', 'Janitor', 'West End', '04-18-2019','04-18-2019','June 30th,2020');

insert into Accomodation_Staff_Table(Staff_ID, First_Name, Last_Name, Address, Date_of_birth, Gender, Position, Location, Start_Date,Created_At,Modified_At)
values(200, 'Alex','Ting','55 Roxy Rd', '1990-08-15', 'Male', 'Teacher', 'West End', '04-18-2019','04-18-2019','June 30th,2020');
																																																											
insert into Accomodation_Staff_Table(Staff_ID, First_Name, Last_Name, Address, Date_of_birth, Gender, Position, Location, Start_Date,Created_At,Modified_At)
values(300, 'Tanisha','Commerce','55 Roxy Rd', '1985-08-15', 'Male', 'Principal', 'West End', '04-18-2019','04-18-2019','June 30th,2020');

insert into Accomodation_Staff_Table(Staff_ID, First_Name, Last_Name, Address, Date_of_birth, Gender, Position, Location, Start_Date,Created_At,Modified_At)
values(400, 'Kyle','Jacobs','55 Roxy Rd', '1994-08-15', 'Male', 'Janitor', 'West End', '04-18-2019','04-18-2019','June 30th,2020');

insert into Accomodation_Staff_Table(Staff_ID, First_Name, Last_Name, Address, Date_of_birth, Gender, Position, Location, Start_Date,Created_At,Modified_At)
values(500, 'Arnie','Fields','55 Roxy Rd', '1995-09-15', 'Female', 'Teacher', 'East End', '04-18-2019','04-18-2019','June 30th,2020');

insert into Accomodation_Staff_Table(Staff_ID, First_Name, Last_Name, Address, Date_of_birth, Gender, Position, Location, Start_Date,Created_At,Modified_At)
values(600, 'Thiago','Silva','55 Roxy Rd', '1991-04-18', 'Male', 'Teacher', 'West End', '04-18-2019','04-18-2019','June 30th,2020');

insert into Accomodation_Staff_Table(Staff_ID, First_Name, Last_Name, Address, Date_of_birth, Gender, Position, Location, Start_Date,Created_At,Modified_At)
values(700, 'Kylie','Jobs','55 Roxy Rd', '1998-08-15', 'Female', 'Janitor', 'West End', '04-18-2019','04-18-2019','June 30th,2020');

insert into Accomodation_Staff_Table(Staff_ID, First_Name, Last_Name, Address, Date_of_birth, Gender, Position, Location, Start_Date,Created_At,Modified_At)
values(800, 'John','Wick','55 Roxy Rd', '1995-08-15', 'Male', 'Janitor', 'West End', '04-18-2019','04-18-2019','June 30th,2020');

insert into Accomodation_Staff_Table(Staff_ID, First_Name, Last_Name, Address, Date_of_birth, Gender, Position, Location, Start_Date,Created_At,Modified_At)
values(900, 'Charlie','Angel','55 Roxy Rd', '1989-08-19', 'Male', 'Janitor', 'West End', '04-18-2019','04-18-2019','June 30th,2020');

insert into Accomodation_Staff_Table(Staff_ID, First_Name, Last_Name, Address, Date_of_birth, Gender, Position, Location, Start_Date,Created_At,Modified_At)
values(1000, 'Charlie','Angel','55 Roxy Rd', '1989-08-19', 'Male', 'Janitor', 'West End', '04-18-2019','04-18-2019','June 30th,2020');

/* Courses */

insert into Courses(Course_ID, Course_Title, Years, Instructor_Name, Room_Number, Department_Name, Student_ID, Start_Date,Created_At,Modified_At)
values(101,'Science',4,'John Smith', 502, 'Science',1,'08-18-2019', '08-05-2019', 'June 30th,2020')	;	

insert into Courses(Course_ID, Course_Title, Years, Instructor_Name, Room_Number, Department_Name, Student_ID, Start_Date,Created_At,Modified_At)
values(102,'Math',4,'Kyle Lii', 602, 'Math',2,'08-18-2019', '08-05-2019', 'June 30th,2020')	;

insert into Courses(Course_ID, Course_Title, Years, Instructor_Name, Room_Number, Department_Name, Student_ID, Start_Date,Created_At,Modified_At)
values(103,'English',2,'Alex Loe', 702, 'English',3,'08-18-2019', '08-05-2019', 'June 30th,2020')	;

insert into Courses(Course_ID, Course_Title, Years, Instructor_Name, Room_Number, Department_Name, Student_ID, Start_Date,Created_At,Modified_At)
values(104,'Gym',4,'Thi Young', 780, 'Sports',4,'08-18-2019', '08-05-2019', 'June 30th,2020')	;

insert into Courses(Course_ID, Course_Title, Years, Instructor_Name, Room_Number, Department_Name, Student_ID, Start_Date,Created_At,Modified_At)
values(105,'Technology',2,'Jay John', 680, 'Technology',5,'08-18-2019', '08-05-2019', 'June 30th,2020')	;

insert into Courses(Course_ID, Course_Title, Years, Instructor_Name, Room_Number, Department_Name, Student_ID, Start_Date,Created_At,Modified_At)
values(106,'History',2,'Elizabeth Rowdy', 720, 'History' ,6,'08-18-2019', '08-05-2019', 'June 30th,2020');	

insert into Courses(Course_ID, Course_Title, Years, Instructor_Name, Room_Number, Department_Name, Student_ID, Start_Date,Created_At,Modified_At)
values(107,'Physics',2,'Kyle Quinn', 650, 'Physics',7,'08-18-2019', '08-05-2019', 'June 30th,2020')	;

insert into Courses(Course_ID, Course_Title, Years, Instructor_Name, Room_Number, Department_Name, Student_ID, Start_Date,Created_At,Modified_At)
values(108,'Beauty',3,'Stacy Edwards', 690, 'Beauty',8,'08-18-2019', '08-05-2019', 'June 30th,2020')	;

insert into Courses(Course_ID, Course_Title, Years, Instructor_Name, Room_Number, Department_Name, Student_ID, Start_Date,Created_At,Modified_At)
values(109,'Construction',2,'Hermes Gucci', 700, 'Construction',9,'08-18-2019', '08-05-2019', 'June 30th,2020')	;

insert into Courses(Course_ID, Course_Title, Years, Instructor_Name, Room_Number, Department_Name, Student_ID, Start_Date,Created_At,Modified_At)
values(110,'Accounting',3,'Hitler Business', 520, 'Accounitng',10,'08-18-2019', '08-05-2019', 'June 30th,2020')	;


/* Emergency_Contacts */

insert into Emergency_Contacts(Student_ID, SSN, First_Name, Last_Name, Relation_with_student, Address, Contact_Number, Created_At, Modified_At)
values(1,09875,'Paul','Smith','Father','55 roxy rd','657-908-0654', '08-05-2019', 'June 30th,2020');


insert into Emergency_Contacts(Student_ID, SSN, First_Name, Last_Name, Relation_with_student, Address, Contact_Number, Created_At, Modified_At)
values(2,09675,'Jannet','Jackson','Mother','65 elgin rd','678-908-6789', '08-05-2019', 'June 30th,2020');


insert into Emergency_Contacts(Student_ID, SSN, First_Name, Last_Name, Relation_with_student, Address, Contact_Number, Created_At, Modified_At)
values(3,09765,'Kyle','Smith','Father','55 whocare rd','667-990-0674', '08-05-2019', 'June 30th,2020');


insert into Emergency_Contacts(Student_ID, SSN, First_Name, Last_Name, Relation_with_student, Address, Contact_Number, Created_At, Modified_At)
values(4,09674,'Alex','Curoso','Father','56 roxy rd','657-988-0664', '08-05-2019', 'June 30th,2020');


insert into Emergency_Contacts(Student_ID, SSN, First_Name, Last_Name, Relation_with_student, Address, Contact_Number, Created_At, Modified_At)
values(5,09865,'Shane','Thing','Father','65 range dr','690-890-4567', '08-05-2019', 'June 30th,2020');


insert into Emergency_Contacts(Student_ID, SSN, First_Name, Last_Name, Relation_with_student, Address, Contact_Number, Created_At, Modified_At)
values(6,09678,'Tim','Shane','Father','56 roy rd','647-956-0654', '08-05-2019', 'June 30th,2020');


insert into Emergency_Contacts(Student_ID, SSN, First_Name, Last_Name, Relation_with_student, Address, Contact_Number, Created_At, Modified_At)
values(7,03456,'Stacy','Smith','Mother','45 roxy rd','690-908-0654', '08-05-2019', 'June 30th,2020');


insert into Emergency_Contacts(Student_ID, SSN, First_Name, Last_Name, Relation_with_student, Address, Contact_Number, Created_At, Modified_At)
values(8,09655,'Sam','Styles','Mother','70 wish rd','657-978-0644', '08-05-2019', 'June 30th,2020');


insert into Emergency_Contacts(Student_ID, SSN, First_Name, Last_Name, Relation_with_student, Address, Contact_Number, Created_At, Modified_At)
values(9,09456,'Alex','Styles','Father','10 roxy rd','657-908-0333', '08-05-2019', 'June 30th,2020');


insert into Emergency_Contacts(Student_ID, SSN, First_Name, Last_Name, Relation_with_student, Address, Contact_Number, Created_At, Modified_At)
values(10,09555,'John','Smith','Father','53 well rd','657-900-0111', '08-05-2019', 'June 30th,2020');

