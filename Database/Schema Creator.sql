SET search_path = project;

--todo
	--cascades (for Inserts )
	-- some constraints
	--triggers



--------------------
--     Objects    --
--------------------

drop table if exists hotel_chain cascade;
CREATE TABLE hotel_chain(
ChainID Serial Primary Key, --Numeric
Office_address VARCHAR(150) not null ,
Num_of_hotels integer, --calculate
Chain_name VARCHAR(100) NOT NULL,
Constraint hotelNum check (Num_of_hotels > 0)
);

drop table if exists hotel_chain_email;
create table hotel_chain_email(
hotelChainID Serial references hotel_chain ON delete Cascade,
email Varchar(100) not null,
Primary key(hotelChainID, email)
);


drop table if exists hotel_chain_number;
create table hotel_chain_number(
hotelChainID Serial,
phoneNum Varchar(20) not null,
Foreign key(hotelChainID) references hotel_chain ON delete Cascade,
Primary key(hotelChainID, phoneNum)
);

-- -------------------------------------------------

drop table if exists hotel cascade;
create table hotel(
hotelID Serial Primary Key,
numRooms Integer, --calc
addressLine1 varchar(150) not null,
city varchar(150) not null,
country varchar(150) not null,
hotelChain_id Serial references hotel_chain ON delete Cascade,
constraint numHotelRooms check (numRooms > 0 )
-- Primary Key(hotelID)	--+ hotelchainID?references Hotel
);

drop table if exists hotel_email;
create table hotel_email(
hotelID Serial references hotel ON delete Cascade,
email varchar(75) not null,
Primary Key(hotelID, email)
);

drop table if exists hotel_number;
create table hotel_number(
hotelID Serial references hotel ON delete Cascade,
phoneNum varchar(15) not null,
Primary Key(hotelID, phoneNum)
);

-------------------------------------------------

-- TODO Constraints
drop table if exists room cascade;
create table room(
room_number Integer,
price numeric(8,2),
capacity varchar(30),
view_type varchar(15),
is_extendable boolean not null,
is_damaged boolean not null,
hotel_id Serial references hotel ON delete cascade,

--Constraint minCapacity check (capacity > 0),
Constraint viewType check (view_type = 'sea' or view_type = 'mountain' or view_type = 'city' or view_type='ocean'),
Constraint minRoomNum check (room_number > 0),
Constraint minPrice check (price >= 0),

Primary Key(hotel_id, room_number)
);

drop table if exists room_amenities;
create table room_amenities(
roomNum Integer,
hotelID Serial,
amenities varchar(150),
Primary key(hotelID, roomNum, amenities),
Foreign key(hotelID, roomNum) references room on delete cascade
);


--------------------
--     Users      --
--------------------

--Cant be deleted must always be stored how to flatten refernces? -> ?ondelete set Null?

drop table if exists employee cascade;
create table employee(
EmployeeID Serial Primary Key,
firstName varchar(50) not null,
middleName varchar(50),
lastName varchar(50) not null,
address varchar(100) not null,
ID_type varchar(25) not null,
personalID Numeric not null,
hotel_id Serial references hotel on delete cascade

);

drop table if exists employee_role;
create table employee_role(
EmployeeID serial references employee on delete cascade,
role varchar(75),
Primary key(EmployeeID, role)
);

-------------------------------------------------

drop table if exists customer cascade;
create table customer(
customerID Serial Primary Key,
firstName varchar(30) not null,
middleName varchar(30),
lastName varchar(30) not null,
address varchar(50) not null,
ID_type varchar(25) not null,
IDnumber numeric,
registration_date date not null
Constraint validIDtype check (ID_type = 'Drivers Licence' or ID_type ='Passport')
);



--------------------
--     Events     --
--------------------
--Cant be deleted must always be stored

-- make times into timestamps + double check
drop table if exists booking cascade;
create table booking(
 bookingID Serial Primary Key,
 check_in_date date not null,
 check_out_date date not null,
 booking_date date not null,
 room_num integer,
 hotelID serial,
 customer_id Serial references customer, --on delete cascade --ID

 Foreign Key(hotelID, room_num) references room

 --,constraint validCheckIn check (),
 --constraint validCheckOut check (),
 --constraint validBooking check ()
 );

-------------------------------------------------

drop table if exists renting cascade;
create table renting(
rentalID serial primary key,
employee_id serial references employee, -- on delete cascade,
room_num integer,
hotelID serial,
customer_id Serial references customer,-- on delete cascade,
check_in_date date not null,
check_out_date date not null,

Foreign Key(hotelID, room_num) references room
);


--------------------
--    Archive     --
--------------------
drop table if exists archive cascade;
create table archive(
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
drop table if exists owns cascade;
create table owns(
 chainID Serial references hotel_chain ON Delete CAscade,
 hotelID Serial references hotel ON DElete CAscade,
 star_rating Integer,

 Constraint minStars check (0 < star_rating and star_rating < 6),

 Primary Key(chainID, hotelID)
);