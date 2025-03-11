-- NEEDS attribute constriant variables
	--varchar(15) = placeholder ID datatype

SET search_path = project;
-- drop table *;


CREATE TABLE HotelChain(
ChainID VARCHAR(15),
Office_address VARCHAR(50), --address var = ? 
Num_of_hotels integer,	
Email_addresses VARCHAR(50),  --email var = ?
Phone_numbers VARCHAR(50),	--phone num var = ? 
Primary Key(ChainID));

create table Hotel(
hotelID varchar(15), 
num_of_rooms Integer, 
address varchar(75), --? 
contact_email varchar(75), --? 
phone_number varchar(20), --? 
hotelchain_id varchar(15),
Primary Key(hotelID),
Foreign Key(hotelchain_id) references HotelChain);

create table Room(
room_number Integer, 
price numeric(8,2), 
amenities varchar(150),  --?
capacity integer, 
view_type varchar(10), --? 
is_extendable boolean, 
is_damged boolean, 
hotel_id varchar(15),
Primary Key(room_number),
Foreign Key(hotel_id) references Hotel);



create table Employee(
EmployeeID varchar(15), 
full_name varchar(30), --?
address varchar(50), --?
ID_type varchar(10), --?
role varchar(20), --?
hotel_id varchar(15),
Primary Key(EmployeeID),
Foreign Key(hotel_id) references Hotel);

create table Customer(
customerID varchar(15),  --ID
full_name varchar(30), --?
address varchar(50), --? 
ID_type varchar(10), --?
registration_date date,
Primary Key(customerID)
);



create table Booking(
 bookingID varchar(15), --ID
 check_in_date date, 
 check_out_date date, 
 booking_date date, 
 customer_id varchar(15), --ID
 Primary Key(bookingID),
 Foreign Key(customer_id) references Customer);

create table Renting(
rentalID varchar(15), --ID
full_name varchar(50), --?  
address varchar(50),  --?
ID_type varchar(10), --?
role varchar(20), 
employee_id varchar(15), 
room_num integer, 
booking_id varchar(15), 
customer_id varchar(15),
Primary Key(rentalID),
Foreign Key(employee_id) references Employee,
Foreign Key(room_num) references Room,
Foreign Key(booking_id) references Booking,
Foreign Key(customer_id) references Customer);





create table Archive(
 archiveID varchar(15),  --ID
 archive_date date,
 Primary Key(archiveID));


create table owns(
 chainID varchar(15),
 hotelID varchar(15), 
 star_rating Integer,
 Primary Key(chainID, hotelID),
 Foreign Key(chainID) references HotelChain,
 Foreign Key(hotelID) references Hotel);