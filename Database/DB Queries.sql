--returns office addresses
select Office_address from hotelchain HC;

--returns cities with hotesl
select address --city 
	from hotel;

--returns hotels info and room in single table
select * from hotel natural join room where room.hotel_ID = hotel.hotelid;

--returns hotel rooms under 500
select addressline1, city, country, room_number, price, capacity from hotel
	natural join room where 
		room.price <500 and 
		room.hotel_ID = hotel.hotelid;

--Nested 
  --returns hotels from hotel chains with less that 75 hotels
select * from hotel H where H.hotelchain_ID in 
	(select ChainID from hotelchain where num_of_hotels< 75);

--Aggragate
  --returns city and address with average hotel room price 
select address, --addressline1, city, 
	Avg(room.price) as avg_price from hotel, room --, hotelChain
	where hotel.hotelID = room.hotel_id and hotel.hotelchain_id in (select chainID from hotelchain)
	--where (hotel.hotelID = room.hotel_id and hotel.hotelchain_id = hotelchain.chainID)
	group by address
		--hotel.city, hotel.addressline1
	;
