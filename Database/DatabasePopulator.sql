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

-- amenities for the Pacific Hospitality hotels
INSERT INTO RoomAmenities (hotelID, roomNum, amenities) VALUES
    -- tokyo 1
    (301, 101, 'WiFi'), (301, 101, 'TV'), (301, 101, 'Air Conditioning'), (301, 101, 'Mini Fridge'), (301, 101, 'Yukata'), (301, 101, 'Slippers'),
    (301, 102, 'WiFi'), (301, 102, 'TV'), (301, 102, 'Air Conditioning'), (301, 102, 'Mini Bar'), (301, 102, 'Safe'), (301, 102, 'Yukata'), (301, 102, 'Slippers'),
    (301, 201, 'WiFi'), (301, 201, 'TV'), (301, 201, 'Air Conditioning'), (301, 201, 'Mini Bar'), (301, 201, 'Safe'), (301, 201, 'Work Desk'), (301, 201, 'Yukata'), (301, 201, 'Slippers'),
    (301, 202, 'WiFi'), (301, 202, 'TV'), (301, 202, 'Air Conditioning'), (301, 202, 'Mini Bar'), (301, 202, 'Safe'), (301, 202, 'Sofa'), (301, 202, 'Yukata'), (301, 202, 'Slippers'), (301, 202, 'Green Tea Set'),
    (301, 301, 'WiFi'), (301, 301, 'TV'), (301, 301, 'Air Conditioning'), (301, 301, 'Mini Bar'), (301, 301, 'Safe'), (301, 301, 'Kitchenette'), (301, 301, 'Sofa Bed'), (301, 301, 'Yukata'), (301, 301, 'Slippers'), (301, 301, 'Green Tea Set'),
    -- osaka
    (302, 101, 'WiFi'), (302, 101, 'TV'), (302, 101, 'Air Conditioning'), (302, 101, 'Mini Fridge'), (302, 101, 'Yukata'), (302, 101, 'Slippers'), (302, 101, 'Balcony'),
    (302, 102, 'WiFi'), (302, 102, 'TV'), (302, 102, 'Air Conditioning'), (302, 102, 'Mini Bar'), (302, 102, 'Safe'), (302, 102, 'Yukata'), (302, 102, 'Slippers'), (302, 102, 'Balcony'),
    (302, 201, 'WiFi'), (302, 201, 'TV'), (302, 201, 'Air Conditioning'), (302, 201, 'Mini Bar'), (302, 201, 'Safe'), (302, 201, 'Work Desk'), (302, 201, 'Yukata'), (302, 201, 'Slippers'), (302, 201, 'Balcony'),
    (302, 202, 'WiFi'), (302, 202, 'TV'), (302, 202, 'Air Conditioning'), (302, 202, 'Mini Bar'), (302, 202, 'Safe'), (302, 202, 'Sofa'), (302, 202, 'Yukata'), (302, 202, 'Slippers'), (302, 202, 'Balcony'), (302, 202, 'Green Tea Set'),
    (302, 301, 'WiFi'), (302, 301, 'TV'), (302, 301, 'Air Conditioning'), (302, 301, 'Mini Bar'), (302, 301, 'Safe'), (302, 301, 'Kitchenette'), (302, 301, 'Sofa Bed'), (302, 301, 'Yukata'), (302, 301, 'Slippers'), (302, 301, 'Balcony'), (302, 301, 'Green Tea Set'),
    -- seoul
    (303, 101, 'WiFi'), (303, 101, 'TV'), (303, 101, 'Air Conditioning'), (303, 101, 'Mini Fridge'), (303, 101, 'Yukata'), (303, 101, 'Slippers'),
    (303, 102, 'WiFi'), (303, 102, 'TV'), (303, 102, 'Air Conditioning'), (303, 102, 'Mini Bar'), (303, 102, 'Safe'), (303, 102, 'Yukata'), (303, 102, 'Slippers'),
    (303, 201, 'WiFi'), (303, 201, 'TV'), (303, 201, 'Air Conditioning'), (303, 201, 'Mini Bar'), (303, 201, 'Safe'), (303, 201, 'Work Desk'), (303, 201, 'Yukata'), (303, 201, 'Slippers'),
    (303, 202, 'WiFi'), (303, 202, 'TV'), (303, 202, 'Air Conditioning'), (303, 202, 'Mini Bar'), (303, 202, 'Safe'), (303, 202, 'Sofa'), (303, 202, 'Yukata'), (303, 202, 'Slippers'), (303, 202, 'Green Tea Set'),
    (303, 301, 'WiFi'), (303, 301, 'TV'), (303, 301, 'Air Conditioning'), (303, 301, 'Mini Bar'), (303, 301, 'Safe'), (303, 301, 'Kitchenette'), (303, 301, 'Sofa Bed'), (303, 301, 'Yukata'), (303, 301, 'Slippers'), (303, 301, 'Green Tea Set'),
    -- singapore 1
    (304, 101, 'WiFi'), (304, 101, 'TV'), (304, 101, 'Air Conditioning'), (304, 101, 'Mini Fridge'), (304, 101, 'Yukata'), (304, 101, 'Slippers'), (304, 101, 'Balcony'),
    (304, 102, 'WiFi'), (304, 102, 'TV'), (304, 102, 'Air Conditioning'), (304, 102, 'Mini Bar'), (304, 102, 'Safe'), (304, 102, 'Yukata'), (304, 102, 'Slippers'), (304, 102, 'Balcony'),
    (304, 201, 'WiFi'), (304, 201, 'TV'), (304, 201, 'Air Conditioning'), (304, 201, 'Mini Bar'), (304, 201, 'Safe'), (304, 201, 'Work Desk'), (304, 201, 'Yukata'), (304, 201, 'Slippers'), (304, 201, 'Balcony'),
    (304, 202, 'WiFi'), (304, 202, 'TV'), (304, 202, 'Air Conditioning'), (304, 202, 'Mini Bar'), (304, 202, 'Safe'), (304, 202, 'Sofa'), (304, 202, 'Yukata'), (304, 202, 'Slippers'), (304, 202, 'Balcony'), (304, 202, 'Green Tea Set'),
    (304, 301, 'WiFi'), (304, 301, 'TV'), (304, 301, 'Air Conditioning'), (304, 301, 'Mini Bar'), (304, 301, 'Safe'), (304, 301, 'Kitchenette'), (304, 301, 'Sofa Bed'), (304, 301, 'Yukata'), (304, 301, 'Slippers'), (304, 301, 'Balcony'), (304, 301, 'Green Tea Set'),
    -- hong kong 1
    (305, 101, 'WiFi'), (305, 101, 'TV'), (305, 101, 'Air Conditioning'), (305, 101, 'Mini Fridge'), (305, 101, 'Yukata'), (305, 101, 'Slippers'),
    (305, 102, 'WiFi'), (305, 102, 'TV'), (305, 102, 'Air Conditioning'), (305, 102, 'Mini Bar'), (305, 102, 'Safe'), (305, 102, 'Yukata'), (305, 102, 'Slippers'),
    (305, 201, 'WiFi'), (305, 201, 'TV'), (305, 201, 'Air Conditioning'), (305, 201, 'Mini Bar'), (305, 201, 'Safe'), (305, 201, 'Work Desk'), (305, 201, 'Yukata'), (305, 201, 'Slippers'),
    (305, 202, 'WiFi'), (305, 202, 'TV'), (305, 202, 'Air Conditioning'), (305, 202, 'Mini Bar'), (305, 202, 'Safe'), (305, 202, 'Sofa'), (305, 202, 'Yukata'), (305, 202, 'Slippers'), (305, 202, 'Green Tea Set'),
    (305, 301, 'WiFi'), (305, 301, 'TV'), (305, 301, 'Air Conditioning'), (305, 301, 'Mini Bar'), (305, 301, 'Safe'), (305, 301, 'Kitchenette'), (305, 301, 'Sofa Bed'), (305, 301, 'Yukata'), (305, 301, 'Slippers'), (305, 301, 'Green Tea Set'),
    -- bangkok
    (306, 101, 'WiFi'), (306, 101, 'TV'), (306, 101, 'Air Conditioning'), (306, 101, 'Mini Fridge'), (306, 101, 'Yukata'), (306, 101, 'Slippers'), (306, 101, 'Balcony'),
    (306, 102, 'WiFi'), (306, 102, 'TV'), (306, 102, 'Air Conditioning'), (306, 102, 'Mini Bar'), (306, 102, 'Safe'), (306, 102, 'Yukata'), (306, 102, 'Slippers'), (306, 102, 'Balcony'),
    (306, 201, 'WiFi'), (306, 201, 'TV'), (306, 201, 'Air Conditioning'), (306, 201, 'Mini Bar'), (306, 201, 'Safe'), (306, 201, 'Work Desk'), (306, 201, 'Yukata'), (306, 201, 'Slippers'), (306, 201, 'Balcony'),
    (306, 202, 'WiFi'), (306, 202, 'TV'), (306, 202, 'Air Conditioning'), (306, 202, 'Mini Bar'), (306, 202, 'Safe'), (306, 202, 'Sofa'), (306, 202, 'Yukata'), (306, 202, 'Slippers'), (306, 202, 'Balcony'), (306, 202, 'Green Tea Set'),
    (306, 301, 'WiFi'), (306, 301, 'TV'), (306, 301, 'Air Conditioning'), (306, 301, 'Mini Bar'), (306, 301, 'Safe'), (306, 301, 'Kitchenette'), (306, 301, 'Sofa Bed'), (306, 301, 'Yukata'), (306, 301, 'Slippers'), (306, 301, 'Balcony'), (306, 301, 'Green Tea Set'),
    -- hanoi
    (307, 101, 'WiFi'), (307, 101, 'TV'), (307, 101, 'Air Conditioning'), (307, 101, 'Mini Fridge'), (307, 101, 'Yukata'), (307, 101, 'Slippers'),
    (307, 102, 'WiFi'), (307, 102, 'TV'), (307, 102, 'Air Conditioning'), (307, 102, 'Mini Bar'), (307, 102, 'Safe'), (307, 102, 'Yukata'), (307, 102, 'Slippers'),
    (307, 201, 'WiFi'), (307, 201, 'TV'), (307, 201, 'Air Conditioning'), (307, 201, 'Mini Bar'), (307, 201, 'Safe'), (307, 201, 'Work Desk'), (307, 201, 'Yukata'), (307, 201, 'Slippers'),
    (307, 202, 'WiFi'), (307, 202, 'TV'), (307, 202, 'Air Conditioning'), (307, 202, 'Mini Bar'), (307, 202, 'Safe'), (307, 202, 'Sofa'), (307, 202, 'Yukata'), (307, 202, 'Slippers'), (307, 202, 'Green Tea Set'),
    (307, 301, 'WiFi'), (307, 301, 'TV'), (307, 301, 'Air Conditioning'), (307, 301, 'Mini Bar'), (307, 301, 'Safe'), (307, 301, 'Kitchenette'), (307, 301, 'Sofa Bed'), (307, 301, 'Yukata'), (307, 301, 'Slippers'), (307, 301, 'Green Tea Set'),
    -- jakarta
    (308, 101, 'WiFi'), (308, 101, 'TV'), (308, 101, 'Air Conditioning'), (308, 101, 'Mini Fridge'), (308, 101, 'Yukata'), (308, 101, 'Slippers'), (308, 101, 'Balcony'),
    (308, 102, 'WiFi'), (308, 102, 'TV'), (308, 102, 'Air Conditioning'), (308, 102, 'Mini Bar'), (308, 102, 'Safe'), (308, 102, 'Yukata'), (308, 102, 'Slippers'), (308, 102, 'Balcony'),
    (308, 201, 'WiFi'), (308, 201, 'TV'), (308, 201, 'Air Conditioning'), (308, 201, 'Mini Bar'), (308, 201, 'Safe'), (308, 201, 'Work Desk'), (308, 201, 'Yukata'), (308, 201, 'Slippers'), (308, 201, 'Balcony'),
    (308, 202, 'WiFi'), (308, 202, 'TV'), (308, 202, 'Air Conditioning'), (308, 202, 'Mini Bar'), (308, 202, 'Safe'), (308, 202, 'Sofa'), (308, 202, 'Yukata'), (308, 202, 'Slippers'), (308, 202, 'Balcony'), (308, 202, 'Green Tea Set'),
    (308, 301, 'WiFi'), (308, 301, 'TV'), (308, 301, 'Air Conditioning'), (308, 301, 'Mini Bar'), (308, 301, 'Safe'), (308, 301, 'Kitchenette'), (308, 301, 'Sofa Bed'), (308, 301, 'Yukata'), (308, 301, 'Slippers'), (308, 301, 'Balcony'), (308, 301, 'Green Tea Set'),
    -- manila
    (309, 101, 'WiFi'), (309, 101, 'TV'), (309, 101, 'Air Conditioning'), (309, 101, 'Mini Fridge'), (309, 101, 'Yukata'), (309, 101, 'Slippers'),
    (309, 102, 'WiFi'), (309, 102, 'TV'), (309, 102, 'Air Conditioning'), (309, 102, 'Mini Bar'), (309, 102, 'Safe'), (309, 102, 'Yukata'), (309, 102, 'Slippers'),
    (309, 201, 'WiFi'), (309, 201, 'TV'), (309, 201, 'Air Conditioning'), (309, 201, 'Mini Bar'), (309, 201, 'Safe'), (309, 201, 'Work Desk'), (309, 201, 'Yukata'), (309, 201, 'Slippers'),
    (309, 202, 'WiFi'), (309, 202, 'TV'), (309, 202, 'Air Conditioning'), (309, 202, 'Mini Bar'), (309, 202, 'Safe'), (309, 202, 'Sofa'), (309, 202, 'Yukata'), (309, 202, 'Slippers'), (309, 202, 'Green Tea Set'),
    (309, 301, 'WiFi'), (309, 301, 'TV'), (309, 301, 'Air Conditioning'), (309, 301, 'Mini Bar'), (309, 301, 'Safe'), (309, 301, 'Kitchenette'), (309, 301, 'Sofa Bed'), (309, 301, 'Yukata'), (309, 301, 'Slippers'), (309, 301, 'Green Tea Set'),
    -- singapore 2
    (310, 101, 'WiFi'), (310, 101, 'TV'), (310, 101, 'Air Conditioning'), (310, 101, 'Mini Fridge'), (310, 101, 'Yukata'), (310, 101, 'Slippers'), (310, 101, 'Balcony'),
    (310, 102, 'WiFi'), (310, 102, 'TV'), (310, 102, 'Air Conditioning'), (310, 102, 'Mini Bar'), (310, 102, 'Safe'), (310, 102, 'Yukata'), (310, 102, 'Slippers'), (310, 102, 'Balcony'),
    (310, 201, 'WiFi'), (310, 201, 'TV'), (310, 201, 'Air Conditioning'), (310, 201, 'Mini Bar'), (310, 201, 'Safe'), (310, 201, 'Work Desk'), (310, 201, 'Yukata'), (310, 201, 'Slippers'), (310, 201, 'Balcony'),
    (310, 202, 'WiFi'), (310, 202, 'TV'), (310, 202, 'Air Conditioning'), (310, 202, 'Mini Bar'), (310, 202, 'Safe'), (310, 202, 'Sofa'), (310, 202, 'Yukata'), (310, 202, 'Slippers'), (310, 202, 'Balcony'), (310, 202, 'Green Tea Set'),
    (310, 301, 'WiFi'), (310, 301, 'TV'), (310, 301, 'Air Conditioning'), (310, 301, 'Mini Bar'), (310, 301, 'Safe'), (310, 301, 'Kitchenette'), (310, 301, 'Sofa Bed'), (310, 301, 'Yukata'), (310, 301, 'Slippers'), (310, 301, 'Balcony'), (310, 301, 'Green Tea Set'),
    -- hong kong 2
    (311, 101, 'WiFi'), (311, 101, 'TV'), (311, 101, 'Air Conditioning'), (311, 101, 'Mini Fridge'), (311, 101, 'Yukata'), (311, 101, 'Slippers'),
    (311, 102, 'WiFi'), (311, 102, 'TV'), (311, 102, 'Air Conditioning'), (311, 102, 'Mini Bar'), (311, 102, 'Safe'), (311, 102, 'Yukata'), (311, 102, 'Slippers'),
    (311, 201, 'WiFi'), (311, 201, 'TV'), (311, 201, 'Air Conditioning'), (311, 201, 'Mini Bar'), (311, 201, 'Safe'), (311, 201, 'Work Desk'), (311, 201, 'Yukata'), (311, 201, 'Slippers'),
    (311, 202, 'WiFi'), (311, 202, 'TV'), (311, 202, 'Air Conditioning'), (311, 202, 'Mini Bar'), (311, 202, 'Safe'), (311, 202, 'Sofa'), (311, 202, 'Yukata'), (311, 202, 'Slippers'), (311, 202, 'Green Tea Set'),
    (311, 301, 'WiFi'), (311, 301, 'TV'), (311, 301, 'Air Conditioning'), (311, 301, 'Mini Bar'), (311, 301, 'Safe'), (311, 301, 'Kitchenette'), (311, 301, 'Sofa Bed'), (311, 301, 'Yukata'), (311, 301, 'Slippers'), (311, 301, 'Green Tea Set'),
    -- tokyo 2
    (312, 101, 'WiFi'), (312, 101, 'TV'), (312, 101, 'Air Conditioning'), (312, 101, 'Mini Fridge'), (312, 101, 'Yukata'), (312, 101, 'Slippers'), (312, 101, 'Balcony'),
    (312, 102, 'WiFi'), (312, 102, 'TV'), (312, 102, 'Air Conditioning'), (312, 102, 'Mini Bar'), (312, 102, 'Safe'), (312, 102, 'Yukata'), (312, 102, 'Slippers'), (312, 102, 'Balcony'),
    (312, 201, 'WiFi'), (312, 201, 'TV'), (312, 201, 'Air Conditioning'), (312, 201, 'Mini Bar'), (312, 201, 'Safe'), (312, 201, 'Work Desk'), (312, 201, 'Yukata'), (312, 201, 'Slippers'), (312, 201, 'Balcony'),
    (312, 202, 'WiFi'), (312, 202, 'TV'), (312, 202, 'Air Conditioning'), (312, 202, 'Mini Bar'), (312, 202, 'Safe'), (312, 202, 'Sofa'), (312, 202, 'Yukata'), (312, 202, 'Slippers'), (312, 202, 'Balcony'), (312, 202, 'Green Tea Set'),
    (312, 301, 'WiFi'), (312, 301, 'TV'), (312, 301, 'Air Conditioning'), (312, 301, 'Mini Bar'), (312, 301, 'Safe'), (312, 301, 'Kitchenette'), (312, 301, 'Sofa Bed'), (312, 301, 'Yukata'), (312, 301, 'Slippers'), (312, 301, 'Balcony'), (312, 301, 'Green Tea Set');

-- amenities for the Royal Accommodation hotels
INSERT INTO RoomAmenities (hotelID, roomNum, amenities) VALUES
    -- london 1
    (401, 101, 'WiFi'), (401, 101, 'TV'), (401, 101, 'Air Conditioning'), (401, 101, 'Mini Fridge'), (401, 101, 'Tea/Coffee Maker'),
    (401, 102, 'WiFi'), (401, 102, 'TV'), (401, 102, 'Air Conditioning'), (401, 102, 'Mini Bar'), (401, 102, 'Safe'), (401, 102, 'Tea/Coffee Maker'),
    (401, 201, 'WiFi'), (401, 201, 'TV'), (401, 201, 'Air Conditioning'), (401, 201, 'Mini Bar'), (401, 201, 'Safe'), (401, 201, 'Work Desk'), (401, 201, 'Tea/Coffee Maker'),
    (401, 202, 'WiFi'), (401, 202, 'TV'), (401, 202, 'Air Conditioning'), (401, 202, 'Mini Bar'), (401, 202, 'Safe'), (401, 202, 'Sofa'), (401, 202, 'Tea/Coffee Maker'),
    (401, 301, 'WiFi'), (401, 301, 'TV'), (401, 301, 'Air Conditioning'), (401, 301, 'Mini Bar'), (401, 301, 'Safe'), (401, 301, 'Kitchenette'), (401, 301, 'Sofa Bed'), (401, 301, 'Tea/Coffee Maker'),
    -- edinburgh 1
    (402, 101, 'WiFi'), (402, 101, 'TV'), (402, 101, 'Air Conditioning'), (402, 101, 'Mini Fridge'), (402, 101, 'Tea/Coffee Maker'), (402, 101, 'Balcony'),
    (402, 102, 'WiFi'), (402, 102, 'TV'), (402, 102, 'Air Conditioning'), (402, 102, 'Mini Bar'), (402, 102, 'Safe'), (402, 102, 'Tea/Coffee Maker'), (402, 102, 'Balcony'),
    (402, 201, 'WiFi'), (402, 201, 'TV'), (402, 201, 'Air Conditioning'), (402, 201, 'Mini Bar'), (402, 201, 'Safe'), (402, 201, 'Work Desk'), (402, 201, 'Tea/Coffee Maker'), (402, 201, 'Balcony'),
    (402, 202, 'WiFi'), (402, 202, 'TV'), (402, 202, 'Air Conditioning'), (402, 202, 'Mini Bar'), (402, 202, 'Safe'), (402, 202, 'Sofa'), (402, 202, 'Tea/Coffee Maker'), (402, 202, 'Balcony'),
    (402, 301, 'WiFi'), (402, 301, 'TV'), (402, 301, 'Air Conditioning'), (402, 301, 'Mini Bar'), (402, 301, 'Safe'), (402, 301, 'Kitchenette'), (402, 301, 'Sofa Bed'), (402, 301, 'Tea/Coffee Maker'), (402, 301, 'Balcony'),
    -- dublin 1
    (403, 101, 'WiFi'), (403, 101, 'TV'), (403, 101, 'Air Conditioning'), (403, 101, 'Mini Fridge'), (403, 101, 'Tea/Coffee Maker'),
    (403, 102, 'WiFi'), (403, 102, 'TV'), (403, 102, 'Air Conditioning'), (403, 102, 'Mini Bar'), (403, 102, 'Safe'), (403, 102, 'Tea/Coffee Maker'),
    (403, 201, 'WiFi'), (403, 201, 'TV'), (403, 201, 'Air Conditioning'), (403, 201, 'Mini Bar'), (403, 201, 'Safe'), (403, 201, 'Work Desk'), (403, 201, 'Tea/Coffee Maker'),
    (403, 202, 'WiFi'), (403, 202, 'TV'), (403, 202, 'Air Conditioning'), (403, 202, 'Mini Bar'), (403, 202, 'Safe'), (403, 202, 'Sofa'), (403, 202, 'Tea/Coffee Maker'),
    (403, 301, 'WiFi'), (403, 301, 'TV'), (403, 301, 'Air Conditioning'), (403, 301, 'Mini Bar'), (403, 301, 'Safe'), (403, 301, 'Kitchenette'), (403, 301, 'Sofa Bed'), (403, 301, 'Tea/Coffee Maker'),
    -- sydney
    (404, 101, 'WiFi'), (404, 101, 'TV'), (404, 101, 'Air Conditioning'), (404, 101, 'Mini Fridge'), (404, 101, 'Tea/Coffee Maker'), (404, 101, 'Balcony'),
    (404, 102, 'WiFi'), (404, 102, 'TV'), (404, 102, 'Air Conditioning'), (404, 102, 'Mini Bar'), (404, 102, 'Safe'), (404, 102, 'Tea/Coffee Maker'), (404, 102, 'Balcony'),
    (404, 201, 'WiFi'), (404, 201, 'TV'), (404, 201, 'Air Conditioning'), (404, 201, 'Mini Bar'), (404, 201, 'Safe'), (404, 201, 'Work Desk'), (404, 201, 'Tea/Coffee Maker'), (404, 201, 'Balcony'),
    (404, 202, 'WiFi'), (404, 202, 'TV'), (404, 202, 'Air Conditioning'), (404, 202, 'Mini Bar'), (404, 202, 'Safe'), (404, 202, 'Sofa'), (404, 202, 'Tea/Coffee Maker'), (404, 202, 'Balcony'),
    (404, 301, 'WiFi'), (404, 301, 'TV'), (404, 301, 'Air Conditioning'), (404, 301, 'Mini Bar'), (404, 301, 'Safe'), (404, 301, 'Kitchenette'), (404, 301, 'Sofa Bed'), (404, 301, 'Tea/Coffee Maker'), (404, 301, 'Balcony'),
    -- auckland
    (405, 101, 'WiFi'), (405, 101, 'TV'), (405, 101, 'Air Conditioning'), (405, 101, 'Mini Fridge'), (405, 101, 'Tea/Coffee Maker'),
    (405, 102, 'WiFi'), (405, 102, 'TV'), (405, 102, 'Air Conditioning'), (405, 102, 'Mini Bar'), (405, 102, 'Safe'), (405, 102, 'Tea/Coffee Maker'),
    (405, 201, 'WiFi'), (405, 201, 'TV'), (405, 201, 'Air Conditioning'), (405, 201, 'Mini Bar'), (405, 201, 'Safe'), (405, 201, 'Work Desk'), (405, 201, 'Tea/Coffee Maker'),
    (405, 202, 'WiFi'), (405, 202, 'TV'), (405, 202, 'Air Conditioning'), (405, 202, 'Mini Bar'), (405, 202, 'Safe'), (405, 202, 'Sofa'), (405, 202, 'Tea/Coffee Maker'),
    (405, 301, 'WiFi'), (405, 301, 'TV'), (405, 301, 'Air Conditioning'), (405, 301, 'Mini Bar'), (405, 301, 'Safe'), (405, 301, 'Kitchenette'), (405, 301, 'Sofa Bed'), (405, 301, 'Tea/Coffee Maker'),
    -- dublin 2
    (406, 101, 'WiFi'), (406, 101, 'TV'), (406, 101, 'Air Conditioning'), (406, 101, 'Mini Fridge'), (406, 101, 'Tea/Coffee Maker'), (406, 101, 'Balcony'),
    (406, 102, 'WiFi'), (406, 102, 'TV'), (406, 102, 'Air Conditioning'), (406, 102, 'Mini Bar'), (406, 102, 'Safe'), (406, 102, 'Tea/Coffee Maker'), (406, 102, 'Balcony'),
    (406, 201, 'WiFi'), (406, 201, 'TV'), (406, 201, 'Air Conditioning'), (406, 201, 'Mini Bar'), (406, 201, 'Safe'), (406, 201, 'Work Desk'), (406, 201, 'Tea/Coffee Maker'), (406, 201, 'Balcony'),
    (406, 202, 'WiFi'), (406, 202, 'TV'), (406, 202, 'Air Conditioning'), (406, 202, 'Mini Bar'), (406, 202, 'Safe'), (406, 202, 'Sofa'), (406, 202, 'Tea/Coffee Maker'), (406, 202, 'Balcony'),
    (406, 301, 'WiFi'), (406, 301, 'TV'), (406, 301, 'Air Conditioning'), (406, 301, 'Mini Bar'), (406, 301, 'Safe'), (406, 301, 'Kitchenette'), (406, 301, 'Sofa Bed'), (406, 301, 'Tea/Coffee Maker'), (406, 301, 'Balcony'),
    -- edinburgh 2
    (407, 101, 'WiFi'), (407, 101, 'TV'), (407, 101, 'Air Conditioning'), (407, 101, 'Mini Fridge'), (407, 101, 'Tea/Coffee Maker'),
    (407, 102, 'WiFi'), (407, 102, 'TV'), (407, 102, 'Air Conditioning'), (407, 102, 'Mini Bar'), (407, 102, 'Safe'), (407, 102, 'Tea/Coffee Maker'),
    (407, 201, 'WiFi'), (407, 201, 'TV'), (407, 201, 'Air Conditioning'), (407, 201, 'Mini Bar'), (407, 201, 'Safe'), (407, 201, 'Work Desk'), (407, 201, 'Tea/Coffee Maker'),
    (407, 202, 'WiFi'), (407, 202, 'TV'), (407, 202, 'Air Conditioning'), (407, 202, 'Mini Bar'), (407, 202, 'Safe'), (407, 202, 'Sofa'), (407, 202, 'Tea/Coffee Maker'),
    (407, 301, 'WiFi'), (407, 301, 'TV'), (407, 301, 'Air Conditioning'), (407, 301, 'Mini Bar'), (407, 301, 'Safe'), (407, 301, 'Kitchenette'), (407, 301, 'Sofa Bed'), (407, 301, 'Tea/Coffee Maker'),
    (407, 302, 'WiFi'), (407, 302, 'TV'), (407, 302, 'Air Conditioning'), (407, 302, 'Mini Bar'), (407, 302, 'Safe'), (407, 302, 'Kitchenette'), (407, 302, 'Sofa Bed'), (407, 302, 'Tea/Coffee Maker'), (407, 302, 'Balcony'),
    -- london 2
    (408, 101, 'WiFi'), (408, 101, 'TV'), (408, 101, 'Air Conditioning'), (408, 101, 'Mini Fridge'), (408, 101, 'Tea/Coffee Maker'), (408, 101, 'Balcony'),
    (408, 102, 'WiFi'), (408, 102, 'TV'), (408, 102, 'Air Conditioning'), (408, 102, 'Mini Bar'), (408, 102, 'Safe'), (408, 102, 'Tea/Coffee Maker'), (408, 102, 'Balcony'),
    (408, 201, 'WiFi'), (408, 201, 'TV'), (408, 201, 'Air Conditioning'), (408, 201, 'Mini Bar'), (408, 201, 'Safe'), (408, 201, 'Work Desk'), (408, 201, 'Tea/Coffee Maker'), (408, 201, 'Balcony'),
    (408, 202, 'WiFi'), (408, 202, 'TV'), (408, 202, 'Air Conditioning'), (408, 202, 'Mini Bar'), (408, 202, 'Safe'), (408, 202, 'Sofa'), (408, 202, 'Tea/Coffee Maker'), (408, 202, 'Balcony'),
    (408, 301, 'WiFi'), (408, 301, 'TV'), (408, 301, 'Air Conditioning'), (408, 301, 'Mini Bar'), (408, 301, 'Safe'), (408, 301, 'Kitchenette'), (408, 301, 'Sofa Bed'), (408, 301, 'Tea/Coffee Maker'), (408, 301, 'Balcony'),
    -- melbourne
    (409, 101, 'WiFi'), (409, 101, 'TV'), (409, 101, 'Air Conditioning'), (409, 101, 'Mini Fridge'), (409, 101, 'Tea/Coffee Maker'),
    (409, 102, 'WiFi'), (409, 102, 'TV'), (409, 102, 'Air Conditioning'), (409, 102, 'Mini Bar'), (409, 102, 'Safe'), (409, 102, 'Tea/Coffee Maker'),
    (409, 201, 'WiFi'), (409, 201, 'TV'), (409, 201, 'Air Conditioning'), (409, 201, 'Mini Bar'), (409, 201, 'Safe'), (409, 201, 'Work Desk'), (409, 201, 'Tea/Coffee Maker'),
    (409, 202, 'WiFi'), (409, 202, 'TV'), (409, 202, 'Air Conditioning'), (409, 202, 'Mini Bar'), (409, 202, 'Safe'), (409, 202, 'Sofa'), (409, 202, 'Tea/Coffee Maker'),
    (409, 301, 'WiFi'), (409, 301, 'TV'), (409, 301, 'Air Conditioning'), (409, 301, 'Mini Bar'), (409, 301, 'Safe'), (409, 301, 'Kitchenette'), (409, 301, 'Sofa Bed'), (409, 301, 'Tea/Coffee Maker'),
    (409, 302, 'WiFi'), (409, 302, 'TV'), (409, 302, 'Air Conditioning'), (409, 302, 'Mini Bar'), (409, 302, 'Safe'), (409, 302, 'Kitchenette'), (409, 302, 'Sofa Bed'), (409, 302, 'Tea/Coffee Maker'), (409, 302, 'Balcony');

-- amenities for the Oasis Resorts International hotels
INSERT INTO RoomAmenities (hotelID, roomNum, amenities) VALUES
    -- dubai 1
    (501, 101, 'WiFi'), (501, 101, 'TV'), (501, 101, 'Air Conditioning'), (501, 101, 'Mini Fridge'),
    (501, 102, 'WiFi'), (501, 102, 'TV'), (501, 102, 'Air Conditioning'), (501, 102, 'Mini Bar'), (501, 102, 'Safe'),
    (501, 201, 'WiFi'), (501, 201, 'TV'), (501, 201, 'Air Conditioning'), (501, 201, 'Mini Bar'), (501, 201, 'Safe'), (501, 201, 'Work Desk'),
    (501, 202, 'WiFi'), (501, 202, 'TV'), (501, 202, 'Air Conditioning'), (501, 202, 'Mini Bar'), (501, 202, 'Safe'), (501, 202, 'Sofa'),
    (501, 301, 'WiFi'), (501, 301, 'TV'), (501, 301, 'Air Conditioning'), (501, 301, 'Mini Bar'), (501, 301, 'Safe'), (501, 301, 'Kitchenette'), (501, 301, 'Sofa Bed'),
    -- abu dhabi
    (502, 101, 'WiFi'), (502, 101, 'TV'), (502, 101, 'Air Conditioning'), (502, 101, 'Mini Fridge'),
    (502, 102, 'WiFi'), (502, 102, 'TV'), (502, 102, 'Air Conditioning'), (502, 102, 'Mini Bar'), (502, 102, 'Safe'),
    (502, 201, 'WiFi'), (502, 201, 'TV'), (502, 201, 'Air Conditioning'), (502, 201, 'Mini Bar'), (502, 201, 'Safe'), (502, 201, 'Work Desk'),
    (502, 202, 'WiFi'), (502, 202, 'TV'), (502, 202, 'Air Conditioning'), (502, 202, 'Mini Bar'), (502, 202, 'Safe'), (502, 202, 'Sofa'),
    (502, 301, 'WiFi'), (502, 301, 'TV'), (502, 301, 'Air Conditioning'), (502, 301, 'Mini Bar'), (502, 301, 'Safe'), (502, 301, 'Kitchenette'), (502, 301, 'Sofa Bed'),
    -- dubai 2
    (503, 101, 'WiFi'), (503, 101, 'TV'), (503, 101, 'Air Conditioning'), (503, 101, 'Mini Fridge'),
    (503, 102, 'WiFi'), (503, 102, 'TV'), (503, 102, 'Air Conditioning'), (503, 102, 'Mini Bar'), (503, 102, 'Safe'),
    (503, 201, 'WiFi'), (503, 201, 'TV'), (503, 201, 'Air Conditioning'), (503, 201, 'Mini Bar'), (503, 201, 'Safe'), (503, 201, 'Work Desk'),
    (503, 202, 'WiFi'), (503, 202, 'TV'), (503, 202, 'Air Conditioning'), (503, 202, 'Mini Bar'), (503, 202, 'Safe'), (503, 202, 'Sofa'),
    (503, 301, 'WiFi'), (503, 301, 'TV'), (503, 301, 'Air Conditioning'), (503, 301, 'Mini Bar'), (503, 301, 'Safe'), (503, 301, 'Kitchenette'), (503, 301, 'Sofa Bed'),
    -- doha
    (504, 101, 'WiFi'), (504, 101, 'TV'), (504, 101, 'Air Conditioning'), (504, 101, 'Mini Fridge'),
    (504, 102, 'WiFi'), (504, 102, 'TV'), (504, 102, 'Air Conditioning'), (504, 102, 'Mini Bar'), (504, 102, 'Safe'),
    (504, 201, 'WiFi'), (504, 201, 'TV'), (504, 201, 'Air Conditioning'), (504, 201, 'Mini Bar'), (504, 201, 'Safe'), (504, 201, 'Work Desk'),
    (504, 202, 'WiFi'), (504, 202, 'TV'), (504, 202, 'Air Conditioning'), (504, 202, 'Mini Bar'), (504, 202, 'Safe'), (504, 202, 'Sofa'),
    (504, 301, 'WiFi'), (504, 301, 'TV'), (504, 301, 'Air Conditioning'), (504, 301, 'Mini Bar'), (504, 301, 'Safe'), (504, 301, 'Kitchenette'), (504, 301, 'Sofa Bed'),
    -- riyadh
    (505, 101, 'WiFi'), (505, 101, 'TV'), (505, 101, 'Air Conditioning'), (505, 101, 'Mini Fridge'),
    (505, 102, 'WiFi'), (505, 102, 'TV'), (505, 102, 'Air Conditioning'), (505, 102, 'Mini Bar'), (505, 102, 'Safe'),
    (505, 201, 'WiFi'), (505, 201, 'TV'), (505, 201, 'Air Conditioning'), (505, 201, 'Mini Bar'), (505, 201, 'Safe'), (505, 201, 'Work Desk'),
    (505, 202, 'WiFi'), (505, 202, 'TV'), (505, 202, 'Air Conditioning'), (505, 202, 'Mini Bar'), (505, 202, 'Safe'), (505, 202, 'Sofa'),
    (505, 301, 'WiFi'), (505, 301, 'TV'), (505, 301, 'Air Conditioning'), (505, 301, 'Mini Bar'), (505, 301, 'Safe'), (505, 301, 'Kitchenette'), (505, 301, 'Sofa Bed'),
    -- alexandria
    (506, 101, 'WiFi'), (506, 101, 'TV'), (506, 101, 'Air Conditioning'), (506, 101, 'Mini Fridge'),
    (506, 102, 'WiFi'), (506, 102, 'TV'), (506, 102, 'Air Conditioning'), (506, 102, 'Mini Bar'), (506, 102, 'Safe'),
    (506, 201, 'WiFi'), (506, 201, 'TV'), (506, 201, 'Air Conditioning'), (506, 201, 'Mini Bar'), (506, 201, 'Safe'), (506, 201, 'Work Desk'),
    (506, 202, 'WiFi'), (506, 202, 'TV'), (506, 202, 'Air Conditioning'), (506, 202, 'Mini Bar'), (506, 202, 'Safe'), (506, 202, 'Sofa'),
    (506, 301, 'WiFi'), (506, 301, 'TV'), (506, 301, 'Air Conditioning'), (506, 301, 'Mini Bar'), (506, 301, 'Safe'), (506, 301, 'Kitchenette'), (506, 301, 'Sofa Bed'),
    -- cairo
    (507, 101, 'WiFi'), (507, 101, 'TV'), (507, 101, 'Air Conditioning'), (507, 101, 'Mini Fridge'),
    (507, 102, 'WiFi'), (507, 102, 'TV'), (507, 102, 'Air Conditioning'), (507, 102, 'Mini Bar'), (507, 102, 'Safe'),
    (507, 201, 'WiFi'), (507, 201, 'TV'), (507, 201, 'Air Conditioning'), (507, 201, 'Mini Bar'), (507, 201, 'Safe'), (507, 201, 'Work Desk'),
    (507, 202, 'WiFi'), (507, 202, 'TV'), (507, 202, 'Air Conditioning'), (507, 202, 'Mini Bar'), (507, 202, 'Safe'), (507, 202, 'Sofa'),
    (507, 301, 'WiFi'), (507, 301, 'TV'), (507, 301, 'Air Conditioning'), (507, 301, 'Mini Bar'), (507, 301, 'Safe'), (507, 301, 'Kitchenette'), (507, 301, 'Sofa Bed'),
    -- manama
    (508, 101, 'WiFi'), (508, 101, 'TV'), (508, 101, 'Air Conditioning'), (508, 101, 'Mini Fridge'),
    (508, 102, 'WiFi'), (508, 102, 'TV'), (508, 102, 'Air Conditioning'), (508, 102, 'Mini Bar'), (508, 102, 'Safe'),
    (508, 201, 'WiFi'), (508, 201, 'TV'), (508, 201, 'Air Conditioning'), (508, 201, 'Mini Bar'), (508, 201, 'Safe'), (508, 201, 'Work Desk'),
    (508, 202, 'WiFi'), (508, 202, 'TV'), (508, 202, 'Air Conditioning'), (508, 202, 'Mini Bar'), (508, 202, 'Safe'), (508, 202, 'Sofa'),
    (508, 301, 'WiFi'), (508, 301, 'TV'), (508, 301, 'Air Conditioning'), (508, 301, 'Mini Bar'), (508, 301, 'Safe'), (508, 301, 'Kitchenette'), (508, 301, 'Sofa Bed');

-- employees for Grand Hotels
INSERT INTO Employee (EmployeeID, firstName, middleName, lastName, address, ID_type, personalID, hotel_id) VALUES
    -- new york 1
    (10101, 'James', 'Robert', 'Wilson', '123 W 45th St, New York, NY 10036', 'passport', 123456789, 101),
    (10102, 'Sarah', 'Elizabeth', 'Johnson', '456 Broadway, New York, NY 10013', 'driver license', 987654321, 101),
    (10103, 'Michael', NULL, 'Brown', '789 5th Ave, New York, NY 10019', 'national ID', 456789123, 101),
    (10104, 'Emily', 'Anne', 'Davis', '321 Central Park S, New York, NY 10019', 'passport', 789123456, 101),
    (10105, 'David', 'William', 'Miller', '654 W 58th St, New York, NY 10019', 'driver license', 321654987, 101),
    (10106, 'Jennifer', NULL, 'Taylor', '159 Columbus Ave, New York, NY 10023', 'national ID', 654987321, 101),
    (10107, 'Robert', 'John', 'Anderson', '753 W 55th St, New York, NY 10019', 'passport', 987321654, 101),
    (10108, 'Jessica', 'Marie', 'Thomas', '852 9th Ave, New York, NY 10019', 'driver license', 147258369, 101),
    -- new york 2
    (10201, 'Christopher', 'Alan', 'Jackson', '123 W 72nd St, New York, NY 10023', 'passport', 369258147, 102),
    (10202, 'Amanda', 'Louise', 'White', '456 Amsterdam Ave, New York, NY 10024', 'driver license', 258369147, 102),
    (10203, 'Daniel', 'Joseph', 'Harris', '789 W 83rd St, New York, NY 10024', 'national ID', 159753468, 102),
    (10204, 'Nicole', NULL, 'Martin', '321 W 76th St, New York, NY 10023', 'passport', 357159486, 102),
    (10205, 'Matthew', 'Thomas', 'Thompson', '654 Riverside Dr, New York, NY 10025', 'driver license', 753159486, 102),
    (10206, 'Elizabeth', 'Grace', 'Garcia', '951 W 79th St, New York, NY 10024', 'national ID', 951753468, 102),
    -- miami
    (10301, 'William', 'Charles', 'Martinez', '123 Ocean Dr, Miami Beach, FL 33139', 'passport', 1234567890, 103),
    (10302, 'Ashley', 'Nicole', 'Robinson', '456 Collins Ave, Miami Beach, FL 33139', 'driver license', 2345678901, 103),
    (10303, 'Joseph', NULL, 'Clark', '789 Washington Ave, Miami Beach, FL 33139', 'national ID', 3456789012, 103),
    (10304, 'Megan', 'Elizabeth', 'Rodriguez', '321 Lincoln Rd, Miami Beach, FL 33139', 'passport', 4567890123, 103),
    (10305, 'Andrew', 'David', 'Lewis', '654 Alton Rd, Miami Beach, FL 33139', 'driver license', 5678901234, 103),
    (10306, 'Stephanie', NULL, 'Lee', '951 17th St, Miami Beach, FL 33139', 'national ID', 6789012345, 103),
    -- los angeles
    (10401, 'Joshua', 'Michael', 'Walker', '123 Sunset Blvd, Los Angeles, CA 90028', 'passport', 7890123456, 104),
    (10402, 'Lauren', 'Michelle', 'Hall', '456 Hollywood Blvd, Los Angeles, CA 90028', 'driver license', 8901234567, 104),
    (10403, 'Kevin', 'James', 'Allen', '789 Vine St, Los Angeles, CA 90028', 'national ID', 9012345678, 104),
    (10404, 'Rachel', 'Anne', 'Young', '321 N La Cienega Blvd, Los Angeles, CA 90048', 'passport', 12345678901, 104),
    (10405, 'Ryan', 'Patrick', 'Hernandez', '654 N Doheny Dr, Los Angeles, CA 90069', 'driver license', 23456789012, 104),
    (10406, 'Kayla', NULL, 'King', '951 S Beverly Dr, Los Angeles, CA 90035', 'national ID', 34567890123, 104),
    (10407, 'Brandon', 'Scott', 'Wright', '753 N Roxbury Dr, Los Angeles, CA 90035', 'passport', 45678901234, 104),
    -- chicago
    (10501, 'Justin', 'Alexander', 'Lopez', '123 N Michigan Ave, Chicago, IL 60601', 'passport', 56789012345, 105),
    (10502, 'Victoria', 'Marie', 'Hill', '456 E Wacker Dr, Chicago, IL 60601', 'driver license', 67890123456, 105),
    (10503, 'Nicholas', NULL, 'Scott', '789 N State St, Chicago, IL 60654', 'national ID', 78901234567, 105),
    (10504, 'Amber', 'Nicole', 'Green', '321 W Chicago Ave, Chicago, IL 60654', 'passport', 89012345678, 105),
    (10505, 'Tyler', 'Joseph', 'Adams', '654 N Clark St, Chicago, IL 60654', 'driver license', 90123456789, 105),
    (10506, 'Danielle', 'Elizabeth', 'Baker', '951 N Dearborn St, Chicago, IL 60610', 'national ID', 123456789012, 105),
    -- toronto
    (10601, 'Alexander', 'James', 'Gonzalez', '123 Bay St, Toronto, ON M5J 2K1', 'passport', 234567890123, 106),
    (10602, 'Brittany', 'Lynn', 'Nelson', '456 Yonge St, Toronto, ON M5B 1M2', 'driver license', 345678901234, 106),
    (10603, 'Christian', NULL, 'Carter', '789 Queen St W, Toronto, ON M6J 1G1', 'national ID', 456789012345, 106),
    (10604, 'Samantha', 'Rose', 'Mitchell', '321 King St W, Toronto, ON M5V 1J5', 'passport', 567890123456, 106),
    (10605, 'Zachary', 'Thomas', 'Perez', '654 Dundas St W, Toronto, ON M6J 1S6', 'driver license', 678901234567, 106),
    (10606, 'Courtney', NULL, 'Roberts', '951 College St, Toronto, ON M6G 1A5', 'national ID', 789012345678, 106),
    -- melbourne
    (10701, 'Nathan', 'William', 'Turner', '123 Collins St, Melbourne VIC 3000', 'passport', 890123456789, 107),
    (10702, 'Hannah', 'Grace', 'Phillips', '456 Flinders Ln, Melbourne VIC 3000', 'driver license', 901234567890, 107),
    (10703, 'Samuel', NULL, 'Campbell', '789 Bourke St, Melbourne VIC 3000', 'national ID', 1234567890123, 107),
    (10704, 'Madison', 'Elizabeth', 'Parker', '321 Swanston St, Melbourne VIC 3000', 'passport', 2345678901234, 107),
    (10705, 'Jacob', 'Michael', 'Evans', '654 Little Collins St, Melbourne VIC 3000', 'driver license', 3456789012345, 107),
    (10706, 'Taylor', 'Nicole', 'Edwards', '951 Exhibition St, Melbourne VIC 3000', 'national ID', 4567890123456, 107),
    -- singapore
    (10801, 'Ethan', 'Daniel', 'Collins', '123 Orchard Rd, Singapore 238855', 'passport', 5678901234567, 108),
    (10802, 'Alexis', 'Marie', 'Stewart', '456 Scotts Rd, Singapore 228209', 'driver license', 6789012345678, 108),
    (10803, 'Logan', NULL, 'Sanchez', '789 Tanglin Rd, Singapore 247969', 'national ID', 7890123456789, 108),
    (10804, 'Olivia', 'Sophia', 'Morris', '321 River Valley Rd, Singapore 238366', 'passport', 8901234567890, 108),
    (10805, 'Caleb', 'Andrew', 'Rogers', '654 Clemenceau Ave, Singapore 239620', 'driver license', 9012345678901, 108),
    (10806, 'Alyssa', 'Nicole', 'Reed', '951 Bras Basah Rd, Singapore 189655', 'national ID', 12345678901234, 108),
    (10807, 'Dylan', 'Robert', 'Cook', '753 North Bridge Rd, Singapore 188787', 'passport', 23456789012345, 108),
    (10808, 'Haley', 'Elizabeth', 'Morgan', '852 Beach Rd, Singapore 189677', 'driver license', 34567890123456, 108);

-- employees for Prestige Hotels
INSERT INTO Employee (EmployeeID, firstName, middleName, lastName, address, ID_type, personalID, hotel_id) VALUES
    -- paris 1
    (20101, 'Jean', 'Pierre', 'Dupont', '45 Rue de la Paix, Paris', 'Passport', 123456789, 201),
    (20102, 'Marie', 'Claire', 'Lefevre', '12 Avenue Montaigne, Paris', 'ID Card', 987654321, 201),
    (20103, 'Luc', NULL, 'Moreau', '8 Boulevard Haussmann, Paris', 'Passport', 456123789, 201),
    (20104, 'Sophie', 'Anne', 'Girard', '22 Rue de Rivoli, Paris', 'ID Card', 789456123, 201),
    (20105, 'Antoine', 'Louis', 'Bernard', '30 Champs-Élysées, Paris', 'Passport', 321654987, 201),
    -- paris 2
    (20201, 'Élodie', NULL, 'Martinez', '5 Rue des Rosiers, Paris', 'ID Card', 159753468, 202),
    (20202, 'Thomas', 'Jacques', 'Rousseau', '18 Place Vendôme, Paris', 'Passport', 357951846, 202),
    (20203, 'Camille', 'Elise', 'Fournier', '9 Rue du Faubourg, Paris', 'ID Card', 753159486, 202),
    (20204, 'Nicolas', 'Paul', 'Leroy', '27 Avenue de lOpéra, Paris', 'Passport', 951753864, 202),
    (20205, 'Isabelle', 'Marie', 'Simon', '14 Rue de la Pompe, Paris', 'ID Card', 852963741, 202),
    -- barcelona
    (20301, 'Carlos', NULL, 'Garcia', '56 Passeig de Gràcia, Barcelona', 'Passport', 369258147, 203),
    (20302, 'Elena', 'Maria', 'Lopez', '23 Carrer de Mallorca, Barcelona', 'ID Card', 147258369, 203),
    (20303, 'Javier', 'Antonio', 'Martinez', '78 Rambla Catalunya, Barcelona', 'Passport', 258369147, 203),
    (20304, 'Sofia', NULL, 'Hernandez', '12 Carrer dAragó, Barcelona', 'ID Card', 963852741, 203),
    (20305, 'Miguel', 'Angel', 'Sanchez', '34 Carrer de València, Barcelona', 'Passport', 741852963, 203),
    -- rome
    (20401, 'Giovanni', NULL, 'Rossi', '12 Via del Corso, Rome', 'ID Card', 123789456, 204),
    (20402, 'Maria', 'Giulia', 'Bianchi', '8 Via Condotti, Rome', 'Passport', 456789123, 204),
    (20403, 'Luca', 'Paolo', 'Romano', '25 Via Nazionale, Rome', 'ID Card', 789123456, 204),
    (20404, 'Sofia', 'Anna', 'Colombo', '17 Via Veneto, Rome', 'Passport', 321987654, 204),
    (20405, 'Marco', NULL, 'Ferrari', '3 Via Margutta, Rome', 'ID Card', 654987321, 204),
    -- berlin
    (20501, 'Hans', NULL, 'Schmidt', '45 Unter den Linden, Berlin', 'Passport', 159357486, 205),
    (20502, 'Anna', 'Marie', 'Müller', '22 Friedrichstrasse, Berlin', 'ID Card', 357486159, 205),
    (20503, 'Peter', 'Klaus', 'Schulz', '8 Potsdamer Platz, Berlin', 'Passport', 486159357, 205),
    (20504, 'Claudia', NULL, 'Becker', '14 Kurfürstendamm, Berlin', 'ID Card', 753951486, 205),
    (20505, 'Thomas', 'Wolfgang', 'Hoffmann', '31 Alexanderplatz, Berlin', 'Passport', 951486753, 205),
    -- vienna
    (20601, 'Franz', 'Josef', 'Gruber', '9 Kärntner Strasse, Vienna', 'ID Card', 147369258, 206),
    (20602, 'Elisabeth', NULL, 'Bauer', '17 Graben, Vienna', 'Passport', 369258147, 206),
    (20603, 'Klaus', 'Michael', 'Wagner', '24 Mariahilfer Strasse, Vienna', 'ID Card', 258147369, 206),
    (20604, 'Monika', 'Anna', 'Huber', '5 Stephansplatz, Vienna', 'Passport', 852741963, 206),
    (20605, 'Wolfgang', NULL, 'Steiner', '11 Ringstrasse, Vienna', 'ID Card', 741963852, 206),
    -- st. petersburg
    (20701, 'Dmitri', 'Ivanovich', 'Petrov', '7 Nevsky Prospekt, St. Petersburg', 'Passport', 123654789, 207),
    (20702, 'Irina', 'Sergeyevna', 'Sokolova', '15 Sadovaya Street, St. Petersburg', 'ID Card', 654789123, 207),
    (20703, 'Alexei', NULL, 'Ivanov', '22 Moika Embankment, St. Petersburg', 'Passport', 789123654, 207),
    (20704, 'Olga', 'Dmitrievna', 'Smirnova', '4 Palace Square, St. Petersburg', 'ID Card', 987321654, 207),
    (20705, 'Sergey', 'Vladimirovich', 'Kuznetsov', '18 Liteyny Prospekt, St. Petersburg', 'Passport', 321654987, 207),
    -- zurich
    (20801, 'Hans', 'Peter', 'Meyer', '12 Bahnhofstrasse, Zurich', 'ID Card', 159753486, 208),
    (20802, 'Ursula', NULL, 'Fischer', '25 Limmatquai, Zurich', 'Passport', 753486159, 208),
    (20803, 'Werner', 'Heinz', 'Weber', '8 Rennweg, Zurich', 'ID Card', 486159753, 208),
    (20804, 'Claudia', 'Anna', 'Schneider', '14 Paradeplatz, Zurich', 'Passport', 357951486, 208),
    (20805, 'Thomas', NULL, 'Keller', '31 Niederdorf, Zurich', 'ID Card', 951486357, 208),
    -- madrid
    (20901, 'Juan', NULL, 'Gonzalez', '56 Gran Via, Madrid', 'Passport', 147258369, 209),
    (20902, 'Carmen', 'Maria', 'Rodriguez', '23 Calle de Alcalá, Madrid', 'ID Card', 258369147, 209),
    (20903, 'Francisco', 'Javier', 'Fernandez', '78 Paseo de la Castellana, Madrid', 'Passport', 369147258, 209),
    (20904, 'Isabel', NULL, 'Lopez', '12 Calle de Serrano, Madrid', 'ID Card', 852963741, 209),
    (20905, 'Pedro', 'Antonio', 'Martinez', '34 Plaza Mayor, Madrid', 'Passport', 963741852, 209),
    -- edinburgh
    (21001, 'James', 'Alexander', 'MacDonald', '15 Princes Street, Edinburgh', 'ID Card', 123987456, 210),
    (21002, 'Emily', 'Rose', 'Campbell', '28 Royal Mile, Edinburgh', 'Passport', 987456123, 210),
    (21003, 'William', NULL, 'Brown', '9 George Street, Edinburgh', 'ID Card', 456123987, 210),
    (21004, 'Sophie', 'Elizabeth', 'Wilson', '17 Grassmarket, Edinburgh', 'Passport', 321789654, 210),
    (21005, 'Andrew', 'Charles', 'Stewart', '5 Castlehill, Edinburgh', 'ID Card', 789654321, 210);

-- employees for Pacific Hospitality
INSERT INTO Employee (EmployeeID, firstName, middleName, lastName, address, ID_type, personalID, hotel_id) VALUES
    -- tokyo 1
    (30101, 'Haruto', NULL, 'Tanaka', '5-12 Shibuya, Tokyo', 'Passport', 12345678901, 301),
    (30102, 'Sakura', 'Hana', 'Sato', '3-9 Shinjuku, Tokyo', 'ID Card', 23456789012, 301),
    (30103, 'Ren', 'Kaito', 'Watanabe', '1-7 Roppongi, Tokyo', 'Passport', 34567890123, 301),
    (30104, 'Aoi', NULL, 'Ito', '8-2 Akasaka, Tokyo', 'ID Card', 45678901234, 301),
    (30105, 'Yuki', 'Masashi', 'Yamamoto', '11-4 Ueno, Tokyo', 'Passport', 56789012345, 301),
    -- osaka
    (30201, 'Daiki', NULL, 'Kobayashi', '2-5 Namba, Osaka', 'ID Card', 67890123456, 302),
    (30202, 'Hina', 'Mei', 'Nakamura', '7-3 Umeda, Osaka', 'Passport', 78901234567, 302),
    (30203, 'Sota', 'Kenji', 'Yoshida', '9-1 Dotonbori, Osaka', 'ID Card', 89012345678, 302),
    (30204, 'Riko', NULL, 'Suzuki', '4-8 Tennoji, Osaka', 'Passport', 90123456789, 302),
    (30205, 'Kaito', 'Takashi', 'Matsumoto', '6-2 Shin-Osaka, Osaka', 'ID Card', 01234567890, 302),
    -- seoul
    (30301, 'Min-jun', NULL, 'Kim', '45-2 Myeongdong, Seoul', 'Passport', 12345098765, 303),
    (30302, 'Ji-woo', 'Soo', 'Lee', '23-7 Gangnam, Seoul', 'ID Card', 23456109876, 303),
    (30303, 'Seo-yeon', NULL, 'Park', '12-9 Hongdae, Seoul', 'Passport', 34567210987, 303),
    (30304, 'Hyun-woo', 'Jae', 'Choi', '8-4 Itaewon, Seoul', 'ID Card', 45678321098, 303),
    (30305, 'Eun-ji', 'Mi', 'Jung', '3-1 Dongdaemun, Seoul', 'Passport', 56789432109, 303),
    -- singapore 1
    (30401, 'Wei', 'Jie', 'Tan', '15 Orchard Road, Singapore', 'ID Card', 67890543210, 304),
    (30402, 'Mei', 'Ling', 'Lim', '22 Raffles Place, Singapore', 'Passport', 78901654321, 304),
    (30403, 'Jun', NULL, 'Wong', '8 Marina Bay, Singapore', 'ID Card', 89012765432, 304),
    (30404, 'Xiu', 'Ying', 'Ng', '11 Clarke Quay, Singapore', 'Passport', 90123876543, 304),
    (30405, 'Hao', 'Ming', 'Goh', '7 Sentosa, Singapore', 'ID Card', 01234987654, 304),
    -- hong kong 1
    (30501, 'Chi', 'Hang', 'Chan', '33 Nathan Road, Hong Kong', 'Passport', 12345678900, 305),
    (30502, 'Wing', 'Yan', 'Wong', '9 Tsim Sha Tsui, Hong Kong', 'ID Card', 23456789001, 305),
    (30503, 'Ka', 'Lok', 'Lee', '17 Causeway Bay, Hong Kong', 'Passport', 34567890012, 305),
    (30504, 'Man', NULL, 'Cheung', '4 Mong Kok, Hong Kong', 'ID Card', 45678900123, 305),
    (30505, 'Yan', 'Ting', 'Ho', '21 Central, Hong Kong', 'Passport', 56789001234, 305),
    -- bangkok
    (30601, 'Somsak', NULL, 'Chaiyaporn', '8 Patpong, Bangkok', 'ID Card', 12345678911, 306),
    (30602, 'Naree', NULL, 'Srisawat', '22 Sukhumvit, Bangkok', 'Passport', 23456789112, 306),
    (30603, 'Panya', 'Somboon', 'Thongmee', '15 Khao San, Bangkok', 'ID Card', 34567891123, 306),
    (30604, 'Wanida', NULL, 'Rattanaporn', '9 Silom, Bangkok', 'Passport', 45678911234, 306),
    (30605, 'Chai', 'Wat', 'Boonmee', '3 Siam, Bangkok', 'ID Card', 56789112345, 306),
    -- hanoi
    (30701, 'Minh', 'Quang', 'Nguyen', '12 Hoan Kiem, Hanoi', 'Passport', 12345678922, 307),
    (30702, 'Lan', 'Anh', 'Tran', '5 Ba Dinh, Hanoi', 'ID Card', 23456789223, 307),
    (30703, 'Hung', NULL, 'Le', '8 Tay Ho, Hanoi', 'Passport', 34567892234, 307),
    (30704, 'Thuy', 'Mai', 'Pham', '3 Dong Da, Hanoi', 'ID Card', 45678922345, 307),
    (30705, 'Duc', 'Van', 'Vo', '11 Hai Ba Trung, Hanoi', 'Passport', 56789223456, 307),
    -- jakarta
    (30801, 'Budi', 'Santoso', 'Wijaya', '22 Jalan Sudirman, Jakarta', 'ID Card', 12345678933, 308),
    (30802, 'Dewi', NULL, 'Sari', '15 Menteng, Jakarta', 'Passport', 23456789334, 308),
    (30803, 'Agung', 'Prasetyo', 'Setiawan', '8 Kemang, Jakarta', 'ID Card', 34567893345, 308),
    (30804, 'Rina', 'Dewi', 'Purnama', '5 Pondok Indah, Jakarta', 'Passport', 45678933456, 308),
    (30805, 'Aji', 'Kurnia', 'Hidayat', '9 Kuningan, Jakarta', 'ID Card', 56789334567, 308),
    -- manila
    (30901, 'Juan', 'Miguel', 'Dela Cruz', '15 Roxas Blvd, Manila', 'Passport', 12345678944, 309),
    (30902, 'Maria', 'Clara', 'Santos', '22 Makati, Manila', 'ID Card', 23456789445, 309),
    (30903, 'Jose', NULL, 'Reyes', '8 Bonifacio, Manila', 'Passport', 34567894456, 309),
    (30904, 'Ana', 'Patricia', 'Gonzales', '11 Ortigas, Manila', 'ID Card', 45678944567, 309),
    (30905, 'Carlos', 'Antonio', 'Aquino', '7 Malate, Manila', 'Passport', 56789445678, 309),
    -- singapore 2
    (31001, 'Jia', 'Wei', 'Koh', '8 Collyer Quay, Singapore', 'ID Card', 12345678955, 310),
    (31002, 'Ling', NULL, 'Teo', '12 Raffles Quay, Singapore', 'Passport', 23456789556, 310),
    (31003, 'Hock', 'Seng', 'Ang', '5 Shenton Way, Singapore', 'ID Card', 34567895567, 310),
    (31004, 'Pei', 'Shan', 'Yeo', '9 Marina View, Singapore', 'Passport', 45678955678, 310),
    (31005, 'Kian', 'Meng', 'Chua', '3 Anson Road, Singapore', 'ID Card', 56789556789, 310),
    -- hong kong 2
    (31101, 'Lok', 'Man', 'Lau', '14 Victoria Peak, Hong Kong', 'Passport', 12345678966, 311),
    (31102, 'Yee', 'Ting', 'Cheng', '7 Mid-Levels, Hong Kong', 'ID Card', 23456789667, 311),
    (31103, 'Zhou', NULL, 'Guanyu', '11 Stanley, Hong Kong', 'Passport', 34567896678, 311),
    (31104, 'Wing', 'Yan', 'Lam', '5 Repulse Bay, Hong Kong', 'ID Card', 45678966789, 311),
    (31105, 'Tak', 'Shing', 'Yip', '9 Aberdeen, Hong Kong', 'Passport', 56789667890, 311),
    -- tokyo 2
    (31201, 'Riku', 'Haru', 'Saito', '5-3 Akihabara, Tokyo', 'ID Card', 12345678977, 312),
    (31202, 'Himari', NULL, 'Kato', '9-1 Shibuya, Tokyo', 'Passport', 23456789778, 312),
    (31203, 'Yuto', 'Sora', 'Ishikawa', '2-7 Shinjuku, Tokyo', 'ID Card', 34567897789, 312),
    (31204, 'Mio', 'Rin', 'Fujimoto', '6-4 Harajuku, Tokyo', 'Passport', 45678977890, 312),
    (31205, 'Haru', 'Taiki', 'Mori', '8-2 Roppongi, Tokyo', 'ID Card', 56789778901, 312);