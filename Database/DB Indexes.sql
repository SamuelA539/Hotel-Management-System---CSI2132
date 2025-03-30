--indexes

-- index on the customer search
    -- created since customers are frequently searched for check-ins and bookings
    -- allows for quick lookups by last name and efficient searches by full name
CREATE INDEX index_customer_search ON customer (lastName, firstName, IDnumber);

-- index on the room availability
    -- created since finding free room is a common search
    -- this allows quick searches for things like mountain-view rooms across all hotels
CREATE INDEX index_room_availability ON room (hotel_id, is_damaged, view_type, capacity);

-- index on the booking dates
    -- created since it's important to check for occupancy reports and availability checks
    -- enables quick searching for all bookings overlapping with a date range or showing upcoming check-ins
CREATE INDEX idx_booking_dates ON booking (check_in_date, check_out_date);

-- index for employees at a hotel
    -- created for frequent employee assignments by hotel
    -- enables quick queries to manage the current staff at the hotel
CREATE INDEX idx_employee_hotel ON employee (hotel_id);
