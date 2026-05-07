INSERT INTO customers
	(cus_name, cus_street, cus_city, cus_province, cus_country, 
    cus_postal_code, cus_phone_number, cus_email)
VALUES 
('Emma Johnson', '123 Maple St', 'Toronto', 'ON', 'Canada', 'M4B 1B3', '647-555-1023', 'emma.johnson13@gmail.com'),
('Liam Brown', '45 Oak Avenue', 'Vancouver', 'BC', 'Canada', 'V6E 2Y1', '604-555-2198', 'liam.brown32@gmail.com'),
('Olivia Martin', '89 King St W', 'Ottawa', 'ON', 'Canada', 'K1P 5G8', '613-555-7744', 'olivia.martin23@gmail.com'),
('Noah Thompson', '302 Pine Crescent', 'Calgary', 'Canada', 'AB', 'T2P 3H8', '403-555-9823', 'noah.56thompson@gmail.com'),
('Ava Wilson', '15 Elmwood Dr', 'Halifax', 'NS', 'Canada', 'B3J 1Z7', '902-555-6372', 'ava.wilson64@gmail.com'),
('William Anderson', '78 Cedar Lane', 'Winnipeg', 'MB', 'Canada', 'R3C 2E1', '204-555-4509', 'william.anderson30@gmail.com'),
('Sophia Clark', '210 Birch Blvd', 'Montreal', 'QC', 'Canada', 'H3B 2S8', '514-555-7320', 'sophia.clark50@gmail.com'),
('James Lewis', '55 Spruce St', 'Edmonton', 'AB', 'Canada', 'T5J 4P3', '780-555-6641', 'james.lewis11@gmail.com'),
('Isabella Hall', '99 Ashgrove Rd', 'Regina', 'SK', 'Canada', 'S4P 3Y2', '306-555-2284', 'isabella.hall36@gmail.com'),
('Benjamin Young', '67 Willow Way', 'Quebec City', 'QC', 'Canada', 'G1R 2W8', '418-555-3490', 'benjamin.young90@gmail.com');

INSERT INTO retailers 
	(retail_name, retail_street, retail_city, retail_province, retail_country, 
	retail_postal_code, retail_contact_name, retail_contact_phone_number, retail_contact_email, retail_tax) 
VALUES
('Maple Electronics', '120 Bay St', 'Toronto', 'ON', 'Canada', 'M5J 2N8', 'Daniel Roberts', '647-555-1823', 'daniel.roberts@mapleelectronics.ca', 'BN123456789RT0001'),
('Prairie Home Goods', '45 Wellington Ave', 'Winnipeg', 'MB', 'Canada', 'R3C 4B2', 'Samantha White', '204-555-7764', 'samantha.white@prairiehome.ca', 'BN987654321RT0002'),
('Pacific Outdoor Supply', '321 Robson St', 'Vancouver', 'BC', 'Canada', 'V6B 5R9', 'Liam Anderson', '604-555-3366', 'liam.anderson@pacificoutdoor.ca', 'BN112233445RT0003'),
('Northern Apparel Co.', '88 Jasper Ave', 'Edmonton', 'AB', 'Canada', 'T5J 1Y7', 'Olivia Davis', '780-555-9102', 'olivia.davis@northernapparel.ca', 'BN556677889RT0004'),
('Capital Kitchenware', '67 Elgin St', 'Ottawa', 'ON', 'Canada', 'K1P 5B2', 'Michael Chen', '613-555-7432', 'michael.chen@capitalkitchenware.ca', 'BN223344556RT0005'),
('Atlantic Books & Gifts', '19 Barrington St', 'Halifax', 'NS', 'Canada', 'B3J 1Y2', 'Sophia Martin', '902-555-1942', 'sophia.martin@atlanticbooks.ca', 'BN667788990RT0006'),
('Golden Harvest Market', '2445 Main St', 'Kelowna', 'BC', 'Canada', 'V1Y 1Z4', 'Benjamin Clarke', '250-555-8421', 'benjamin.clarke@goldenharvest.ca', 'BN778899001RT0007'),
('Lakeside Sports Gear', '502 Queen St', 'Kingston', 'ON', 'Canada', 'K7L 2Y8', 'Emma Johnson', '613-555-5403', 'emma.johnson@lakesidesports.ca', 'BN889900112RT0008'),
('Prairieland Furniture', '90 Circle Dr', 'Saskatoon', 'SK', 'Canada', 'S7K 3T7', 'Noah Wilson', '306-555-3779', 'noah.wilson@prairielandfurniture.ca', 'BN334455667RT0009'),
('Quebec Fine Foods', '125 Rue Saint-Paul', 'Quebec City', 'QC', 'Canada', 'G1K 3V9', 'Isabella Tremblay', '418-555-2014', 'isabella.tremblay@quebecfinefoods.ca', 'BN445566778RT0010');

INSERT INTO logistic_companies 
	(logi_name, logi_street, logi_city, logi_province, logi_country, 
	logi_postal_code, logi_contact_name, logi_contact_phone_number, logi_contact_email, logi_tax) 
VALUES
('Northern Freight Solutions', '120 King St', 'Toronto', 'ON', 'Canada', 'M5V 1L7', 'Ethan Johnson', '647-555-3248', 'ethan.johnson@northernfreight.ca', 'BN125478963RT0001'),
('Prairie Logistics Inc.', '89 Main St', 'Winnipeg', 'MB', 'Canada', 'R3B 0S8', 'Mia Thompson', '204-555-9182', 'mia.thompson@prairielogistics.ca', 'BN987321654RT0002'),
('Pacific Haulage Ltd.', '1025 Elm St', 'Vancouver', 'BC', 'Canada', 'V6E 1Z7', 'Liam Roberts', '604-555-6619', 'liam.roberts@pacifichaulage.ca', 'BN112578964RT0003'),
('TransNorth Distribution', '75 104 Ave', 'Edmonton', 'AB', 'Canada', 'T5J 0K3', 'Charlotte Davis', '780-555-7224', 'charlotte.davis@transnorth.ca', 'BN554433221RT0004'),
('Capital Freight Carriers', '160 York St', 'Ottawa', 'ON', 'Canada', 'K1P 5J9', 'James Wilson', '613-555-3445', 'james.wilson@capitalfreight.ca', 'BN667788990RT0005'),
('Atlantic Cargo Express', '55 Duke St', 'Halifax', 'NS', 'Canada', 'B3J 1T8', 'Ava Martin', '902-555-6642', 'ava.martin@atlanticcargo.ca', 'BN223344556RT0006'),
('Great Lakes Transport', '310 Pine St', 'Barrie', 'ON', 'Canada', 'L4M 3C1', 'William Anderson', '705-555-9012', 'william.anderson@greatlakes.ca', 'BN778899001RT0007'),
('Mountain Movers Logistics', '22 9 Ave', 'Calgary', 'AB', 'Canada', 'T2P 1J3', 'Olivia Chen', '403-555-8472', 'olivia.chen@mountainmovers.ca', 'BN889900112RT0008'),
('Quebec Transit Group', '90 King Rd', 'Quebec City', 'QC', 'Canada', 'G1K 3G4', 'Noah Tremblay', '418-555-2309', 'noah.tremblay@quebectransit.ca', 'BN334455667RT0009'),
('True North Freightlines', '180 Park Ave', 'Winnipeg', 'MB', 'Canada', 'R3C 0C8', 'Sophia Clark', '204-555-6720', 'sophia.clark@truenorthfreight.ca', 'BN445566778RT0010');

INSERT INTO employees 
	(emp_name, emp_dob, emp_phone_number, emp_contact_email, emp_address) 
VALUES
('Emma Johnson', '1992-04-15', '647-555-1023', 'emma.johnson@example.com', '123 Maple Street, Toronto, ON, Canada M4B 1B3'),
('Liam Brown', '1988-09-22', '604-555-2198', 'liam.brown@example.com', '45 Oak Avenue, Vancouver, BC, Canada V6E 2Y1'),
('Olivia Martin', '1995-12-05', '613-555-7744', 'olivia.martin@example.com', '89 King Street West, Ottawa, ON, Canada K1P 5G8'),
('Noah Thompson', '1990-02-17', '403-555-9823', 'noah.thompson@example.com', '302 Pine Crescent, Calgary, AB, Canada T2P 3H8'),
('Ava Wilson', '1993-11-03', '902-555-6372', 'ava.wilson@example.com', '15 Elmwood Drive, Halifax, NS, Canada B3J 1Z7'),
('William Anderson', '1985-08-12', '204-555-4509', 'william.anderson@example.com', '78 Cedar Lane, Winnipeg, MB, Canada R3C 2E1'),
('Sophia Clark', '1994-07-29', '514-555-7320', 'sophia.clark@example.com', '210 Birch Boulevard, Montreal, QC, Canada H3B 2S8'),
('James Lewis', '1989-03-04', '780-555-6641', 'james.lewis@example.com', '55 Spruce Street, Edmonton, AB, Canada T5J 4P3'),
('Isabella Hall', '1996-05-21', '306-555-2284', 'isabella.hall@example.com', '99 Ashgrove Road, Regina, SK, Canada S4P 3Y2'),
('Benjamin Young', '1991-01-30', '418-555-3490', 'benjamin.young@example.com', '67 Willow Way, Quebec City, QC, Canada G1R 2W8'),
('Charlotte Adams', '1990-06-18', '905-555-8211', 'charlotte.adams@example.com', '120 Dundas Street, Mississauga, ON, Canada L5A 1W9'),
('Ethan Roberts', '1987-10-27', '587-555-4420', 'ethan.roberts@example.com', '340 Heritage Drive, Calgary, AB, Canada T2H 1M9'),
('Amelia Perez', '1998-02-09', '604-555-9355', 'amelia.perez@example.com', '22 Cambie Street, Vancouver, BC, Canada V5Z 2Y1'),
('Mason Taylor', '1986-07-14', '613-555-7439', 'mason.taylor@example.com', '175 Preston Street, Ottawa, ON, Canada K1R 7P8'),
('Harper Green', '1993-09-11', '506-555-2990', 'harper.green@example.com', '80 Queen Street, Moncton, NB, Canada E1C 1G5'),
('Lucas King', '1984-05-25', '709-555-8742', 'lucas.king@example.com', '200 Water Street, St. John\'s, NL, Canada A1C 1A9'),
('Evelyn Wright', '1997-03-13', '807-555-6405', 'evelyn.wright@example.com', '95 Red River Road, Thunder Bay, ON, Canada P7B 1A3'),
('Henry Scott', '1992-08-07', '867-555-2298', 'henry.scott@example.com', '12 Franklin Avenue, Whitehorse, YT, Canada Y1A 2B6'),
('Grace Mitchell', '1994-12-01', '867-555-4110', 'grace.mitchell@example.com', '14 Range Road, Yellowknife, NT, Canada X1A 3E9'),
('Logan Campbell', '1989-11-20', '416-555-7782', 'logan.campbell@example.com', '350 Bloor Street East, Toronto, ON, Canada M4W 1H7');

INSERT INTO dependants 
	(dep_name, dep_emp_id, dep_dob) 
VALUES
('Ethan Parker', 1, '1987-03-22'),
('Mia Richardson', 3, '1994-06-11'),
('Lucas Bennett', 2, '1990-10-05'),
('Harper Collins', 6, '1992-01-19'),
('Jack Nguyen', 4, '1996-08-27'),
('Ella Foster', 7, '1989-12-13'),
('Alexander Hughes', 10, '1993-04-07'),
('Chloe Ramirez', 10, '1995-11-25'),
('Nathan Brooks', 15, '1988-02-16'),
('Zoe Patel', 15, '1991-09-30');

INSERT INTO suppliers
	(sup_name, sup_street, sup_city, sup_province, sup_country, sup_postal_code, 
    sup_contact_name, sup_contact_phone_number, sup_contact_email, sup_tax) 
VALUES
('Maple Industrial Co.', '120 King St', 'Toronto', 'ON', 'Canada', 'M5H 1A1', 'Olivia Scott', '647-555-2104', 'olivia.scott@mapleind.ca', 'BN123456789RT0001'),
('Prairie Metals Ltd.', '45 Main St', 'Winnipeg', 'MB', 'Canada', 'R3C 4B2', 'Ethan Turner', '204-555-3478', 'ethan.turner@prairiemetal.ca', 'BN987654321RT0002'),
('Pacific Supplies Inc.', '98 Burrard St', 'Vancouver', 'BC', 'Canada', 'V6C 1A1', 'Sophia Nguyen', '604-555-8832', 'sophia.nguyen@pacificsup.ca', 'BN112233445RT0003'),
('Northern Plastics', '22 Jasper Ave', 'Edmonton', 'AB', 'Canada', 'T5J 3L4', 'Liam Walker', '780-555-5621', 'liam.walker@nplastics.ca', 'BN223344556RT0004'),
('Capital Paper Co.', '75 Elgin St', 'Ottawa', 'ON', 'Canada', 'K1P 5B2', 'Emma Carter', '613-555-7190', 'emma.carter@capitalpaper.ca', 'BN334455667RT0005'),
('Atlantic Hardware', '18 Duke St', 'Halifax', 'NS', 'Canada', 'B3J 1M2', 'James Parker', '902-555-6734', 'james.parker@atlantichard.ca', 'BN445566778RT0006'),
('Golden Foods Ltd.', '88 Pine St', 'Kelowna', 'BC', 'Canada', 'V1Y 1T5', 'Ava Mitchell', '250-555-4108', 'ava.mitchell@goldenfoods.ca', 'BN556677889RT0007'),
('Prairieland Steel', '65 King Rd', 'Regina', 'SK', 'Canada', 'S4P 3Y2', 'William Adams', '306-555-9921', 'william.adams@prairiesteel.ca', 'BN667788990RT0008'),
('Quebec Textiles', '90 Saint St', 'Quebec City', 'QC', 'Canada', 'G1R 3V9', 'Charlotte Tremblay', '418-555-3142', 'charlotte.tremblay@qctextiles.ca', 'BN778899001RT0009'),
('True North Tools', '50 Front St', 'Thunder Bay', 'ON', 'Canada', 'P7B 1Y7', 'Benjamin Ross', '807-555-9023', 'benjamin.ross@truenorthtools.ca', 'BN889900112RT0010');

INSERT INTO manufacturers
	(manu_name, manu_street, manu_city, manu_province, manu_country, manu_postal_code, 
    manu_contact_name, manu_contact_phone_number, manu_contact_email, manu_tax, manu_manager_id) 
VALUES
('Northern Machines Ltd.', '10 Front St', 'Toronto', 'ON', 'Canada', 'M5J 1E3', 'Liam Robinson', '416-555-8120', 'liam.robinson@nmltd.ca', 'BN123450001RT0001', 1),
('MapleTech Manufacturing', '24 King Rd', 'Mississauga', 'ON', 'Canada', 'L5B 2V3', 'Sophia Evans', '905-555-9332', 'sophia.evans@mapletech.ca', 'BN223450002RT0002', 2),
('Prairie Fabrication', '33 Main St', 'Winnipeg', 'MB', 'Canada', 'R3C 2E1', 'Noah Mitchell', '204-555-4167', 'noah.mitchell@prairiefab.ca', 'BN323450003RT0003', 3),
('WestCoast AutoParts', '55 Burrard St', 'Vancouver', 'BC', 'Canada', 'V6C 3E5', 'Olivia Chen', '604-555-7299', 'olivia.chen@wcautoparts.ca', 'BN423450004RT0004', 4),
('Atlantic SteelWorks', '14 Duke St', 'Halifax', 'NS', 'Canada', 'B3J 1P2', 'Ethan Carter', '902-555-2678', 'ethan.carter@atlsteel.ca', 'BN523450005RT0005', 5),
('Capital Plastics Inc.', '70 Elgin St', 'Ottawa', 'ON', 'Canada', 'K1P 5L5', 'Ava Johnson', '613-555-4802', 'ava.johnson@capplast.ca', 'BN623450006RT0006', 6),
('Polar Furniture Co.', '42 Jasper Ave', 'Edmonton', 'AB', 'Canada', 'T5J 2K1', 'William Lee', '780-555-3170', 'william.lee@polarfur.ca', 'BN723450007RT0007', 7),
('TrueNorth Motors', '81 Pine St', 'Calgary', 'AB', 'Canada', 'T2P 3G5', 'Emma White', '403-555-6824', 'emma.white@tnmotors.ca', 'BN823450008RT0008', 8),
('Central Paper Prod.', '39 King St', 'Regina', 'SK', 'Canada', 'S4P 2M1', 'Benjamin Brown', '306-555-9753', 'benjamin.brown@cpprod.ca', 'BN923450009RT0009', 9),
('Quebec Electronics', '60 Saint St', 'Montreal', 'QC', 'Canada', 'H3A 1A2', 'Charlotte Gagnon', '514-555-4820', 'charlotte.gagnon@qcelec.ca', 'BN023450010RT0010', 10);

INSERT INTO warehouses
	(ware_name, ware_street, ware_city, ware_province, ware_country, ware_postal_code, 
    ware_contact_name, ware_contact_phone_number, ware_contact_email, ware_tax, ware_manager_id) 
VALUES
('GreatNorth Storage', '12 Bay St', 'Toronto', 'ON', 'Canada', 'M5J 2N8', 'Emma Taylor', '416-555-2387', 'emma.taylor@gnstorage.ca', 'BN135790001RT0001', 15),
('PrairieCold Depot', '45 Main Rd', 'Winnipeg', 'MB', 'Canada', 'R3C 3A5', 'Liam Martin', '204-555-6732', 'liam.martin@prairiecold.ca', 'BN246880002RT0002', 14),
('WestHub Logistics', '78 King St', 'Vancouver', 'BC', 'Canada', 'V6B 2L1', 'Olivia Harris', '604-555-9145', 'olivia.harris@westhub.ca', 'BN357990003RT0003', 13),
('TrueNorth Storage', '33 Pine St', 'Calgary', 'AB', 'Canada', 'T2P 2S5', 'Noah Campbell', '403-555-7219', 'noah.campbell@tnstorage.ca', 'BN468100004RT0004', 12),
('Atlantic Warehouses', '20 Duke St', 'Halifax', 'NS', 'Canada', 'B3J 3M5', 'Sophia Clark', '902-555-6854', 'sophia.clark@atlware.ca', 'BN579210005RT0005', 11);

INSERT INTO products
	(prod_name, prod_price)
VALUES
('Wireless Mouse', 24.99),
('Mechanical Keyboard', 89.50),
('USB-C Charging Cable', 12.75),
('27-inch LED Monitor', 219.99),
('External Hard Drive 1TB', 79.99),
('Bluetooth Speaker', 45.90),
('Smartphone Stand', 14.20),
('Laptop Backpack', 59.95),
('Noise Cancelling Headphones', 129.99),
('Webcam 1080p', 39.50),
('Office Desk Lamp', 29.80),
('Ergonomic Chair', 189.00),
('Portable SSD 500GB', 99.49),
('HDMI Cable 2m', 10.99),
('Wireless Keyboard', 54.25),
('Smartwatch', 199.99),
('USB Flash Drive 64GB', 17.85),
('Power Bank 10000mAh', 34.60),
('Graphic Tablet', 139.99),
('Mini Projector', 249.00);

INSERT INTO raw_materials 
	(raw_name, raw_price) 
VALUES
('Silicon Wafer 300mm', 45.50),
('Copper Wire 1kg', 12.30),
('Lithium Carbonate 1kg', 39.80),
('Nickel Powder 1kg', 22.60),
('Graphite Powder 1kg', 14.90),
('Polycarbonate Resin 1kg', 8.75),
('Epoxy Resin 1kg', 9.40),
('Solder Paste 500g', 17.25),
('Gold Plating Solution 100ml', 55.00),
('Aluminum Sheet 1kg', 6.90),
('Ceramic Substrate 10pcs', 28.40),
('Tantalum Capacitor Core', 42.75),
('Rare Earth Magnet Set', 31.60),
('PCB Base Material FR4', 18.50),
('Conductive Silver Ink 100ml', 24.99),
('Insulated Copper Coil', 19.70),
('Carbon Fiber Sheet 1m²', 34.20),
('Thermal Paste Tube', 7.80),
('Titanium Rod 1kg', 65.00),
('Plastic Pellet ABS 1kg', 5.95);

INSERT INTO inventory_product 
	(inv_prod_ware_id, inv_prod_id, inv_quantity, inv_unit) 
VALUES
(1, 1, 100, "NUMBER"),
(1, 3, 200, "NUMBER"),
(1, 4, 1000, "NUMBER"),
(1, 2, 100, "NUMBER"),
(2, 6, 200, "NUMBER"),
(2, 7, 1000, "NUMBER"),
(2, 5, 100, "NUMBER"),
(2, 8, 200, "NUMBER"),
(3, 12, 1000, "NUMBER"),
(3, 10, 100, "NUMBER"),
(3, 11, 200, "NUMBER"),
(3, 9, 1000, "NUMBER"),
(4, 15, 100, "NUMBER"),
(4, 13, 200, "NUMBER"),
(4, 16, 1000, "NUMBER"),
(4, 14, 100, "NUMBER"),
(5, 19, 200, "NUMBER"),
(5, 20, 1000, "NUMBER"),
(5, 17, 100, "NUMBER"),
(5, 18, 200, "NUMBER");

INSERT INTO inventory_rm
	(inv_rm_ware_id, inv_rm_id, inv_quantity, inv_unit) 
VALUES
(5, 1, 100, "NUMBER"),
(4, 3, 200, "NUMBER"),
(3, 4, 1000, "NUMBER"),
(2, 2, 100, "NUMBER"),
(1, 6, 200, "NUMBER"),
(1, 7, 1000, "NUMBER"),
(2, 5, 100, "NUMBER"),
(3, 8, 200, "NUMBER"),
(4, 12, 1000, "NUMBER"),
(5, 10, 100, "NUMBER"),
(5, 11, 200, "NUMBER"),
(4, 9, 1000, "NUMBER"),
(3, 15, 100, "NUMBER"),
(2, 13, 200, "NUMBER"),
(1, 16, 1000, "NUMBER"),
(1, 14, 100, "NUMBER"),
(2, 19, 200, "NUMBER"),
(3, 20, 1000, "NUMBER"),
(4, 17, 100, "NUMBER"),
(5, 18, 200, "NUMBER");

INSERT INTO warehouse_emp
	(wk_ware_id, wk_ware_emp_id)
VALUES
(1, 15),
(2, 14),
(3, 13),
(4, 12),
(5, 11),
(2, 16),
(3, 18);

INSERT INTO manufacturer_emp
	(wk_manu_id, wk_manu_emp_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(3, 17),
(5, 20),
(7, 19);

-- Deliveries for customers
INSERT INTO deliveries
	(deli_logi_id, deli_send_date, deli_status, deli_arrived_date,
    deli_from_street, deli_from_city, deli_from_province,
    deli_from_country, deli_from_postal_code, 
    deli_to_street, deli_to_city, deli_to_province,
    deli_to_country, deli_to_postal_code)
VALUE 
(1, '2025-01-30', 'Arrived', '2025-02-05', 
	'12 Bay St', 'Toronto', 'ON', 'Canada', 'M5J 2N8',
    '123 Maple St', 'Toronto', 'ON', 'Canada', 'M4B 1B3'),
(2, '2025-09-30', 'Arriving', NULL,
	'45 Main Rd', 'Winnipeg', 'MB', 'Canada', 'R3C 3A5',
    '45 Oak Avenue', 'Vancouver', 'BC', 'Canada', 'V6E 2Y1');
    
INSERT INTO cus_order
	(cus_order_cus_id, cus_order_deli_id, 
    cus_order_prod, cus_order_ware)
VALUE 
(2, 3, 1, 1),
(3, 4, 19, 2);

-- Deliveries for retailers
INSERT INTO deliveries
	(deli_logi_id, deli_send_date, deli_status, deli_arrived_date,
    deli_from_street, deli_from_city, deli_from_province,
    deli_from_country, deli_from_postal_code, 
    deli_to_street, deli_to_city, deli_to_province,
    deli_to_country, deli_to_postal_code)
VALUE 
(3, '2025-01-30', 'Arrived', '2025-02-05', 
	'78 King St', 'Vancouver', 'BC', 'Canada', 'V6B 2L1',
    '120 Bay St', 'Toronto', 'ON', 'Canada', 'M5J 2N8'),
(4, '2025-09-30', 'Arriving', NULL,
	'33 Pine St', 'Calgary', 'AB', 'Canada', 'T2P 2S5',
    '45 Wellington Ave', 'Winnipeg', 'MB', 'Canada', 'R3C 4B2');
    
INSERT INTO retail_order
	(retail_order_retail_id, retail_order_deli_id, 
    retail_order_prod, retail_order_ware)
VALUE 
(1, 9, 1, 3),
(2, 10, 19, 4);

-- Deliveries for manufacturers deliver products
INSERT INTO deliveries
	(deli_logi_id, deli_send_date, deli_status, deli_arrived_date,
    deli_from_street, deli_from_city, deli_from_province,
    deli_from_country, deli_from_postal_code, 
    deli_to_street, deli_to_city, deli_to_province,
    deli_to_country, deli_to_postal_code)
VALUE 
(5, '2025-01-30', 'Arrived', '2025-02-05', 
	'10 Front St', 'Toronto', 'ON', 'Canada', 'M5J 1E3',
	'20 Duke St', 'Halifax', 'NS', 'Canada', 'B3J 3M5'),
(6, '2025-09-30', 'Arriving', NULL,
    '24 King Rd', 'Mississauga', 'ON', 'Canada', 'L5B 2V3',
    '12 Bay St', 'Toronto', 'ON', 'Canada', 'M5J 2N8');
    
INSERT INTO manufacturer_deliver_product
	(mdp_deli_manu_id, mdp_order_deli_id, 
    mdp_order_prod, mdp_order_ware)
VALUE 
(1, 15, 1, 5),
(2, 16, 19, 1);

-- Deliveries for manufacturers receive raw material
INSERT INTO deliveries
	(deli_logi_id, deli_send_date, deli_status, deli_arrived_date,
    deli_from_street, deli_from_city, deli_from_province,
    deli_from_country, deli_from_postal_code, 
    deli_to_street, deli_to_city, deli_to_province,
    deli_to_country, deli_to_postal_code)
VALUE 
(7, '2025-01-30', 'Arrived', '2025-02-05', 
	'45 Main Rd', 'Winnipeg', 'MB', 'Canada', 'R3C 3A5',
    '33 Main St', 'Winnipeg', 'MB', 'Canada', 'R3C 2E1'),
(8, '2025-09-30', 'Arriving', NULL,
	'78 King St', 'Vancouver', 'BC', 'Canada', 'V6B 2L1',
    '55 Burrard St', 'Vancouver', 'BC', 'Canada', 'V6C 3E5');
    
INSERT INTO raw_material_receive
	(rmr_deli_manu_id, rmr_order_deli_id, 
    rmr_order_rm, rmr_order_ware)
VALUE 
(3, 13, 1, 2),
(4, 14, 19, 3);

-- Deliveries for supplier supply product
INSERT INTO deliveries
	(deli_logi_id, deli_send_date, deli_status, deli_arrived_date,
    deli_from_street, deli_from_city, deli_from_province,
    deli_from_country, deli_from_postal_code, 
    deli_to_street, deli_to_city, deli_to_province,
    deli_to_country, deli_to_postal_code)
VALUE 
(9, '2025-01-30', 'Arrived', '2025-02-05', 
	'120 King St', 'Toronto', 'ON', 'Canada', 'M5H 1A1',
    '33 Pine St', 'Calgary', 'AB', 'Canada', 'T2P 2S5'),
(10, '2025-09-30', 'Arriving', NULL,
	'45 Main St', 'Winnipeg', 'MB', 'Canada', 'R3C 4B2',
    '20 Duke St', 'Halifax', 'NS', 'Canada', 'B3J 3M5');
    
INSERT INTO supplier_supply_product
	(ssp_deli_sup_id, ssp_order_deli_id, 
    ssp_order_prod, ssp_order_ware)
VALUE 
(1, 17, 1, 4),
(2, 18, 19, 5);

-- Deliveries for supplier supply raw material
INSERT INTO deliveries
	(deli_logi_id, deli_send_date, deli_status, deli_arrived_date,
    deli_from_street, deli_from_city, deli_from_province,
    deli_from_country, deli_from_postal_code, 
    deli_to_street, deli_to_city, deli_to_province,
    deli_to_country, deli_to_postal_code)
VALUE 
(1, '2025-01-30', 'Arrived', '2025-02-05', 
	'98 Burrard St', 'Vancouver', 'BC', 'Canada', 'V6C 1A1',
    '12 Bay St', 'Toronto', 'ON', 'Canada', 'M5J 2N8'),
(2, '2025-09-30', 'Arriving', NULL,
	'22 Jasper Ave', 'Edmonton', 'AB', 'Canada', 'T5J 3L4',
    '45 Main Rd', 'Winnipeg', 'MB', 'Canada', 'R3C 3A5');
    
INSERT INTO supplier_supply_raw_material
	(ssrm_deli_sup_id, ssrm_order_deli_id, 
    ssrm_order_rm, ssrm_order_ware)
VALUE 
(3, 19, 1, 1),
(4, 20, 19, 2);
