SET search_path = project;

--todo 
	--cascades (for updates and deletes)
	-- some constraints 



--------------------
--     Objects    --
--------------------

drop table if exists HotelChains;
CREATE TABLE HotelChains(
ChainID Serial not null, --Numeric
Office_address VARCHAR(150) not null, --!!
Num_of_hotels integer,
Chain_name VARCHAR(100) NOT NULL,
Constraint hotelNum check (Num_of_hotels > 0),
Primary Key(ChainID)
);

drop table if exists HotelChainEmails;
create table HotelChainEmails (
hotelChainID Serial not null,
email Varchar(100) not null,
Foreign key(hotelChainID) references HotelChains,
Primary key(hotelChainID, email)
);

--flatten more?
drop table if exists HotelChainNumbers;
create table HotelChainNumbers (
hotelChainID Serial not null,
phoneNum Varchar(20) not null,
Foreign key(hotelChainID) references HotelChains,
Primary key(hotelChainID, phoneNum)
);

drop table if exists Hotels;
create table Hotels(
hotelID Serial not null,
numRooms Integer, 
address varchar(150) not null, --? 
hotelChain_id Serial not null,
constraint numHotelRooms check (numRooms > 0 ),
Primary Key(hotelID), 	--+ hotelchainID?
Foreign Key(hotelChain_id) references HotelChains
);

drop table if exists HotelEmails;
create table HotelEmails (
hotelID Serial not null,
email varchar(75) not null,
Primary Key(hotelID, email),
Foreign Key(hotelID) references Hotels
);

drop table if exists HotelNumbers;
create table HotelNumbers (
hotelID Serial not null,
phoneNum varchar(20) not null,
Primary Key(hotelID, phoneNum),
Foreign Key(hotelID) references Hotels
);

-- TODO Constraints
drop table if exists Rooms;
create table Rooms(
room_number Integer, 
price numeric(8,2), 
capacity varchar(15),
view_type varchar(10), 
is_extendable boolean not null, 
is_damaged boolean not null,
hotel_id Serial,

Constraint minCapacity check (capacity is not null),
Constraint viewType check (view_type = 'sea' or view_type = 'mountain'),
Constraint minRoomNum check (room_number > 0),
Constraint minPrice check (price >= 0),


Primary Key(hotel_id, room_number),
Foreign Key(hotel_id) references Hotels
);

drop table if exists RoomAmenities;
create table RoomAmenities(
roomNum Integer,
hotelID Serial,
amenities varchar(150),
Primary key(hotelID, roomNum, amenities),
Foreign key(hotelID, roomNum) references Rooms
);


--------------------
--     Users      --
--------------------
drop table if exists Employee;
create table Employee(
EmployeeID Serial, 
firstName varchar(50) not null,
middleName varchar(50),
lastName varchar(50) not null,
address varchar(100) not null, 
ID_type varchar(10) not null,
personalID Numeric not null,
hotel_id Serial,
Primary Key(EmployeeID),
Foreign Key(hotel_id) references Hotels
);

--multiple roles per employee?
drop table if exists EmployeeRoles;
create table EmployeeRoles(
EmployeeID serial,
role varchar(75),
Primary key(EmployeeID, role),
foreign key (EmployeeID) references Employee
); 

drop table if exists Customer;
create table Customer(
customerID Serial,  
firstName varchar(30) not null,
middleName varchar(30),
lastName varchar(30) not null,
address varchar(50) not null,
ID_type varchar(10) not null,
IDnumber numeric  not null,
registration_date date not null,
Primary Key(customerID)
--,Constraint validIDtype check (ID_type = '' or ID_type ='')
);



--------------------
--     Events     --
--------------------
-- make times into timestamps + double check
drop table if exists Bookings;
create table Bookings(
 bookingID Serial,
 check_in_date date not null, 
 check_out_date date not null, 
 booking_date date not null, 
 customer_id Serial not null, --ID
 Primary Key(bookingID),
 Foreign Key(customer_id) references Customer
 
 --,constraint validCheckIn check (),
 --constraint validCheckOut check (),
 --constraint validBooking check ()
 );

drop table if exists Rentings;
create table Rentings(
rentalID serial, 
employee_id serial not null, 
room_num integer not null,
hotelID serial not null, 
booking_id Serial not null, 
customer_id Serial not null,

Primary Key(rentalID),
Foreign Key(employee_id) references Employee,
Foreign Key(hotelID, room_num) references Rooms,
Foreign Key(booking_id) references Bookings,
Foreign Key(customer_id) references Customer
);



--------------------
--    Archive     --
--------------------
drop table if exists Archive;
create table Archive(
 archiveID varchar(15),  --ID
 archive_date date,
 Primary Key(archiveID)
);


--------------------
--   Relations    --
--------------------
drop table if exists Owns;
create table Owns(
 chainID Serial,
 hotelID Serial, 
 star_rating Integer,
 
 Constraint minStars check (0 < star_rating and star_rating < 6),
 
 Primary Key(chainID, hotelID),
 Foreign Key(chainID) references HotelChains,
 Foreign Key(hotelID) references Hotels
);