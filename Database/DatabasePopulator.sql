-- inserting the require 5 hotel chains
INSERT INTO HotelChains (ChainID, Office_address, Num_of_hotels, Chain_name) VALUES
    (1, '55 Global Ave, New York, USA', 8, 'Grand Hotels'),
    (2, '456 Luxury Lane, Paris, France', 10, 'Prestige Hotels'),
    (3, '72 Resort Blvd, Manila, Philippines', 12, 'Pacific Hospitality'),
    (4, '101 Prestige Street, London, UK', 9, 'Royal Accommodations'),
    (5, '7750 Desert Road, Dubai, UAE', 8, 'Oasis Resorts International');

-- inserting the hotel chain emails
INSERT INTO HotelChainEmails (hotelChainID, email) VALUES
    (1, 'reservations@grandhotels.com'),
    (1, 'info@grandhotels.com'),
    (2, 'bookings@prestigehotels.com'),
    (2, 'support@prestigehotels.com'),
    (3, 'contact@pacifich.com'),
    (3, 'sales@pacifich.com'),
    (4, 'info@royalaccom.com'),
    (4, 'reservations@royalaccom.com'),
    (5, 'support@oasisint.com'),
    (5, 'bookings@oasisint.com');

-- inserting the hotel chain phone numbers
INSERT INTO HotelChainNumbers (hotelChainID, phoneNum) VALUES
    (1, '+1-435-342-3465'),
    (1, '+1-801-335-2222'),
    (2, '+33-122-333-4444'),
    (2, '+33-800-555-2001'),
    (3, '+63-321-555-2352'),
    (3, '+63-800-241-1231'),
    (4, '+44-204-235-8888'),
    (4, '+44-834-535-4987'),
    (5, '+971-532-533-3242'),
    (5, '+971-893-534-7453');

-- inserting the hotels of the chain Grand Hotels
INSERT INTO Hotels (hotelID, numRooms, address, hotelChain_id) VALUES
    (101, 120, '1 Central Park West, New York, USA', 1),
    (102, 90, '275 Central Park West, New York, USA', 1),
    (103, 80, '1674 Ocean Drive, Miami, USA', 1),
    (104, 110, '211 Sunset Blvd, Los Angeles, USA', 1),
    (105, 95, '322 Lakeshore Drive, Chicago, USA', 1),
    (106, 85, '4040 Bay Street, Toronto, Canada', 1),
    (107, 75, '324 Collins Street, Melbourne, Australia', 1),
    (108, 105, '634 Orchard Road, Singapore, Singapore', 1);

-- inserting the hotels of the chain Prestige Hotels
INSERT INTO Hotels (hotelID, numRooms, address, hotelChain_id) VALUES
    (201, 130, '123 Champs-Élysées, Paris, France', 2),
    (202, 95, '2325 Rue de Rivoli, Paris, France', 2),
    (203, 85, '34 La Rambla, Barcelona, Spain', 2),
    (204, 115, '440 Via Veneto, Rome, Italy', 2),
    (205, 100, '550 Kurfürstendamm, Berlin, Germany', 2),
    (206, 90, '680 Ringstrasse, Vienna, Austria', 2),
    (207, 80, '124 Nevsky Prospekt, St. Petersburg, Russia', 2),
    (208, 110, '632 Bahnhofstrasse, Zurich, Switzerland', 2),
    (209, 120, '342 Gran Via, Madrid, Spain', 2),
    (210, 105, '221 Princes Street, Edinburgh, UK', 2);

-- inserting the hotels of the chain Pacific Hospitality
INSERT INTO Hotels (hotelID, numRooms, address, hotelChain_id) VALUES
    (301, 140, '12 Ginza, Tokyo, Japan', 3),
    (302, 100, '312 Namba, Osaka, Japan', 3),
    (303, 90, '3325 Myeongdong, Seoul, South Korea', 3),
    (304, 120, '432 Orchard Road, Singapore, Singapore', 3),
    (305, 110, '555 Nathan Road, Hong Kong, China', 3),
    (306, 95, '216 Patpong, Bangkok, Thailand', 3),
    (307, 85, '735 Riverside, Hanoi, Vietnam', 3),
    (308, 115, '888 Jalan Sudirman, Jakarta, Indonesia', 3),
    (309, 125, '922 Roxas Blvd, Manila, Philippines', 3),
    (310, 105, '140 Collyer Quay, Singapore, Singapore', 3),
    (311, 130, '1331 Victoria Peak, Hong Kong, China', 3),
    (312, 140, '1231 Akihabara, Tokyo, Japan', 3);

-- inserting the hotels of the chain Royal Accommodations
INSERT INTO Hotels (hotelID, numRooms, address, hotelChain_id) VALUES
    (401, 125, '1 Park Lane, London, UK', 4),
    (402, 95, '222 Princes Street, Edinburgh, UK', 4),
    (403, 85, '331 Temple Bar, Dublin, Ireland', 4),
    (404, 115, '442 George Street, Sydney, Australia', 4),
    (405, 100, '435 Queen Street, Auckland, New Zealand', 4),
    (406, 90, '226 O Connell Street, Dublin, Ireland', 4),
    (407, 80, '779 Royal Mile, Edinburgh, UK', 4),
    (408, 110, '81 Oxford Street, London, UK', 4),
    (409, 120, '921 Collins Street, Melbourne, Australia', 4);

-- inserting the hotels of the chain Oasis Resorts International
INSERT INTO Hotels (hotelID, numRooms, address, hotelChain_id) VALUES
    (501, 135, '1 Sheikh Zayed Road, Dubai, UAE', 5),
    (502, 100, '2 Corniche, Abu Dhabi, UAE', 5),
    (503, 90, '3 Jumeirah Beach, Dubai, UAE', 5),
    (504, 120, '4 Al Fanar, Doha, Qatar', 5),
    (505, 110, '5 King Fahd Road, Riyadh, Saudi Arabia', 5),
    (506, 95, '6 Al Montazah, Alexandria, Egypt', 5),
    (507, 85, '7 Nile Corniche, Cairo, Egypt', 5),
    (508, 115, '8 Al Murjan, Manama, Bahrain', 5);

INSERT INTO HotelEmails (hotelID, email) VALUES
    -- first hotel chain
    (101, 'ny1@grandhotels.com'), (101, 'reservations.ny1@grandhotels.com'),
    (102, 'ny2@grandhotels.com'), (102, 'reservations.ny2@grandhotels.com'),
    (103, 'miami@grandhotels.com'), (103, 'reservations.miami@grandhotels.com'),
    (104, 'losangeles@grandhotels.com'), (104, 'reservations.losangeles@grandhotels.com'),
    (105, 'chicago@grandhotels.com'), (105, 'reservations.chicago@grandhotels.com'),
    (106, 'toronto@grandhotels.com'), (106, 'reservations.toronto@grandhotels.com'),
    (107, 'melbourne@grandhotels.com'), (107, 'reservations.melbourne@grandhotels.com'),
    (108, 'singapore@grandhotels.com'), (108, 'reservations.singapore@grandhotels.com'),
    -- second hotel chain
    (201, 'paris1@prestigehotels.com'), (201, 'reservations.paris1@prestigehotels.com'),
    (202, 'paris2@prestigehotels.com'), (202, 'reservations.paris2@prestigehotels.com'),
    (203, 'barcelona@prestigehotels.com'), (203, 'reservations.barcelona@prestigehotels.com'),
    (204, 'rome@prestigehotels.com'), (204, 'reservations.rome@prestigehotels.com'),
    (205, 'berlin@prestigehotels.com'), (205, 'reservations.berlin@prestigehotels.com'),
    (206, 'vienna@prestigehotels.com'), (206, 'reservations.vienna@prestigehotels.com'),
    (207, 'stpetersburg@prestigehotels.com'), (207, 'reservations.stpetersburg@prestigehotels.com'),
    (208, 'zurich@prestigehotels.com'), (208, 'reservations.zurich@prestigehotels.com'),
    (209, 'madrid@prestigehotels.com'), (209, 'reservations.madrid@prestigehotels.com'),
    (210, 'edinburgh@prestigehotels.com'), (210, 'reservations.edinburgh@prestigehotels.com'),
    -- third hotel chain
    (301, 'tokyo1@pacifich.com'), (301, 'reservations.tokyo1@pacifich.com'),
    (302, 'osaka@pacifich.com'), (302, 'reservations.osaka@pacifich.com'),
    (303, 'seoul@pacifich.com'), (303, 'reservations.seoul@pacifich.com'),
    (304, 'singapore1@pacifich.com'), (304, 'reservations.singapore1@pacifich.com'),
    (305, 'hongkong1@pacifich.com'), (305, 'reservations.hongkong1@pacifich.com'),
    (306, 'bangkok@pacifich.com'), (306, 'reservations.bangkok@pacifich.com'),
    (307, 'hanoi@pacifich.com'), (307, 'reservations.hanoi@pacifich.com'),
    (308, 'jakarta@pacifich.com'), (308, 'reservations.jakarta@pacifich.com'),
    (309, 'manila@pacifich.com'), (309, 'reservations.manila@pacifich.com'),
    (310, 'singapore2@pacifich.com'), (310, 'reservations.singapore2@pacifich.com'),
    (311, 'hongkong2@pacifich.com'), (311, 'reservations.hongkong2@pacifich.com'),
    (312, 'tokyo2@pacifich.com'), (312, 'reservations.tokyo2@pacifich.com'),
    -- fourth hotel chain
    (401, 'london1@royalaccom.com'), (401, 'reservations.london1@royalaccom.com'),
    (402, 'edinburgh1@royalaccom.com'), (402, 'reservations.edinburgh1@royalaccom.com'),
    (403, 'dublin1@royalaccom.com'), (403, 'reservations.dublin1@royalaccom.com'),
    (404, 'sydney@royalaccom.com'), (404, 'reservations.sydney@royalaccom.com'),
    (405, 'auckland@royalaccom.com'), (405, 'reservations.auckland@royalaccom.com'),
    (406, 'dublin2@royalaccom.com'), (406, 'reservations.dublin2@royalaccom.com'),
    (407, 'edinburgh2@royalaccom.com'), (407, 'reservations.edinburgh2@royalaccom.com'),
    (408, 'london2@royalaccom.com'), (408, 'reservations.london2@royalaccom.com'),
    (409, 'melbourne@royalaccom.com'), (409, 'reservations.melbourne@royalaccom.com'),
    -- fifth hotel chain
    (501, 'dubai1@oasisint.com'), (501, 'reservations.dubai1@oasisint.com'),
    (502, 'abudhabi@oasisint.com'), (502, 'reservations.abudhabi@oasisint.com'),
    (503, 'dubai2@oasisint.com'), (503, 'reservations.dubai2@oasisint.com'),
    (504, 'doha@oasisint.com'), (504, 'reservations.doha@oasisint.com'),
    (505, 'riyadh@oasisint.com'), (505, 'reservations.riyadh@oasisint.com'),
    (506, 'alexandria@oasisint.com'), (506, 'reservations.alexandria@oasisint.com'),
    (507, 'cairo@oasisint.com'), (507, 'reservations.cairo@oasisint.com'),
    (508, 'manama@oasisint.com'), (508, 'reservations.manama@oasisint.com');

INSERT INTO HotelNumbers (hotelID, phoneNum) VALUES
    -- first hotel chain
    (101, '+1-212-432-2345'), (101, '+1-212-555-1101'),
    (102, '+1-212-436-1200'), (102, '+1-212-555-1201'),
    (103, '+1-305-110-1300'), (103, '+1-305-555-1301'),
    (104, '+1-310-574-1400'), (104, '+1-310-555-1401'),
    (105, '+1-312-986-1500'), (105, '+1-312-555-1501'),
    (106, '+1-416-423-4242'), (106, '+1-416-555-1601'),
    (107, '+61-3-2103-1442'), (107, '+61-3-5555-1701'),
    (108, '+65-6-423-1231'), (108, '+65-6-555-1801'),
    -- second hotel chain
    (201, '+33-1-5555-2100'), (201, '+33-1-5555-2101'),
    (202, '+33-1-5555-2200'), (202, '+33-1-5555-2201'),
    (203, '+34-93-555-2300'), (203, '+34-93-555-2301'),
    (204, '+39-06-5555-2400'), (204, '+39-06-5555-2401'),
    (205, '+49-30-5555-2500'), (205, '+49-30-5555-2501'),
    (206, '+43-1-5555-2600'), (206, '+43-1-5555-2601'),
    (207, '+7-812-555-2700'), (207, '+7-812-555-2701'),
    (208, '+41-44-555-2800'), (208, '+41-44-555-2801'),
    (209, '+34-91-555-2900'), (209, '+34-91-555-2901'),
    (210, '+44-131-555-3000'), (210, '+44-131-555-3001'),
    -- third hotel chain
    (301, '+81-3-5555-3100'), (301, '+81-3-5555-3101'),
    (302, '+81-6-5555-3200'), (302, '+81-6-5555-3201'),
    (303, '+82-2-555-3300'), (303, '+82-2-555-3301'),
    (304, '+65-6-555-3400'), (304, '+65-6-555-3401'),
    (305, '+852-2-555-3500'), (305, '+852-2-555-3501'),
    (306, '+66-2-555-3600'), (306, '+66-2-555-3601'),
    (307, '+84-4-555-3700'), (307, '+84-4-555-3701'),
    (308, '+62-21-555-3800'), (308, '+62-21-555-3801'),
    (309, '+63-2-555-3900'), (309, '+63-2-555-3901'),
    (310, '+65-6-555-4000'), (310, '+65-6-555-4001'),
    (311, '+852-2-555-4100'), (311, '+852-2-555-4101'),
    (312, '+81-3-5555-4200'), (312, '+81-3-5555-4201'),
    -- fourth hotel chain
    (401, '+44-20-5555-4300'), (401, '+44-20-5555-4301'),
    (402, '+44-131-555-4400'), (402, '+44-131-555-4401'),
    (403, '+353-1-555-4500'), (403, '+353-1-555-4501'),
    (404, '+61-2-5555-4600'), (404, '+61-2-5555-4601'),
    (405, '+64-9-555-4700'), (405, '+64-9-555-4701'),
    (406, '+353-1-555-4800'), (406, '+353-1-555-4801'),
    (407, '+44-131-555-4900'), (407, '+44-131-555-4901'),
    (408, '+44-20-5555-5000'), (408, '+44-20-5555-5001'),
    (409, '+61-3-5555-5100'), (409, '+61-3-5555-5101'),
    -- fifth hotel chain
    (501, '+971-4-555-5200'), (501, '+971-4-555-5201'),
    (502, '+971-2-555-5300'), (502, '+971-2-555-5301'),
    (503, '+971-4-555-5400'), (503, '+971-4-555-5401'),
    (504, '+974-4-555-5500'), (504, '+974-4-555-5501'),
    (505, '+966-11-555-5600'), (505, '+966-11-555-5601'),
    (506, '+20-3-555-5700'), (506, '+20-3-555-5701'),
    (507, '+20-2-555-5800'), (507, '+20-2-555-5801'),
    (508, '+973-17-555-5900'), (508, '+973-17-555-5901');

-- rooms for the Grand Hotels chain
INSERT INTO Rooms (room_number, price, capacity, view_type, is_extendable, is_damaged, hotel_id) VALUES
    -- new york 1
    (101, 299.99, 'single', 'city', TRUE, FALSE, 101),
    (102, 349.99, 'double', 'city', TRUE, FALSE, 101),
    (201, 399.99, 'double', 'city', TRUE, FALSE, 101),
    (202, 449.99, 'suite', 'city', TRUE, FALSE, 101),
    (301, 499.99, 'family', 'city', TRUE, FALSE, 101),
    (302, 549.99, 'suite', 'city', TRUE, FALSE, 101),
    -- new york 2
    (101, 249.99, 'single', 'city', TRUE, FALSE, 102),
    (102, 299.99, 'double', 'city', TRUE, FALSE, 102),
    (201, 349.99, 'double', 'city', TRUE, FALSE, 102),
    (202, 399.99, 'suite', 'city', TRUE, FALSE, 102),
    (301, 449.99, 'family', 'city', TRUE, FALSE, 102),
    -- miami
    (101, 349.99, 'single', 'sea', TRUE, FALSE, 103),
    (102, 399.99, 'double', 'sea', TRUE, FALSE, 103),
    (201, 449.99, 'double', 'sea', TRUE, FALSE, 103),
    (202, 549.99, 'suite', 'sea', TRUE, FALSE, 103),
    (301, 599.99, 'family', 'sea', TRUE, FALSE, 103),
    (302, 649.99, 'suite', 'sea', TRUE, FALSE, 103),
    -- los angeles
    (101, 349.99, 'single', 'city', TRUE, FALSE, 104),
    (102, 399.99, 'double', 'ocean', TRUE, FALSE, 104),
    (201, 449.99, 'double', 'city', TRUE, FALSE, 104),
    (202, 549.99, 'suite', 'ocean', TRUE, FALSE, 104),
    (301, 599.99, 'family', 'ocean', TRUE, FALSE, 104),
    -- chicago
    (101, 299.99, 'single', 'city', TRUE, FALSE, 105),
    (102, 349.99, 'double', 'city', TRUE, FALSE, 105),
    (201, 399.99, 'double', 'city', TRUE, FALSE, 105),
    (202, 449.99, 'suite', 'city', TRUE, FALSE, 105),
    (301, 499.99, 'family', 'city', TRUE, FALSE, 105),
    -- toronto
    (101, 329.99, 'single', 'city', TRUE, FALSE, 106),
    (102, 379.99, 'double', 'city', TRUE, FALSE, 106),
    (201, 429.99, 'double', 'city', TRUE, FALSE, 106),
    (202, 529.99, 'suite', 'city', TRUE, FALSE, 106),
    (301, 579.99, 'family', 'city', TRUE, FALSE, 106),
    -- melbourne
    (101, 399.99, 'single', 'sea', TRUE, FALSE, 107),
    (102, 449.99, 'double', 'sea', TRUE, FALSE, 107),
    (201, 499.99, 'double', 'sea', TRUE, FALSE, 107),
    (202, 599.99, 'suite', 'sea', TRUE, FALSE, 107),
    (301, 649.99, 'family', 'sea', TRUE, FALSE, 107),
    -- singapore
    (101, 349.99, 'single', 'city', TRUE, FALSE, 108),
    (102, 399.99, 'double', 'city', TRUE, FALSE, 108),
    (201, 449.99, 'double', 'city', TRUE, FALSE, 108),
    (202, 549.99, 'suite', 'city', TRUE, FALSE, 108),
    (301, 599.99, 'family', 'city', TRUE, FALSE, 108);

-- rooms for the Prestige Hotels chain
INSERT INTO Rooms (room_number, price, capacity, view_type, is_extendable, is_damaged, hotel_id) VALUES
    -- paris 1
    (101, 359.99, 'single', 'city', TRUE, FALSE, 201),
    (102, 409.99, 'double', 'city', TRUE, FALSE, 201),
    (201, 459.99, 'double', 'city', TRUE, FALSE, 201),
    (202, 559.99, 'suite', 'city', TRUE, FALSE, 201),
    (301, 609.99, 'family', 'city', TRUE, FALSE, 201),
    -- paris 2
    (101, 379.99, 'single', 'city', TRUE, FALSE, 202),
    (102, 429.99, 'double', 'city', TRUE, FALSE, 202),
    (201, 479.99, 'double', 'city', TRUE, FALSE, 202),
    (202, 579.99, 'suite', 'city', TRUE, FALSE, 202),
    (301, 629.99, 'family', 'city', TRUE, FALSE, 202),
    -- barcelona
    (101, 329.99, 'single', 'sea', TRUE, FALSE, 203),
    (102, 379.99, 'double', 'sea', TRUE, FALSE, 203),
    (201, 429.99, 'double', 'sea', TRUE, FALSE, 203),
    (202, 529.99, 'suite', 'sea', TRUE, FALSE, 203),
    (301, 579.99, 'family', 'sea', TRUE, FALSE, 203),
    -- rome
    (101, 309.99, 'single', 'city', TRUE, FALSE, 204),
    (102, 359.99, 'double', 'city', TRUE, FALSE, 204),
    (201, 409.99, 'double', 'city', TRUE, FALSE, 204),
    (202, 509.99, 'suite', 'city', TRUE, FALSE, 204),
    (301, 559.99, 'family', 'city', TRUE, FALSE, 204),
    -- berlin
    (101, 429.99, 'single', 'city', TRUE, FALSE, 205),
    (102, 479.99, 'double', 'city', TRUE, FALSE, 205),
    (201, 529.99, 'double', 'city', TRUE, FALSE, 205),
    (202, 629.99, 'suite', 'city', TRUE, FALSE, 205),
    (301, 679.99, 'family', 'city', TRUE, FALSE, 205),
    -- vienna
    (101, 399.99, 'single', 'city', TRUE, FALSE, 206),
    (102, 449.99, 'double', 'mountain', TRUE, FALSE, 206),
    (201, 499.99, 'double', 'city', TRUE, FALSE, 206),
    (202, 599.99, 'suite', 'mountain', TRUE, FALSE, 206),
    (301, 649.99, 'family', 'mountain', TRUE, FALSE, 206),
    -- st. petersburg
    (101, 219.99, 'single', 'city', TRUE, FALSE, 207),
    (102, 269.99, 'double', 'city', TRUE, FALSE, 207),
    (201, 319.99, 'double', 'city', TRUE, FALSE, 207),
    (202, 349.99, 'suite', 'sea', TRUE, FALSE, 207),
    (301, 469.99, 'family', 'sea', TRUE, FALSE, 207),
    -- zurich
    (101, 299.99, 'single', 'city', TRUE, FALSE, 208),
    (102, 349.99, 'double', 'mountain', TRUE, FALSE, 208),
    (201, 399.99, 'double', 'city', TRUE, FALSE, 208),
    (202, 449.99, 'suite', 'mountain', TRUE, FALSE, 208),
    (301, 499.99, 'family', 'mountain', TRUE, FALSE, 208),
    (302, 549.99, 'suite', 'city', TRUE, FALSE, 208),
    -- madrid
    (101, 249.99, 'single', 'city', TRUE, FALSE, 209),
    (102, 299.99, 'double', 'city', TRUE, FALSE, 209),
    (201, 349.99, 'double', 'city', TRUE, FALSE, 209),
    (202, 399.99, 'suite', 'city', TRUE, FALSE, 209),
    (301, 449.99, 'family', 'city', TRUE, FALSE, 209),
    -- edinburgh
    (101, 349.99, 'single', 'city', TRUE, FALSE, 210),
    (102, 399.99, 'double', 'sea', TRUE, FALSE, 210),
    (201, 449.99, 'double', 'sea', TRUE, FALSE, 210),
    (202, 549.99, 'suite', 'city', TRUE, FALSE, 210),
    (301, 599.99, 'family', 'sea', TRUE, FALSE, 210),
    (302, 649.99, 'suite', 'city', TRUE, FALSE, 210);

-- rooms for the Pacific Hospitality chain
INSERT INTO Rooms (room_number, price, capacity, view_type, is_extendable, is_damaged, hotel_id) VALUES
    -- tokyo 1
    (101, 349.99, 'single', 'city', TRUE, FALSE, 301),
    (102, 399.99, 'double', 'city', TRUE, FALSE, 301),
    (201, 449.99, 'double', 'city', TRUE, FALSE, 301),
    (202, 549.99, 'suite', 'city', TRUE, FALSE, 301),
    (301, 599.99, 'family', 'city', TRUE, FALSE, 301),
    -- osaka
    (101, 299.99, 'single', 'sea', TRUE, FALSE, 302),
    (102, 349.99, 'double', 'sea', TRUE, FALSE, 302),
    (201, 399.99, 'double', 'sea', TRUE, FALSE, 302),
    (202, 449.99, 'suite', 'sea', TRUE, FALSE, 302),
    (301, 499.99, 'family', 'sea', TRUE, FALSE, 302),
    -- seoul
    (101, 329.99, 'single', 'city', TRUE, FALSE, 303),
    (102, 379.99, 'double', 'city', TRUE, FALSE, 303),
    (201, 429.99, 'double', 'city', TRUE, FALSE, 303),
    (202, 529.99, 'suite', 'city', TRUE, FALSE, 303),
    (301, 579.99, 'family', 'city', TRUE, FALSE, 303),
    -- singapore 1
    (101, 399.99, 'single', 'sea', TRUE, FALSE, 304),
    (102, 449.99, 'double', 'sea', TRUE, FALSE, 304),
    (201, 499.99, 'double', 'sea', TRUE, FALSE, 304),
    (202, 599.99, 'suite', 'sea', TRUE, FALSE, 304),
    (301, 649.99, 'family', 'sea', TRUE, FALSE, 304),
    -- hong kong 1
    (101, 349.99, 'single', 'city', TRUE, FALSE, 305),
    (102, 399.99, 'double', 'city', TRUE, FALSE, 305),
    (201, 449.99, 'double', 'city', TRUE, FALSE, 305),
    (202, 549.99, 'suite', 'city', TRUE, FALSE, 305),
    (301, 599.99, 'family', 'city', TRUE, FALSE, 305),
    -- bangkok
    (101, 359.99, 'single', 'city', TRUE, FALSE, 306),
    (102, 409.99, 'double', 'city', TRUE, FALSE, 306),
    (201, 459.99, 'double', 'city', TRUE, FALSE, 306),
    (202, 559.99, 'suite', 'city', TRUE, FALSE, 306),
    (301, 609.99, 'family', 'city', TRUE, FALSE, 306),
    -- hanoi
    (101, 379.99, 'single', 'city', TRUE, FALSE, 307),
    (102, 429.99, 'double', 'city', TRUE, FALSE, 307),
    (201, 479.99, 'double', 'city', TRUE, FALSE, 307),
    (202, 579.99, 'suite', 'city', TRUE, FALSE, 307),
    (301, 629.99, 'family', 'city', TRUE, FALSE, 307),
    -- jakarta
    (101, 329.99, 'single', 'city', TRUE, FALSE, 308),
    (102, 379.99, 'double', 'city', TRUE, FALSE, 308),
    (201, 429.99, 'double', 'city', TRUE, FALSE, 308),
    (202, 529.99, 'suite', 'city', TRUE, FALSE, 308),
    (301, 579.99, 'family', 'city', TRUE, FALSE, 308),
    -- manila
    (101, 309.99, 'single', 'city', TRUE, FALSE, 309),
    (102, 359.99, 'double', 'sea', TRUE, FALSE, 309),
    (201, 409.99, 'double', 'city', TRUE, FALSE, 309),
    (202, 509.99, 'suite', 'sea', TRUE, FALSE, 309),
    (301, 559.99, 'family', 'sea', TRUE, FALSE, 309),
    -- singapore 2
    (101, 429.99, 'single', 'city', TRUE, FALSE, 310),
    (102, 479.99, 'double', 'city', TRUE, FALSE, 310),
    (201, 529.99, 'double', 'city', TRUE, FALSE, 310),
    (202, 629.99, 'suite', 'city', TRUE, FALSE, 310),
    (301, 679.99, 'family', 'city', TRUE, FALSE, 310),
    -- hong kong 2
    (101, 399.99, 'single', 'sea', TRUE, FALSE, 311),
    (102, 449.99, 'double', 'sea', TRUE, FALSE, 311),
    (201, 499.99, 'double', 'sea', TRUE, FALSE, 311),
    (202, 599.99, 'suite', 'sea', TRUE, FALSE, 311),
    (301, 649.99, 'family', 'sea', TRUE, FALSE, 311),
    -- tokyo 2
    (101, 419.99, 'single', 'sea', TRUE, FALSE, 312),
    (102, 469.99, 'double', 'sea', TRUE, FALSE, 312),
    (201, 519.99, 'double', 'sea', TRUE, FALSE, 312),
    (202, 619.99, 'suite', 'sea', TRUE, FALSE, 312),
    (301, 669.99, 'family', 'sea', TRUE, FALSE, 312);

-- rooms for the Royal Accommodations chain
INSERT INTO Rooms (room_number, price, capacity, view_type, is_extendable, is_damaged, hotel_id) VALUES
    -- london 1
    (101, 379.99, 'single', 'city', TRUE, FALSE, 401),
    (102, 429.99, 'double', 'city', TRUE, FALSE, 401),
    (201, 479.99, 'double', 'city', TRUE, FALSE, 401),
    (202, 579.99, 'suite', 'city', TRUE, FALSE, 401),
    (301, 629.99, 'family', 'city', TRUE, FALSE, 401),
    -- edinburgh 1
    (101, 329.99, 'single', 'sea', TRUE, FALSE, 402),
    (102, 379.99, 'double', 'sea', TRUE, FALSE, 402),
    (201, 429.99, 'double', 'sea', TRUE, FALSE, 402),
    (202, 529.99, 'suite', 'sea', TRUE, FALSE, 402),
    (301, 579.99, 'family', 'sea', TRUE, FALSE, 402),
    -- dublin 1
    (101, 309.99, 'single', 'city', TRUE, FALSE, 403),
    (102, 359.99, 'double', 'city', TRUE, FALSE, 403),
    (201, 409.99, 'double', 'city', TRUE, FALSE, 403),
    (202, 509.99, 'suite', 'city', TRUE, FALSE, 403),
    (301, 559.99, 'family', 'city', TRUE, FALSE, 403),
    -- sydney
    (101, 429.99, 'single', 'ocean', TRUE, FALSE, 404),
    (102, 479.99, 'double', 'ocean', TRUE, FALSE, 404),
    (201, 529.99, 'double', 'ocean', TRUE, FALSE, 404),
    (202, 629.99, 'suite', 'ocean', TRUE, FALSE, 404),
    (301, 679.99, 'family', 'ocean', TRUE, FALSE, 404),
    -- auckland
    (101, 399.99, 'single', 'city', TRUE, FALSE, 405),
    (102, 449.99, 'double', 'city', TRUE, FALSE, 405),
    (201, 499.99, 'double', 'sea', TRUE, FALSE, 405),
    (202, 599.99, 'suite', 'city', TRUE, FALSE, 405),
    (301, 649.99, 'family', 'sea', TRUE, FALSE, 405),
    -- dublin 2
    (101, 419.99, 'single', 'sea', TRUE, FALSE, 406),
    (102, 469.99, 'double', 'sea', TRUE, FALSE, 406),
    (201, 519.99, 'double', 'sea', TRUE, FALSE, 406),
    (202, 619.99, 'suite', 'sea', TRUE, FALSE, 406),
    (301, 669.99, 'family', 'sea', TRUE, FALSE, 406),
    -- edinburgh 2
    (101, 299.99, 'single', 'city', TRUE, FALSE, 407),
    (102, 349.99, 'double', 'city', TRUE, FALSE, 407),
    (201, 399.99, 'double', 'city', TRUE, FALSE, 407),
    (202, 449.99, 'suite', 'city', TRUE, FALSE, 407),
    (301, 499.99, 'family', 'city', TRUE, FALSE, 407),
    (302, 549.99, 'suite', 'city', TRUE, FALSE, 407),
    -- london 2
    (101, 249.99, 'single', 'city', TRUE, FALSE, 408),
    (102, 299.99, 'double', 'city', TRUE, FALSE, 408),
    (201, 349.99, 'double', 'city', TRUE, FALSE, 408),
    (202, 399.99, 'suite', 'city', TRUE, FALSE, 408),
    (301, 449.99, 'family', 'city', TRUE, FALSE, 408),
    -- melbourne
    (101, 349.99, 'single', 'sea', TRUE, FALSE, 409),
    (102, 399.99, 'double', 'sea', TRUE, FALSE, 409),
    (201, 449.99, 'double', 'sea', TRUE, FALSE, 409),
    (202, 549.99, 'suite', 'sea', TRUE, FALSE, 409),
    (301, 599.99, 'family', 'sea', TRUE, FALSE, 409),
    (302, 649.99, 'suite', 'sea', TRUE, FALSE, 409);

-- rooms for the Oasis Resorts International chain
INSERT INTO Rooms (room_number, price, capacity, view_type, is_extendable, is_damaged, hotel_id) VALUES
    -- dubai 1
    (101, 429.99, 'single', 'city', TRUE, FALSE, 501),
    (102, 479.99, 'double', 'city', TRUE, FALSE, 501),
    (201, 529.99, 'double', 'city', TRUE, FALSE, 501),
    (202, 629.99, 'suite', 'city', TRUE, FALSE, 501),
    (301, 679.99, 'family', 'city', TRUE, FALSE, 501),
    -- abu dhabi
    (101, 399.99, 'single', 'city', TRUE, FALSE, 502),
    (102, 449.99, 'double', 'city', TRUE, FALSE, 502),
    (201, 499.99, 'double', 'city', TRUE, FALSE, 502),
    (202, 599.99, 'suite', 'city', TRUE, FALSE, 502),
    (301, 649.99, 'family', 'city', TRUE, FALSE, 502),
    -- dubai 2
    (101, 419.99, 'single', 'sea', TRUE, FALSE, 503),
    (102, 469.99, 'double', 'sea', TRUE, FALSE, 503),
    (201, 519.99, 'double', 'sea', TRUE, FALSE, 503),
    (202, 619.99, 'suite', 'sea', TRUE, FALSE, 503),
    (301, 669.99, 'family', 'sea', TRUE, FALSE, 503),
    -- doha
    (101, 299.99, 'single', 'city', TRUE, FALSE, 504),
    (102, 349.99, 'double', 'city', TRUE, FALSE, 504),
    (201, 399.99, 'double', 'city', TRUE, FALSE, 504),
    (202, 449.99, 'suite', 'city', TRUE, FALSE, 504),
    (301, 499.99, 'family', 'city', TRUE, FALSE, 504),
    -- riyadh
    (101, 329.99, 'single', 'sea', TRUE, FALSE, 505),
    (102, 379.99, 'double', 'sea', TRUE, FALSE, 505),
    (201, 429.99, 'double', 'sea', TRUE, FALSE, 505),
    (202, 529.99, 'suite', 'sea', TRUE, FALSE, 505),
    (301, 579.99, 'family', 'sea', TRUE, FALSE, 505),
    -- alexandria
    (101, 399.99, 'single', 'city', TRUE, FALSE, 506),
    (102, 449.99, 'double', 'city', TRUE, FALSE, 506),
    (201, 499.99, 'double', 'city', TRUE, FALSE, 506),
    (202, 599.99, 'suite', 'city', TRUE, FALSE, 506),
    (301, 649.99, 'family', 'city', TRUE, FALSE, 506),
    -- cairo
    (101, 349.99, 'single', 'city', TRUE, FALSE, 507),
    (102, 399.99, 'double', 'city', TRUE, FALSE, 507),
    (201, 449.99, 'double', 'city', TRUE, FALSE, 507),
    (202, 549.99, 'suite', 'city', TRUE, FALSE, 507),
    (301, 599.99, 'family', 'city', TRUE, FALSE, 507),
    -- manama
    (101, 359.99, 'single', 'city', TRUE, FALSE, 508),
    (102, 409.99, 'double', 'city', TRUE, FALSE, 508),
    (201, 459.99, 'double', 'city', TRUE, FALSE, 508),
    (202, 559.99, 'suite', 'city', TRUE, FALSE, 508),
    (301, 609.99, 'family', 'city', TRUE, FALSE, 508);

-- amenities for the Grand Hotels
INSERT INTO RoomAmenities (hotelID, roomNum, amenities) VALUES
    -- new york 1
    (101, 101, 'WiFi'), (101, 101, 'TV'), (101, 101, 'Air Conditioning'), (101, 101, 'Mini Fridge'),
    (101, 102, 'WiFi'), (101, 102, 'TV'), (101, 102, 'Air Conditioning'), (101, 102, 'Mini Bar'), (101, 102, 'Safe'),
    (101, 201, 'WiFi'), (101, 201, 'TV'), (101, 201, 'Air Conditioning'), (101, 201, 'Mini Bar'), (101, 201, 'Safe'), (101, 201, 'Work Desk'),
    (101, 202, 'WiFi'), (101, 202, 'TV'), (101, 202, 'Air Conditioning'), (101, 202, 'Mini Bar'), (101, 202, 'Safe'), (101, 202, 'Jacuzzi'), (101, 202, 'Sofa'),
    (101, 301, 'WiFi'), (101, 301, 'TV'), (101, 301, 'Air Conditioning'), (101, 301, 'Mini Bar'), (101, 301, 'Safe'), (101, 301, 'Kitchenette'), (101, 301, 'Sofa Bed'),
    (101, 302, 'WiFi'), (101, 302, 'TV'), (101, 302, 'Air Conditioning'), (101, 302, 'Mini Bar'), (101, 302, 'Safe'), (101, 302, 'Jacuzzi'), (101, 302, 'Separate Living Area'),
    -- new york 2
    (102, 101, 'WiFi'), (102, 101, 'TV'), (102, 101, 'Air Conditioning'), (102, 101, 'Mini Fridge'),
    (102, 102, 'WiFi'), (102, 102, 'TV'), (102, 102, 'Air Conditioning'), (102, 102, 'Mini Bar'), (102, 102, 'Safe'),
    (102, 201, 'WiFi'), (102, 201, 'TV'), (102, 201, 'Air Conditioning'), (102, 201, 'Mini Bar'), (102, 201, 'Safe'), (102, 201, 'Work Desk'),
    (102, 202, 'WiFi'), (102, 202, 'TV'), (102, 202, 'Air Conditioning'), (102, 202, 'Mini Bar'), (102, 202, 'Safe'), (102, 202, 'Sofa'),
    (102, 301, 'WiFi'), (102, 301, 'TV'), (102, 301, 'Air Conditioning'), (102, 301, 'Mini Bar'), (102, 301, 'Safe'), (102, 301, 'Kitchenette'), (102, 301, 'Sofa Bed'),
    -- miami
    (103, 101, 'WiFi'), (103, 101, 'TV'), (103, 101, 'Air Conditioning'), (103, 101, 'Mini Fridge'), (103, 101, 'Balcony'),
    (103, 102, 'WiFi'), (103, 102, 'TV'), (103, 102, 'Air Conditioning'), (103, 102, 'Mini Bar'), (103, 102, 'Safe'), (103, 102, 'Balcony'),
    (103, 201, 'WiFi'), (103, 201, 'TV'), (103, 201, 'Air Conditioning'), (103, 201, 'Mini Bar'), (103, 201, 'Safe'), (103, 201, 'Balcony'), (103, 201, 'Work Desk'),
    (103, 202, 'WiFi'), (103, 202, 'TV'), (103, 202, 'Air Conditioning'), (103, 202, 'Mini Bar'), (103, 202, 'Safe'), (103, 202, 'Jacuzzi'), (103, 202, 'Balcony'), (103, 202, 'Sofa'),
    (103, 301, 'WiFi'), (103, 301, 'TV'), (103, 301, 'Air Conditioning'), (103, 301, 'Mini Bar'), (103, 301, 'Safe'), (103, 301, 'Kitchenette'), (103, 301, 'Balcony'), (103, 301, 'Sofa Bed'),
    (103, 302, 'WiFi'), (103, 302, 'TV'), (103, 302, 'Air Conditioning'), (103, 302, 'Mini Bar'), (103, 302, 'Safe'), (103, 302, 'Jacuzzi'), (103, 302, 'Balcony'), (103, 302, 'Separate Living Area'),
    -- los angeles
    (104, 101, 'WiFi'), (104, 101, 'TV'), (104, 101, 'Air Conditioning'), (104, 101, 'Mini Fridge'),
    (104, 102, 'WiFi'), (104, 102, 'TV'), (104, 102, 'Air Conditioning'), (104, 102, 'Mini Bar'), (104, 102, 'Safe'),
    (104, 201, 'WiFi'), (104, 201, 'TV'), (104, 201, 'Air Conditioning'), (104, 201, 'Mini Bar'), (104, 201, 'Safe'), (104, 201, 'Work Desk'),
    (104, 202, 'WiFi'), (104, 202, 'TV'), (104, 202, 'Air Conditioning'), (104, 202, 'Mini Bar'), (104, 202, 'Safe'), (104, 202, 'Jacuzzi'), (104, 202, 'Sofa'),
    (104, 301, 'WiFi'), (104, 301, 'TV'), (104, 301, 'Air Conditioning'), (104, 301, 'Mini Bar'), (104, 301, 'Safe'), (104, 301, 'Kitchenette'), (104, 301, 'Sofa Bed'),
    -- chicago
    (105, 101, 'WiFi'), (105, 101, 'TV'), (105, 101, 'Air Conditioning'), (105, 101, 'Mini Fridge'),
    (105, 102, 'WiFi'), (105, 102, 'TV'), (105, 102, 'Air Conditioning'), (105, 102, 'Mini Bar'), (105, 102, 'Safe'),
    (105, 201, 'WiFi'), (105, 201, 'TV'), (105, 201, 'Air Conditioning'), (105, 201, 'Mini Bar'), (105, 201, 'Safe'), (105, 201, 'Work Desk'),
    (105, 202, 'WiFi'), (105, 202, 'TV'), (105, 202, 'Air Conditioning'), (105, 202, 'Mini Bar'), (105, 202, 'Safe'), (105, 202, 'Sofa'),
    (105, 301, 'WiFi'), (105, 301, 'TV'), (105, 301, 'Air Conditioning'), (105, 301, 'Mini Bar'), (105, 301, 'Safe'), (105, 301, 'Kitchenette'), (105, 301, 'Sofa Bed'),
    -- toronto
    (106, 101, 'WiFi'), (106, 101, 'TV'), (106, 101, 'Air Conditioning'), (106, 101, 'Mini Fridge'), (106, 101, 'Balcony'),
    (106, 102, 'WiFi'), (106, 102, 'TV'), (106, 102, 'Air Conditioning'), (106, 102, 'Mini Bar'), (106, 102, 'Safe'), (106, 102, 'Balcony'),
    (106, 201, 'WiFi'), (106, 201, 'TV'), (106, 201, 'Air Conditioning'), (106, 201, 'Mini Bar'), (106, 201, 'Safe'), (106, 201, 'Balcony'), (106, 201, 'Work Desk'),
    (106, 202, 'WiFi'), (106, 202, 'TV'), (106, 202, 'Air Conditioning'), (106, 202, 'Mini Bar'), (106, 202, 'Safe'), (106, 202, 'Jacuzzi'), (106, 202, 'Balcony'), (106, 202, 'Sofa'),
    (106, 301, 'WiFi'), (106, 301, 'TV'), (106, 301, 'Air Conditioning'), (106, 301, 'Mini Bar'), (106, 301, 'Safe'), (106, 301, 'Kitchenette'), (106, 301, 'Balcony'), (106, 301, 'Sofa Bed'),
    -- melbourne
    (107, 101, 'WiFi'), (107, 101, 'TV'), (107, 101, 'Air Conditioning'), (107, 101, 'Mini Fridge'),
    (107, 102, 'WiFi'), (107, 102, 'TV'), (107, 102, 'Air Conditioning'), (107, 102, 'Mini Bar'), (107, 102, 'Safe'),
    (107, 201, 'WiFi'), (107, 201, 'TV'), (107, 201, 'Air Conditioning'), (107, 201, 'Mini Bar'), (107, 201, 'Safe'), (107, 201, 'Work Desk'),
    (107, 202, 'WiFi'), (107, 202, 'TV'), (107, 202, 'Air Conditioning'), (107, 202, 'Mini Bar'), (107, 202, 'Safe'), (107, 202, 'Jacuzzi'), (107, 202, 'Sofa'),
    (107, 301, 'WiFi'), (107, 301, 'TV'), (107, 301, 'Air Conditioning'), (107, 301, 'Mini Bar'), (107, 301, 'Safe'), (107, 301, 'Kitchenette'), (107, 301, 'Sofa Bed'),
    -- singapore
    (108, 101, 'WiFi'), (108, 101, 'TV'), (108, 101, 'Air Conditioning'), (108, 101, 'Mini Fridge'),
    (108, 102, 'WiFi'), (108, 102, 'TV'), (108, 102, 'Air Conditioning'), (108, 102, 'Mini Bar'), (108, 102, 'Safe'),
    (108, 201, 'WiFi'), (108, 201, 'TV'), (108, 201, 'Air Conditioning'), (108, 201, 'Mini Bar'), (108, 201, 'Safe'), (108, 201, 'Work Desk'),
    (108, 202, 'WiFi'), (108, 202, 'TV'), (108, 202, 'Air Conditioning'), (108, 202, 'Mini Bar'), (108, 202, 'Safe'), (108, 202, 'Sofa'),
    (108, 301, 'WiFi'), (108, 301, 'TV'), (108, 301, 'Air Conditioning'), (108, 301, 'Mini Bar'), (108, 301, 'Safe'), (108, 301, 'Kitchenette'), (108, 301, 'Sofa Bed');

-- amenities for the Prestige Hotels
INSERT INTO RoomAmenities (hotelID, roomNum, amenities) VALUES
    -- paris 1
    (201, 101, 'WiFi'), (201, 101, 'TV'), (201, 101, 'Air Conditioning'), (201, 101, 'Mini Fridge'), (201, 101, 'Hairdryer'),
    (201, 102, 'WiFi'), (201, 102, 'TV'), (201, 102, 'Air Conditioning'), (201, 102, 'Mini Bar'), (201, 102, 'Safe'), (201, 102, 'Hairdryer'),
    (201, 201, 'WiFi'), (201, 201, 'TV'), (201, 201, 'Air Conditioning'), (201, 201, 'Mini Bar'), (201, 201, 'Safe'), (201, 201, 'Work Desk'), (201, 201, 'Hairdryer'),
    (201, 202, 'WiFi'), (201, 202, 'TV'), (201, 202, 'Air Conditioning'), (201, 202, 'Mini Bar'), (201, 202, 'Safe'), (201, 202, 'Sofa'), (201, 202, 'Hairdryer'), (201, 202, 'Bathrobe'),
    (201, 301, 'WiFi'), (201, 301, 'TV'), (201, 301, 'Air Conditioning'), (201, 301, 'Mini Bar'), (201, 301, 'Safe'), (201, 301, 'Kitchenette'), (201, 301, 'Sofa Bed'), (201, 301, 'Hairdryer'), (201, 301, 'Bathrobe'),
    -- paris 2
    (202, 101, 'WiFi'), (202, 101, 'TV'), (202, 101, 'Air Conditioning'), (202, 101, 'Mini Fridge'), (202, 101, 'Hairdryer'),
    (202, 102, 'WiFi'), (202, 102, 'TV'), (202, 102, 'Air Conditioning'), (202, 102, 'Mini Bar'), (202, 102, 'Safe'), (202, 102, 'Hairdryer'),
    (202, 201, 'WiFi'), (202, 201, 'TV'), (202, 201, 'Air Conditioning'), (202, 201, 'Mini Bar'), (202, 201, 'Safe'), (202, 201, 'Work Desk'), (202, 201, 'Hairdryer'),
    (202, 202, 'WiFi'), (202, 202, 'TV'), (202, 202, 'Air Conditioning'), (202, 202, 'Mini Bar'), (202, 202, 'Safe'), (202, 202, 'Sofa'), (202, 202, 'Hairdryer'),
    (202, 301, 'WiFi'), (202, 301, 'TV'), (202, 301, 'Air Conditioning'), (202, 301, 'Mini Bar'), (202, 301, 'Safe'), (202, 301, 'Kitchenette'), (202, 301, 'Sofa Bed'), (202, 301, 'Hairdryer'),
    -- barcelona
    (203, 101, 'WiFi'), (203, 101, 'TV'), (203, 101, 'Air Conditioning'), (203, 101, 'Mini Fridge'), (203, 101, 'Balcony'),
    (203, 102, 'WiFi'), (203, 102, 'TV'), (203, 102, 'Air Conditioning'), (203, 102, 'Mini Bar'), (203, 102, 'Safe'), (203, 102, 'Balcony'),
    (203, 201, 'WiFi'), (203, 201, 'TV'), (203, 201, 'Air Conditioning'), (203, 201, 'Mini Bar'), (203, 201, 'Safe'), (203, 201, 'Balcony'), (203, 201, 'Work Desk'),
    (203, 202, 'WiFi'), (203, 202, 'TV'), (203, 202, 'Air Conditioning'), (203, 202, 'Mini Bar'), (203, 202, 'Safe'), (203, 202, 'Balcony'), (203, 202, 'Sofa'),
    (203, 301, 'WiFi'), (203, 301, 'TV'), (203, 301, 'Air Conditioning'), (203, 301, 'Mini Bar'), (203, 301, 'Safe'), (203, 301, 'Kitchenette'), (203, 301, 'Balcony'), (203, 301, 'Sofa Bed'),
    -- rome
    (204, 101, 'WiFi'), (204, 101, 'TV'), (204, 101, 'Air Conditioning'), (204, 101, 'Mini Fridge'), (204, 101, 'Hairdryer'),
    (204, 102, 'WiFi'), (204, 102, 'TV'), (204, 102, 'Air Conditioning'), (204, 102, 'Mini Bar'), (204, 102, 'Safe'), (204, 102, 'Hairdryer'),
    (204, 201, 'WiFi'), (204, 201, 'TV'), (204, 201, 'Air Conditioning'), (204, 201, 'Mini Bar'), (204, 201, 'Safe'), (204, 201, 'Work Desk'), (204, 201, 'Hairdryer'),
    (204, 202, 'WiFi'), (204, 202, 'TV'), (204, 202, 'Air Conditioning'), (204, 202, 'Mini Bar'), (204, 202, 'Safe'), (204, 202, 'Sofa'), (204, 202, 'Hairdryer'), (204, 202, 'Bathrobe'),
    (204, 301, 'WiFi'), (204, 301, 'TV'), (204, 301, 'Air Conditioning'), (204, 301, 'Mini Bar'), (204, 301, 'Safe'), (204, 301, 'Kitchenette'), (204, 301, 'Sofa Bed'), (204, 301, 'Hairdryer'), (204, 301, 'Bathrobe'),
    -- berlin
    (205, 101, 'WiFi'), (205, 101, 'TV'), (205, 101, 'Air Conditioning'), (205, 101, 'Mini Fridge'), (205, 101, 'Hairdryer'),
    (205, 102, 'WiFi'), (205, 102, 'TV'), (205, 102, 'Air Conditioning'), (205, 102, 'Mini Bar'), (205, 102, 'Safe'), (205, 102, 'Hairdryer'),
    (205, 201, 'WiFi'), (205, 201, 'TV'), (205, 201, 'Air Conditioning'), (205, 201, 'Mini Bar'), (205, 201, 'Safe'), (205, 201, 'Work Desk'), (205, 201, 'Hairdryer'),
    (205, 202, 'WiFi'), (205, 202, 'TV'), (205, 202, 'Air Conditioning'), (205, 202, 'Mini Bar'), (205, 202, 'Safe'), (205, 202, 'Sofa'), (205, 202, 'Hairdryer'),
    (205, 301, 'WiFi'), (205, 301, 'TV'), (205, 301, 'Air Conditioning'), (205, 301, 'Mini Bar'), (205, 301, 'Safe'), (205, 301, 'Kitchenette'), (205, 301, 'Sofa Bed'), (205, 301, 'Hairdryer'),
    -- vienna
    (206, 101, 'WiFi'), (206, 101, 'TV'), (206, 101, 'Air Conditioning'), (206, 101, 'Mini Fridge'), (206, 101, 'Balcony'),
    (206, 102, 'WiFi'), (206, 102, 'TV'), (206, 102, 'Air Conditioning'), (206, 102, 'Mini Bar'), (206, 102, 'Safe'), (206, 102, 'Balcony'),
    (206, 201, 'WiFi'), (206, 201, 'TV'), (206, 201, 'Air Conditioning'), (206, 201, 'Mini Bar'), (206, 201, 'Safe'), (206, 201, 'Balcony'), (206, 201, 'Work Desk'),
    (206, 202, 'WiFi'), (206, 202, 'TV'), (206, 202, 'Air Conditioning'), (206, 202, 'Mini Bar'), (206, 202, 'Safe'), (206, 202, 'Balcony'), (206, 202, 'Sofa'),
    (206, 301, 'WiFi'), (206, 301, 'TV'), (206, 301, 'Air Conditioning'), (206, 301, 'Mini Bar'), (206, 301, 'Safe'), (206, 301, 'Kitchenette'), (206, 301, 'Balcony'), (206, 301, 'Sofa Bed'),
    -- st. petersburg
    (207, 101, 'WiFi'), (207, 101, 'TV'), (207, 101, 'Air Conditioning'), (207, 101, 'Mini Fridge'), (207, 101, 'Hairdryer'),
    (207, 102, 'WiFi'), (207, 102, 'TV'), (207, 102, 'Air Conditioning'), (207, 102, 'Mini Bar'), (207, 102, 'Safe'), (207, 102, 'Hairdryer'),
    (207, 201, 'WiFi'), (207, 201, 'TV'), (207, 201, 'Air Conditioning'), (207, 201, 'Mini Bar'), (207, 201, 'Safe'), (207, 201, 'Work Desk'), (207, 201, 'Hairdryer'),
    (207, 202, 'WiFi'), (207, 202, 'TV'), (207, 202, 'Air Conditioning'), (207, 202, 'Mini Bar'), (207, 202, 'Safe'), (207, 202, 'Sofa'), (207, 202, 'Hairdryer'), (207, 202, 'Bathrobe'),
    (207, 301, 'WiFi'), (207, 301, 'TV'), (207, 301, 'Air Conditioning'), (207, 301, 'Mini Bar'), (207, 301, 'Safe'), (207, 301, 'Kitchenette'), (207, 301, 'Sofa Bed'), (207, 301, 'Hairdryer'), (207, 301, 'Bathrobe'),
    -- zurich
    (208, 101, 'WiFi'), (208, 101, 'TV'), (208, 101, 'Air Conditioning'), (208, 101, 'Mini Fridge'), (208, 101, 'Hairdryer'),
    (208, 102, 'WiFi'), (208, 102, 'TV'), (208, 102, 'Air Conditioning'), (208, 102, 'Mini Bar'), (208, 102, 'Safe'), (208, 102, 'Hairdryer'),
    (208, 201, 'WiFi'), (208, 201, 'TV'), (208, 201, 'Air Conditioning'), (208, 201, 'Mini Bar'), (208, 201, 'Safe'), (208, 201, 'Work Desk'), (208, 201, 'Hairdryer'),
    (208, 202, 'WiFi'), (208, 202, 'TV'), (208, 202, 'Air Conditioning'), (208, 202, 'Mini Bar'), (208, 202, 'Safe'), (208, 202, 'Sofa'), (208, 202, 'Hairdryer'),
    (208, 301, 'WiFi'), (208, 301, 'TV'), (208, 301, 'Air Conditioning'), (208, 301, 'Mini Bar'), (208, 301, 'Safe'), (208, 301, 'Kitchenette'), (208, 301, 'Sofa Bed'), (208, 301, 'Hairdryer'),
    (208, 302, 'WiFi'), (208, 302, 'TV'), (208, 302, 'Air Conditioning'), (208, 302, 'Mini Bar'), (208, 302, 'Safe'), (208, 302, 'Kitchenette'), (208, 302, 'Sofa Bed'), (208, 302, 'Hairdryer'), (208, 302, 'Bathrobe'),
    -- madrid
    (209, 101, 'WiFi'), (209, 101, 'TV'), (209, 101, 'Air Conditioning'), (209, 101, 'Mini Fridge'), (209, 101, 'Balcony'),
    (209, 102, 'WiFi'), (209, 102, 'TV'), (209, 102, 'Air Conditioning'), (209, 102, 'Mini Bar'), (209, 102, 'Safe'), (209, 102, 'Balcony'),
    (209, 201, 'WiFi'), (209, 201, 'TV'), (209, 201, 'Air Conditioning'), (209, 201, 'Mini Bar'), (209, 201, 'Safe'), (209, 201, 'Balcony'), (209, 201, 'Work Desk'),
    (209, 202, 'WiFi'), (209, 202, 'TV'), (209, 202, 'Air Conditioning'), (209, 202, 'Mini Bar'), (209, 202, 'Safe'), (209, 202, 'Balcony'), (209, 202, 'Sofa'),
    (209, 301, 'WiFi'), (209, 301, 'TV'), (209, 301, 'Air Conditioning'), (209, 301, 'Mini Bar'), (209, 301, 'Safe'), (209, 301, 'Kitchenette'), (209, 301, 'Balcony'), (209, 301, 'Sofa Bed'),
    -- edinburgh
    (210, 101, 'WiFi'), (210, 101, 'TV'), (210, 101, 'Air Conditioning'), (210, 101, 'Mini Fridge'), (210, 101, 'Hairdryer'),
    (210, 102, 'WiFi'), (210, 102, 'TV'), (210, 102, 'Air Conditioning'), (210, 102, 'Mini Bar'), (210, 102, 'Safe'), (210, 102, 'Hairdryer'),
    (210, 201, 'WiFi'), (210, 201, 'TV'), (210, 201, 'Air Conditioning'), (210, 201, 'Mini Bar'), (210, 201, 'Safe'), (210, 201, 'Work Desk'), (210, 201, 'Hairdryer'),
    (210, 202, 'WiFi'), (210, 202, 'TV'), (210, 202, 'Air Conditioning'), (210, 202, 'Mini Bar'), (210, 202, 'Safe'), (210, 202, 'Sofa'), (210, 202, 'Hairdryer'),
    (210, 301, 'WiFi'), (210, 301, 'TV'), (210, 301, 'Air Conditioning'), (210, 301, 'Mini Bar'), (210, 301, 'Safe'), (210, 301, 'Kitchenette'), (210, 301, 'Sofa Bed'), (210, 301, 'Hairdryer'),
    (210, 302, 'WiFi'), (210, 302, 'TV'), (210, 302, 'Air Conditioning'), (210, 302, 'Mini Bar'), (210, 302, 'Safe'), (210, 302, 'Kitchenette'), (210, 302, 'Sofa Bed'), (210, 302, 'Hairdryer'), (210, 302, 'Bathrobe');
