-- inserting the require 5 hotel chains
INSERT INTO HotelChains (ChainID, Office_address, Num_of_hotels, Chain_name) VALUES
    ('1', '55 Global Ave, New York, USA', 8, 'Grand Hotels'),
    ('2', '456 Luxury Lane, Paris, France', 10, 'Prestige Hotels'),
    ('3', '72 Resort Blvd, Manila, Philippines', 12, 'Pacific Hospitality'),
    ('4', '101 Prestige Street, London, UK', 9, 'Royal Accommodations'),
    ('5', '7750 Desert Road, Dubai, UAE', 8, 'Oasis Resorts International');

-- inserting the hotel chain emails
INSERT INTO HotelChainEmails (hotelChainID, email) VALUES
    ('1', 'reservations@grandhotels.com'),
    ('1', 'info@grandhotels.com'),
    ('2', 'bookings@prestigehotels.com'),
    ('2', 'support@prestigehotels.com'),
    ('3', 'contact@pacifich.com'),
    ('3', 'sales@pacifich.com'),
    ('4', 'info@royalaccom.com'),
    ('4', 'reservations@royalaccom.com'),
    ('5', 'support@oasisint.com'),
    ('5', 'bookings@oasisint.com');

-- inserting the hotel chain phone numbers
INSERT INTO HotelChainNumbers (hotelChainID, phoneNum) VALUES
    ('1', '+1-435-342-3465'),
    ('1', '+1-801-335-2222'),
    ('2', '+33-122-333-4444'),
    ('2', '+33-800-555-2001'),
    ('3', '+63-321-555-2352'),
    ('3', '+63-800-241-1231'),
    ('4', '+44-204-235-8888'),
    ('4', '+44-834-535-4987'),
    ('5', '+971-532-533-3242'),
    ('5', '+971-893-534-7453');

-- inserting the hotels of the chain Grand Hotels
INSERT INTO Hotels (hotelID, numRooms, address, hotelChain_id) VALUES
    ('101', 120, '1 Central Park West, New York, USA', '1'),
    ('102', 90, '275 Central Park West, New York, USA', '1'),
    ('103', 80, '1674 Ocean Drive, Miami, USA', '1'),
    ('104', 110, '211 Sunset Blvd, Los Angeles, USA', '1'),
    ('105', 95, '322 Lakeshore Drive, Chicago, USA', '1'),
    ('106', 85, '4040 Bay Street, Toronto, Canada', '1'),
    ('107', 75, '324 Collins Street, Melbourne, Australia', '1'),
    ('108', 105, '634 Orchard Road, Singapore, Singapore', '1');

-- inserting the hotels of the chain Prestige Hotels
INSERT INTO Hotels (hotelID, numRooms, address, hotelChain_id) VALUES
    ('201', 130, '123 Champs-Élysées, Paris, France', '2'),
    ('202', 95, '2325 Rue de Rivoli, Paris, France', '2'),
    ('203', 85, '34 La Rambla, Barcelona, Spain', '2'),
    ('204', 115, '440 Via Veneto, Rome, Italy', '2'),
    ('205', 100, '550 Kurfürstendamm, Berlin, Germany', '2'),
    ('206', 90, '680 Ringstrasse, Vienna, Austria', '2'),
    ('207', 80, '124 Nevsky Prospekt, St. Petersburg, Russia', '2'),
    ('208', 110, '632 Bahnhofstrasse, Zurich, Switzerland', '2'),
    ('209', 120, '342 Gran Via, Madrid, Spain', '2'),
    ('210', 105, '221 Princes Street, Edinburgh, UK', '2');

-- inserting the hotels of the chain Pacific Hospitality
INSERT INTO Hotels (hotelID, numRooms, address, hotelChain_id) VALUES
    ('301', 140, '12 Ginza, Tokyo, Japan', '3'),
    ('302', 100, '312 Namba, Osaka, Japan', '3'),
    ('303', 90, '3325 Myeongdong, Seoul, South Korea', '3'),
    ('304', 120, '432 Orchard Road, Singapore, Singapore', '3'),
    ('305', 110, '555 Nathan Road, Hong Kong, China', '3'),
    ('306', 95, '216 Patpong, Bangkok, Thailand', '3'),
    ('307', 85, '735 Riverside, Hanoi, Vietnam', '3'),
    ('308', 115, '888 Jalan Sudirman, Jakarta, Indonesia', '3'),
    ('309', 125, '922 Roxas Blvd, Manila, Philippines', '3'),
    ('310', 105, '140 Collyer Quay, Singapore, Singapore', '3'),
    ('311', 130, '1331 Victoria Peak, Hong Kong, China', '3'),
    ('312', 140, '1231 Akihabara, Tokyo, Japan', '3');

-- inserting the hotels of the chain Royal Accommodations
INSERT INTO Hotels (hotelID, numRooms, address, hotelChain_id) VALUES
    ('401', 125, '1 Park Lane, London, UK', '4'),
    ('402', 95, '222 Princes Street, Edinburgh, UK', '4'),
    ('403', 85, '331 Temple Bar, Dublin, Ireland', '4'),
    ('404', 115, '442 George Street, Sydney, Australia', '4'),
    ('405', 100, '435 Queen Street, Auckland, New Zealand', '4'),
    ('406', 90, '226 O Connell Street, Dublin, Ireland', '4'),
    ('407', 80, '779 Royal Mile, Edinburgh, UK', '4'),
    ('408', 110, '81 Oxford Street, London, UK', '4'),
    ('409', 120, '921 Collins Street, Melbourne, Australia', '4');

-- inserting the hotels of the chain Oasis Resorts International
INSERT INTO Hotels (hotelID, numRooms, address, hotelChain_id) VALUES
    ('501', 135, '1 Sheikh Zayed Road, Dubai, UAE', '5'),
    ('502', 100, '2 Corniche, Abu Dhabi, UAE', '5'),
    ('503', 90, '3 Jumeirah Beach, Dubai, UAE', '5'),
    ('504', 120, '4 Al Fanar, Doha, Qatar', '5'),
    ('505', 110, '5 King Fahd Road, Riyadh, Saudi Arabia', '5'),
    ('506', 95, '6 Al Montazah, Alexandria, Egypt', '5'),
    ('507', 85, '7 Nile Corniche, Cairo, Egypt', '5'),
    ('508', 115, '8 Al Murjan, Manama, Bahrain', '5');