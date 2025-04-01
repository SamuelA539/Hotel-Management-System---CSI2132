SET search_path = project;

-------------------------------------
--archiving triggers

drop function if exists archiveBooking() cascade;
create function archiveBooking() returns trigger as $BODY$
	Begin
		if (TG_OP =  'INSERT') then 
			Insert into archive select 
				new.bookingID, current_date, new.room_num, new.hotelID, new.check_in_date, new.check_out_date, new.booking_date, new.customer_ID, null;
			return new;
		-- elseif (TG_op ='UPDATE') then
		-- 	Insert into archive select 
		-- 		new.bookingID, current_date, new.room_num, new.hotelID, new.check_in_date, new.check_out_date, new.bookingID, new.customer_ID, new.employee_id;
		-- 	return new;
		end if;
	END
	$BODY$ language plpgsql;

drop trigger if exists archiveBooking on booking cascade;
create trigger archiveBooking after Insert on booking
	for each row Execute function archiveBooking();


drop function if exists archiveRenting() cascade;
create function archiveRenting() returns trigger as $BODY$
	Begin
		if (TG_OP =  'INSERT') then 
			Insert into archive select 
				new.rentalID, current_date, new.room_num, new.hotelID, new.check_in_date, new.check_out_date, null, new.customer_ID, new.employee_id;
			return new;
		-- elseif (TG_op ='UPDATE') then
		-- 	Update archive SET archive_date=current_date, room_num=new.room_num, hotelid=new.hotelID, check_in_date=new.check_in_date ,check_out_date=new.check_out_date,
		-- 	customer_id=new.customer_id, employee_id=new.employee_id
		-- 		where rentalID = OLD.rentalID;
		-- 	return new;
		end if;
	END $BODY$ language plpgsql;


drop trigger if exists archiveRenting on renting cascade;
create trigger archiveRenting after Insert on renting
	for each row execute function archiveRenting();

----------------------------------------------------

--createing walk in rental 
	--fix vars
		--serial autio increment
		--get check outdate input

-- drop function if exists createRenting(checkout_date) cascade;
-- create function createRenting(checkout_date) returns trigger as $BODY$
-- 	Begin 
-- 		-- -- can serial null?
-- 		-- if (bookingID is Null) then 
-- 		-- 	Raise Exception '% can not have null bookingID', new.rentalID;
-- 		-- end if;

-- 		-- --redundant?
-- 		-- if (bookingID in Booking) then 
-- 		-- 	Raise Exception '% can not have duplicate bookingID', new.rentalID;
-- 		-- end if;
		
-- 		if (checkout_date < current_date) then
-- 			raise exception '% can not enter passed Date', new.rentalID;
-- 		end if;
		
-- 		if (TG_OP = 'INSERT') then
-- 			insert into booking select current_date, checkout_date, current_date;
-- 			return new;
-- 		end if;
				
-- 	End $BODY$ language plpgsql;

-- drop trigger if exists createRenting on renting cascade;
-- create trigger createRenting before Insert on Renting
-- 	for each row execute function createRenting(current_date)


