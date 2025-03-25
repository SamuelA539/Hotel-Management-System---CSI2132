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

