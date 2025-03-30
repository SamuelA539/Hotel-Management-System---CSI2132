-- first view to see available rooms per area
create or replace view available_rooms_per_area as
-- grab the three sources needed for the view
select h.city, h.country, count(r.room_number) as available_rooms_count
from hotel h
join room r on h.hotelID = r.hotel_id
-- determine how many rooms are free and aren't being rented
left join (
    select room_num, hotelID
    from renting
    where current_date between check_in_date and check_out_date
) as rented_rooms on r.room_number = rented_rooms.room_num and r.hotel_id = rented_rooms.hotelID
where rented_rooms.room_num is null and r.is_damaged = false
-- group and organize the data
group by h.city, h.country
order by h.country, h.city;

-- second view to see the capacities of the available rooms
create or replace view hotel_room_capacity_summary as
select h.hotelID, h.addressLine1, h.city, h.country, r.capacity, count(*) as room_count,
    -- total up the capacity of the rooms
    count(*) * case
        when r.capacity = 'single' then 1
        when r.capacity = 'double' then 2
        when r.capacity = 'suite' then 3
        when r.capacity = 'family' then 4
        else 1
    end as total_guests_capacity
from hotel h
join room r on h.hotelID = r.hotel_id
-- organize the data by hotel ID
group by h.hotelID, h.addressLine1, h.city, h.country, r.capacity
order by h.hotelID, r.capacity;