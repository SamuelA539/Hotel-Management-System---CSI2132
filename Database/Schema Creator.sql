SET search_path = project;

--todo 
	--cascades (for Inserts )
	-- some constraints 
	--triggers



--------------------
--     Objects    --
--------------------

drop table if exists HotelChain cascade;
CREATE TABLE HotelChain(
ChainID Serial Primary Key, --Numeric
Office_address VARCHAR(150) not null ,
Num_of_hotels integer, --calculate
Chain_name VARCHAR(100) NOT NULL,
Constraint hotelNum check (Num_of_hotels > 0)
);

drop table if exists HotelChainEmail;
create table HotelChainEmail(
hotelChainID Serial references HotelChain ON delete Cascade,
email Varchar(100) not null,
Primary key(hotelChainID, email)
);


drop table if exists HotelChainNumber;
create table HotelChainNumber(
hotelChainID Serial,
phoneNum Varchar(20) not null,
Foreign key(hotelChainID) references HotelChain ON delete Cascade,
Primary key(hotelChainID, phoneNum)
);

-- -------------------------------------------------

drop table if exists Hotel cascade;
create table Hotel(
hotelID Serial Primary Key,
numRooms Integer, --calc
addressLine1 varchar(150) not null,
city varchar(150) not null,
country varchar(150) not null,
hotelChain_id Serial references HotelChain ON delete Cascade,
constraint numHotelRooms check (numRooms > 0 )
-- Primary Key(hotelID)	--+ hotelchainID?references Hotel
);

drop table if exists HotelEmail;
create table HotelEmail(
hotelID Serial references Hotel ON delete Cascade,
email varchar(75) not null,
Primary Key(hotelID, email)
);

drop table if exists HotelNumber;
create table HotelNumber(
hotelID Serial references Hotel ON delete Cascade,
phoneNum varchar(15) not null,
Primary Key(hotelID, phoneNum)
);

-------------------------------------------------

-- TODO Constraints
drop table if exists Room cascade;
create table Room(
room_number Integer, 
price numeric(8,2), 
capacity varchar(30),
view_type varchar(15), 
is_extendable boolean not null, 
is_damaged boolean not null,
hotel_id Serial references Hotel ON delete cascade,

--Constraint minCapacity check (capacity > 0),
Constraint viewType check (view_type = 'sea' or view_type = 'mountain' or view_type = 'city' or view_type='ocean'),
Constraint minRoomNum check (room_number > 0),
Constraint minPrice check (price >= 0),

Primary Key(hotel_id, room_number)
);

drop table if exists RoomAmenitie;
create table RoomAmenitie(
roomNum Integer,
hotelID Serial,
amenities varchar(150),
Primary key(hotelID, roomNum, amenities),
Foreign key(hotelID, roomNum) references Room on delete cascade
);


--------------------
--     Users      --
--------------------

--Cant be deleted must always be stored how to flatten refernces? -> ?ondelete set Null?

drop table if exists Employee cascade;
create table Employee(
EmployeeID Serial Primary Key, 
firstName varchar(50) not null,
middleName varchar(50),
lastName varchar(50) not null,
address varchar(100) not null, 
ID_type varchar(25) not null,
personalID Numeric not null,
hotel_id Serial references Hotel on delete cascade

);

--multiple roles per employee?
drop table if exists EmployeeRole;
create table EmployeeRole(
EmployeeID serial references Employee on delete cascade,
role varchar(75),
Primary key(EmployeeID, role)
); 

-------------------------------------------------

drop table if exists Customer cascade;
create table Customer(
customerID Serial Primary Key,  
firstName varchar(30) not null,
middleName varchar(30),
lastName varchar(30) not null,
address varchar(50) not null,
ID_type varchar(25) not null,
IDnumber numeric,
registration_date date not null
--,Constraint validIDtype check (ID_type = '' or ID_type ='')
);



--------------------
--     Events     --
--------------------
--Cant be deleted must always be stored

-- make times into timestamps + double check
drop table if exists Booking cascade;
create table Booking(
 bookingID Serial Primary Key,
 check_in_date date not null, 
 check_out_date date not null, 
 booking_date date not null, 
 --roomInfo
 customer_id Serial references Customer --on delete cascade --ID
 
 --,constraint validCheckIn check (),
 --constraint validCheckOut check (),
 --constraint validBooking check ()
 );

-------------------------------------------------

drop table if exists Renting cascade;
create table Renting(
rentalID serial primary key, 
employee_id serial references Employee, -- on delete cascade, 
room_num integer,
hotelID serial, 
booking_id Serial references Booking,-- on delete cascade, 
customer_id Serial references Customer,-- on delete cascade,

Foreign Key(hotelID, room_num) references Room
);


--------------------
--    Archive     --
--------------------
drop table if exists Archive cascade;
create table Archive(
 archiveID varchar(15) Primary Key,  --booking/rental ID
 archive_date date,
 room_num integer, 
 hotelID serial, 
 check_in_date date, 
 check_out_date date, 
 booking_date date, 
 customer_ID varchar(30), 
 employee_id varchar(30)
);


--------------------
--   Relations    --
--------------------
drop table if exists Owns cascade;
create table Owns(
 chainID Serial references HotelChain ON Delete CAscade,
 hotelID Serial references Hotel ON DElete CAscade, 
 star_rating Integer,
 
 Constraint minStars check (0 < star_rating and star_rating < 6),
 
 Primary Key(chainID, hotelID)
);