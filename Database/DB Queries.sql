SET search_path = project;
--returns office addresses
select Office_address from hotel_chain HC;

--returns cities with hotels
select distinct city, country
from hotel
order by country, city;

--returns hotels info and room in single table
select * from hotel natural join room where room.hotel_ID = hotel.hotelid;

--returns hotel rooms under 500
select addressline1, city, country, room_number, price, capacity from hotel
	natural join room where 
		room.price <500 and 
		room.hotel_ID = hotel.hotelid;

--Nested 
  --returns hotels from hotel chains with less that 10 hotels
select * from hotel H where H.hotelchain_ID in 
	(select ChainID from hotel_chain where num_of_hotels< 10);

--Aggragate
  --returns city and address sorted by average hotel room price
select addressline1, city,
	Avg(room.price) as avg_price from hotel, room
	where hotel.hotelID = room.hotel_id and hotel.hotelchain_id in (select chainID from hotel_chain)
	group by hotel.city, hotel.addressline1
	order by avg_price;
