-- @C:\Users\User\Documents\mr_diy_insert_tables.sql
-- ================================================
-- INSERT DATA INTO ALL TABLES FOR MR. DIY DATABASE
-- ================================================



-- setup so that the table looks organize
SET LINESIZE 500
SET PAGESIZE 45
SET TAB OFF
SET NUMWIDTH 15
SET FEEDBACK ON
SET DEFINE OFF

-- ========== 1. PERSON ========== joel

INSERT INTO Person VALUES ('1001', '950618-08-5543', 'Aisyah binti Mohd Ali', '011-23456789');
INSERT INTO Person VALUES ('1002', '871223-01-8765', 'Raj Kumar a/l Maniam', '012-3456788');
INSERT INTO Person VALUES ('1003', '021105-07-3210', 'Lim Xiao Wen', '016-9876543');
INSERT INTO Person VALUES ('1004', '880430-14-1122', 'Wong Chee Keong', '019-8765432');
INSERT INTO Person VALUES ('1005', '990724-05-9988', 'Nurul Fatimah binti Ismail', '017-1122334');
INSERT INTO Person VALUES ('1006', '930310-04-3344', 'Muhammad Hafiz bin Ismail', '013-55667788');
INSERT INTO Person VALUES ('1007', '980715-07-6677', 'Tan Mei Ling', '016-1234567');
INSERT INTO Person VALUES ('1008', '891201-09-7788', 'Saravanan a/l Krishnan', '011-9876543');
INSERT INTO Person VALUES ('1009', '021212-02-8899', 'Siti Aminah binti Yusof', '019-3344556');
INSERT INTO Person VALUES ('1010', '940506-14-1122', 'Lee Jian Hong', '017-7654321');
INSERT INTO Person VALUES ('1011', '900101-14-5678', 'Ahmad bin Zulkifli', '012-3456789');
INSERT INTO Person VALUES ('1012', '880202-08-4321', 'Lim Wei Chuan', '013-8765432');
INSERT INTO Person VALUES ('1013', '920303-10-1122', 'Aishah binti Rahman', '016-9876543');
INSERT INTO Person VALUES ('1014', '851224-07-3344', 'M. Krishnan', '017-2233445'); 
INSERT INTO Person VALUES ('1015', '950505-13-5566', 'Nurul Izzat Binti Izzaldin', '019-6677889');
INSERT INTO Person VALUES ('1016', '870606-05-7788', 'Tan Mei Ling', '011-5566778');
INSERT INTO Person VALUES ('1017', '931010-02-9900', 'Suresh a/l Rajan', '012-998877');
INSERT INTO Person VALUES ('1018', '840414-03-1133', 'Chong Kar Yee', '018-4455667');
INSERT INTO Person VALUES ('1019', '960909-01-2244', 'Muhammad Hakim bin Roslan', '010-3344556');
INSERT INTO Person VALUES ('1020', '891212-09-7788', 'Aina binti Zakaria', '013-2233555');
INSERT INTO Person VALUES ('1021', '850818-11-4455', 'Goh Jia Hao', '017-8899001');
INSERT INTO Person VALUES ('1022', '830707-06-6677', 'Rajesh a/l Manikam', '014-6655443');
INSERT INTO Person VALUES ('1023', '910111-12-8899', 'Farah Nadia bt. Idris', '019-7788990');
INSERT INTO Person VALUES ('1024', '900818-08-1234', 'Yap Siew Mun', '016-9988775');
INSERT INTO Person VALUES ('1025', '940404-04-5566', 'Shalini a/p Ramasamy', '010-1122334');
INSERT INTO Person VALUES ('1026', '880909-10-7766', 'Muhammad Alif bin Nordin', '012-6677889');
INSERT INTO Person VALUES ('1027', '920202-02-3344', 'Chan Wei Jin', '018-5566443');
INSERT INTO Person VALUES ('1028', '860101-13-8899', 'Kavitha a/p Ragu', '011-8877665');
INSERT INTO Person VALUES ('1029', '980707-12-2211', 'Nor Syafiqah bt. Zainuddin', '014-3344221');
INSERT INTO Person VALUES ('1030', '970505-05-9900', 'Lee Jing Wen', '019-2233111');

COMMIT;

-- ========== 2. PRODUCT ========== aina
INSERT INTO Product VALUES ('P40001', 'SKU1001', 'Premium Sofa', 'Homely', 'Furniture', 'None', 32.5, 'Beige', 'Polyester', 'Malaysia');
INSERT INTO Product VALUES ('P40002', 'SKU1002', 'Ceramic Vase', 'Artisan', 'Decor', 'None', 1.8, 'White', 'Ceramic', 'China');
INSERT INTO Product VALUES ('P40003', 'SKU1003', 'Queen Bed', 'SleepWell', 'Furniture', 'None', 55, 'Walnut', 'Wood', 'Vietnam');
INSERT INTO Product VALUES ('P40004', 'SKU1004', 'LED Lamp', 'BrightLife', 'Lighting', '3 years', 0.5, 'Silver', 'Metal', 'Malaysia');
INSERT INTO Product VALUES ('P40005', 'SKU1005', 'Dining Table', 'SolidWood', 'Furniture', 'None', 28, 'Oak', 'Wood', 'Indonesia');
INSERT INTO Product VALUES ('P40006', 'SKU1006', 'Curtain Set', 'TextileCo', 'Home Textiles', 'None', 2.3, 'Blue', 'Polyester', 'India');
INSERT INTO Product VALUES ('P40007', 'SKU1007', 'Wall Mirror', 'Reflecto', 'Decor', 'None', 3.5, 'Gold', 'Glass', 'Malaysia');
INSERT INTO Product VALUES ('P40008', 'SKU1008', 'Coffee Table', 'ModLiving', 'Furniture', 'None', 12, 'Black', 'MDF', 'Malaysia');
INSERT INTO Product VALUES ('P40009', 'SKU1009', 'Throw Pillow', 'SoftTouch', 'Home Textiles', 'None', 0.8, 'Grey', 'Cotton', 'China');
INSERT INTO Product VALUES ('P40010', 'SKU1010', 'Bookshelf', 'StudyPlus', 'Furniture', 'None', 20, 'White', 'Plywood', 'Vietnam');

COMMIT;

-- ========== 3. WAREHOUSE ========= aina
INSERT INTO Warehouse VALUES ('WH1001', 'Z001', 'Shah Alam Main', 5000, 15000, 'Central', 4.8, 'MR.DIY Warehouse - Shah Alam HQ', TO_DATE('15/07/2023', 'DD/MM/YYYY'), 'Weekly');
INSERT INTO Warehouse VALUES ('WH1002', 'Z002', 'Batu Kawan', 3000, 10000, 'Regional', 4.5, 'MR.DIY Distribution Centre – Batu Kawan', TO_DATE('10/07/2023', 'DD/MM/YYYY'), 'Bi-Weekly');
INSERT INTO Warehouse VALUES ('WH1003', 'Z003', 'Nilai', 2500, 8000, 'Seasonal', 4.2, 'MR.DIY Storage Hub - Nilai', TO_DATE('05/07/2023', 'DD/MM/YYYY'), 'Monthly');
INSERT INTO Warehouse VALUES ('WH1004', 'Z004', 'Senai', 4000, 12000, 'Central', 4.7, 'MR.DIY Logistic Centre - Senai', TO_DATE('20/07/2023', 'DD/MM/YYYY'), 'Weekly');
INSERT INTO Warehouse VALUES ('WH1005', 'Z005', 'Bukit Raja', 1500, 5000, 'Express', 4.3, 'MR.DIY Inventory Hub - Bukit Raja', TO_DATE('12/07/2023', 'DD/MM/YYYY'), 'Daily');
INSERT INTO Warehouse VALUES ('WH1006', 'Z006', 'Port Klang', 6000, 20000, 'Import', 4.6, 'MR.DIY Fulfilment Centre - Port Klang', TO_DATE('18/07/2023', 'DD/MM/YYYY'), 'Weekly');
INSERT INTO Warehouse VALUES ('WH1007', 'Z007', 'Seremban', 2000, 7000, 'Regional', 4.1, 'MR.DIY Warehouse - Seremban', TO_DATE('08/07/2023', 'DD/MM/YYYY'), 'Bi-Weekly');
INSERT INTO Warehouse VALUES ('WH1008', 'Z008', 'Ipoh', 3500, 11000, 'Central', 4.4, 'MR.DIY Depot - Ipoh Main', TO_DATE('22/07/2023', 'DD/MM/YYYY'), 'Weekly');
INSERT INTO Warehouse VALUES ('WH1009', 'Z009', 'Kuantan', 1800, 6000, 'Seasonal', 4.0, 'MR.DIY Stockpoint - Kuantan', TO_DATE('14/07/2023', 'DD/MM/YYYY'), 'Monthly');
INSERT INTO Warehouse VALUES ('WH1010', 'Z010', 'Kulim', 2200, 7500, 'Express', 4.3, 'MR.DIY Transit Centre - Kulim', TO_DATE('25/07/2023', 'DD/MM/YYYY'), 'Daily');
COMMIT;


-- ========== 4. LOYALTYPROGRAM ========= Iskandar
INSERT INTO LoyaltyProgram VALUES ('LP10001', 'T1', 'Silver', 1.00, '12 months', TO_DATE('01/01/2023', 'DD/MM/YYYY'), '5% discount on birthdays', 0.00, 10.00, 'Min RM500 annual spend');
INSERT INTO LoyaltyProgram VALUES ('LP10002', 'T2', 'Gold', 1.50, '18 months', TO_DATE('01/01/2023', 'DD/MM/YYYY'), '10% discount + free delivery', 50.00, 15.00, 'Min RM2000 annual spend');
INSERT INTO LoyaltyProgram VALUES ('LP10003', 'T3', 'Platinum', 2.00, '24 months', TO_DATE('01/01/2023', 'DD/MM/YYYY'), '15% discount + VIP services', 100.00, 20.00, 'Min RM5000 annual spend');
INSERT INTO LoyaltyProgram VALUES ('LP10004', 'T4', 'Family', 1.20, '12 months', TO_DATE('15/03/2023', 'DD/MM/YYYY'), '7% discount for group purchases', 30.00, 12.00, 'Min 3 registered members');
INSERT INTO LoyaltyProgram VALUES ('LP10005', 'T5', 'Student', 1.00, '6 months', TO_DATE('01/06/2023', 'DD/MM/YYYY'), '5% discount + exam perks', 0.00, 10.00, 'Valid student ID');
INSERT INTO LoyaltyProgram VALUES ('LP10006', 'T6', 'Senior', 1.30, '12 months', TO_DATE('01/01/2023', 'DD/MM/YYYY'), '8% discount + health checks', 0.00, 13.00, 'Age 60+');
INSERT INTO LoyaltyProgram VALUES ('LP10007', 'T7', 'Corporate', 1.80, '24 months', TO_DATE('01/04/2023', 'DD/MM/YYYY'), '12% discount + B2B portal', 200.00, 18.00, 'Registered business');
INSERT INTO LoyaltyProgram VALUES ('LP10008', 'T8', 'Online', 1.20, '12 months', TO_DATE('01/07/2023', 'DD/MM/YYYY'), 'Extra 3% online discount', 0.00, 12.00, 'E-commerce only');
INSERT INTO LoyaltyProgram VALUES ('LP10009', 'T9', 'Premium', 2.50, '36 months', TO_DATE('01/01/2023', 'DD/MM/YYYY'), '20% discount + concierge', 300.00, 25.00, 'Min RM10000 spend');
INSERT INTO LoyaltyProgram VALUES ('LP10010', 'T10', 'Basic', 0.50, '6 months', TO_DATE('01/09/2023', 'DD/MM/YYYY'), '3% discount', 0.00, 5.00, 'No minimum');
COMMIT;


-- ========== 5. EMPLOYEE ========== joel
INSERT INTO Employee VALUES ('HH1001', 'aisyah@gmail.com', 'Store Manager', TO_DATE('05-03-2016', 'DD-MM-YYYY'), '6800', 'Day (8-6)', 'Full-Time', '18', 'Lim Kok Wing', 'Mid Valley Megamall', '1001', '950618-08-5543');
INSERT INTO Employee VALUES ('HH1002', 'kumar123@yahoo.com', 'HR Executive', TO_DATE('03-12-2021', 'DD-MM-YYYY'), '4500', 'Day (9-5)', 'Full-Time', '15', 'Puan Sarah Ismail', 'IOI City Mall', '1002', '871223-01-8765');
INSERT INTO Employee VALUES ('HH1003', 'xiaowen02@gmail.com', 'Senior Sales Associate', TO_DATE('12-07-2019', 'DD-MM-YYYY'), '3800', 'Rotating', 'Full-Time', '12', 'Encik Amirul', 'Sunway Pyramid', '1003', '021105-07-3210');
INSERT INTO Employee VALUES ('HH1004', 'keong88@gmail.com', 'Inventory Controller', TO_DATE('20-01-2020', 'DD-MM-YYYY'), '3500', 'Day (8-5)', 'Full-Time', '16', 'Mr. Rajan Pillay', 'Pavilion KL', '1004', '880430-14-1122');
INSERT INTO Employee VALUES ('HH1005', 'nurul99@gmail.com', 'Visual Merchandiser', TO_DATE('15-11-2018', 'DD-MM-YYYY'), '3200', 'Day (10-7)', 'Contract', '8', 'Ms. Priya Devi', '1 Utama', '1005', '990724-05-9988');
INSERT INTO Employee VALUES ('HH1006', 'hafiz93@outlook.com', 'Customer Service Leader', TO_DATE('08-06-2021', 'DD-MM-YYYY'), '3600', 'Rotating', 'Full-Time', '10', 'Madam Lee Su Lin', 'The Gardens Mall', '1006', '930310-04-3344');
INSERT INTO Employee VALUES ('HH1007', 'meiling0715@yahoo.com', 'Cashier Supervisor', TO_DATE('30-03-2022', 'DD-MM-YYYY'), '2800', 'Evening (12-9)', 'Part-Time', '6', 'Mr. Ganesh Kumar', 'AEON Bukit Tinggi', '1007', '980715-07-6677');
INSERT INTO Employee VALUES ('HH1008', 'saravanan89@gmail.com', 'Procurement Officer', TO_DATE('14-09-2020', 'DD-MM-YYYY'), '4200', 'Day (9-6)', 'Full-Time', '14', 'Encik Hafiz Rahman', 'Setia City Mall', '1008', '891201-09-7788');
INSERT INTO Employee VALUES ('HH1009', 'siti02@gmail.com', 'Warehouse Assistant', TO_DATE('22-04-2019', 'DD-MM-YYYY'), '2500', 'Night (2-11)', 'Part-Time', '4', 'Mr. Tan Chin Aik', 'Shah Alam DC', '1009', '021212-02-8899');
INSERT INTO Employee VALUES ('HH1010', 'hong940506@gmail.com', 'Marketing Coordinator', TO_DATE('11-08-2022', 'DD-MM-YYYY'), '4000', 'Day (9-6)', 'Full-Time', '12', 'Puan Azlina Ariff', 'Digital HQ (Cyberjaya)', '1010', '940506-14-1122');

COMMIT;



-- ========== 6. CUSTOMER ========== joel
INSERT INTO Customer VALUES ('C10001', 'LC80001', 'ali.ahmad@gmail.com', TO_DATE('01-01-1990', 'DD-MM-YYYY'), 'No. 12, Jalan Bunga Raya 3, Taman Indah, 43000 Kajang, Selangor', 'M', 'Gold', 'Active', TO_DATE('12-06-2023', 'DD-MM-YYYY'), 'Mid Valley', '1011', '900101-14-5678', 'LP10001', 'T1');
INSERT INTO Customer VALUES ('C10002', 'LC80002', 'limweichuan@gmail.com', TO_DATE('02-02-1988', 'DD-MM-YYYY'), 'No. 55, Lorong Seri Aman 5, Taman Seri Aman, 11600 Jelutong, Pulau Pinang', 'M', 'Platinum', 'Active', TO_DATE('05-07-2023', 'DD-MM-YYYY'), '1 Utama', '1012', '880202-08-4321', 'LP10002', 'T2');
INSERT INTO Customer VALUES ('C10003', 'LC80003', 'aishah0303@gmail.com', TO_DATE('03-03-1992', 'DD-MM-YYYY'), 'No. 89, Jalan Kenari 2, Bandar Puteri, 47100 Puchong, Selangor', 'F', 'Silver', 'Inactive', TO_DATE('15-01-2023', 'DD-MM-YYYY'), 'Sunway Pyramid', '1013', '920303-10-1122', 'LP10003', 'T3');
INSERT INTO Customer VALUES ('C10004', 'LC80004', 'krishnan@gmail.com', TO_DATE('24-12-1985', 'DD-MM-YYYY'), 'No. 24, Jalan Kempas 8, Taman Kempas Utama, 81200 Johor Bahru, Johor', 'M', 'Gold', 'Active', TO_DATE('22-07-2023', 'DD-MM-YYYY'), 'IOI Mall', '1014', '851224-07-3344', 'LP10004', 'T4');
INSERT INTO Customer VALUES ('C10005', 'LC80005', 'nurulizatt@gmail.com', TO_DATE('05-05-1995', 'DD-MM-YYYY'), 'No. 31, Lorong Damai 9, Taman Damai, 93300 Kuching, Sarawak', 'F', 'Bronze', 'Active', TO_DATE('08-07-2023', 'DD-MM-YYYY'), 'Pavilion', '1015', '950505-13-5566', 'LP10005', 'T5');
INSERT INTO Customer VALUES ('C10006', 'LC80006', 'meiling@gmail.com', TO_DATE('06-06-1987', 'DD-MM-YYYY'), 'No. 7, Jalan Merpati 6, Taman Sri Bayu, 16100 Kota Bharu, Kelantan', 'F', 'Platinum', 'Active', TO_DATE('29-06-2023', 'DD-MM-YYYY'), 'The Gardens', '1016', '870606-05-7788', 'LP10006', 'T6');
INSERT INTO Customer VALUES ('C10007', 'LC80007', 'suresh931010@yahoo.com', TO_DATE('10-10-1993', 'DD-MM-YYYY'), 'No. 103, Jalan Setia Indah U13/9, Setia Alam, 40170 Shah Alam, Selangor', 'M', 'Silver', 'Inactive', TO_DATE('14-03-2023', 'DD-MM-YYYY'), 'AEON Maluri', '1017', '931010-02-9900', 'LP10007', 'T7');
INSERT INTO Customer VALUES ('C10008', 'LC80008', 'karyee@gmail.com', TO_DATE('14-04-1984', 'DD-MM-YYYY'), 'No. 46, Jalan Bukit Sekilau, Taman Bukit, 25200 Kuantan, Pahang', 'F', 'Gold', 'Active', TO_DATE('01-07-2023', 'DD-MM-YYYY'), 'IOI City Mall', '1018', '840414-03-1133', 'LP10008', 'T8');
INSERT INTO Customer VALUES ('C10009', 'LC80009', 'hakim@gmail.com', TO_DATE('09-09-1996', 'DD-MM-YYYY'), 'No. 18, Jalan Tun Sardon, Taman Desa Damai, 11000 Balik Pulau, Pulau Pinang', 'M', 'Bronze', 'Active', TO_DATE('17-06-2023', 'DD-MM-YYYY'), 'Setia City Mall', '1019', '960909-01-2244', 'LP10009', 'T9');
INSERT INTO Customer VALUES ('C10010', 'LC80010', 'aina@gmail.com', TO_DATE('12-12-1889', 'DD-MM-YYYY'), 'No. 76, Lorong Aman 3, Taman Aman, 87000 Labuan, Wilayah Persekutuan Labuan', 'F', 'Silver', 'Active', TO_DATE('05-05-2023', 'DD-MM-YYYY'), 'AEON Shah Alam', '1020', '891212-09-7788', 'LP10010', 'T10');

COMMIT;




-- ========== 7. SUPPLIER ========== aina
INSERT INTO Supplier VALUES ('S20001', 'BL2023001', 'HomeStyle Sdn Bhd', 200, 4.7, 'Manufacturer', 'Selangor', 'Nationwide', 8, TO_DATE('31/12/2025', 'DD/MM/YYYY'), '1021', '850818-11-4455', 'HH1007', 'meiling0715@yahoo.com');
INSERT INTO Supplier VALUES ('S20002', 'BL2023002', 'Luxe Furnishings', 220, 4.5, 'Wholesaler', 'KL', 'Central', 5, TO_DATE('30/06/2024', 'DD/MM/YYYY'), '1022', '830707-06-6677', 'HH1008', 'saravanan89@gmail.com');
INSERT INTO Supplier VALUES ('S20003', 'BL2023003', 'Textile Haven', 250, 4.2, 'Manufacturer', 'Penang', 'Northern', 12, TO_DATE('31/12/2026', 'DD/MM/YYYY'), '1023', '910111-12-8899', 'HH1009', 'siti02@gmail.com');
INSERT INTO Supplier VALUES ('S20004', 'BL2023004', 'Lighting Solutions', 240, 4.8, 'Distributor', 'Johor', 'Southern', 7, TO_DATE('30/09/2024', 'DD/MM/YYYY'), '1024', '900818-08-1234', 'HH1010', 'hong940506@gmail.com');
INSERT INTO Supplier VALUES ('S20005', 'BL2023005', 'Timberland', 210, 4.3, 'Manufacturer', 'Pahang', 'East Coast', 15, TO_DATE('31/03/2025', 'DD/MM/YYYY'), '1025', '940404-04-5566', 'HH1007', 'meiling0715@yahoo.com');
INSERT INTO Supplier VALUES ('S20006', 'BL2023006', 'Ceramic Arts', 230, 4.6, 'Importer', 'KL', 'Nationwide', 6, TO_DATE('31/12/2023', 'DD/MM/YYYY'), '1026', '880909-10-7766', 'HH1008', 'saravanan89@gmail.com');
INSERT INTO Supplier VALUES ('S20007', 'BL2023007', 'Plasticware Co.', 300, 4.0, 'Manufacturer', 'Perak', 'Northern', 9, TO_DATE('30/06/2025', 'DD/MM/YYYY'), '1027', '920202-02-3344', 'HH1009', 'siti02@gmail.com');
INSERT INTO Supplier VALUES ('S20008', 'BL2023008', 'MetalWorks', 260, 4.4, 'Wholesaler', 'Selangor', 'Central', 11, TO_DATE('31/12/2024', 'DD/MM/YYYY'), '1028', '860101-13-8899', 'HH1010', 'hong940506@gmail.com');
INSERT INTO Supplier VALUES ('S20009', 'BL2023009', 'Cushion Comfort', 270, 4.9, 'Manufacturer', 'Johor', 'Southern', 5, TO_DATE('30/09/2023', 'DD/MM/YYYY'), '1029', '980707-12-2211', 'HH1007', 'meiling0715@yahoo.com');
INSERT INTO Supplier VALUES ('S20010', 'BL2023010', 'Glass Elegance', 200, 4.1, 'Artisan', 'Penang', 'Northern', 8, TO_DATE('31/03/2024', 'DD/MM/YYYY'), '1030', '970505-05-9900', 'HH1008', 'saravanan89@gmail.com');
COMMIT;


-- ========== 8. BRANCH ========== joel
INSERT INTO Branch VALUES ('B30001', 'MY-01', 'Mid Valley', 'Level 3, Mid Valley', TO_DATE('15-03-2010', 'DD-MM-YYYY'), 'Ahmad Faisal', 'Large', 25, 250000, 'High', 'LP10001', 'T1', 'WH1001', 'Z001');
INSERT INTO Branch VALUES ('B30002', 'MY-02', 'Sunway Pyramid', 'LG Floor', TO_DATE('22-08-2015', 'DD-MM-YYYY'), 'Lee Mei Ling', 'Medium', 18, 180000, 'Medium', 'LP10002', 'T2', 'WH1002', 'Z002');
INSERT INTO Branch VALUES ('B30003', 'MY-03', '1 Utama', 'Level 2, New Wing', TO_DATE('10-01-2018', 'DD-MM-YYYY'), 'Rajesh Kumar', 'Large', 30, 300000, 'High', 'LP10003', 'T3', 'WH1003', 'Z003');
INSERT INTO Branch VALUES ('B30004', 'MY-04', 'Pavilion KL', 'Concourse Level', TO_DATE('05-12-2012', 'DD-MM-YYYY'), 'Sarah Tan', 'Large', 28, 280000, 'High', 'LP10004', 'T4', 'WH1004', 'Z004');
INSERT INTO Branch VALUES ('B30005', 'MY-05', 'IOI City Mall', 'Ground Floor', TO_DATE('20-06-2019', 'DD-MM-YYYY'), 'Amir Hakim', 'Medium', 20, 150000, 'Medium', 'LP10005', 'T5', 'WH1005', 'Z005');
INSERT INTO Branch VALUES ('B30006', 'MY-06', 'The Gardens', 'Level 1', TO_DATE('15-09-2017', 'DD-MM-YYYY'), 'Priya Devi', 'Medium', 22, 200000, 'Medium', 'LP10006', 'T6', 'WH1006', 'Z006');
INSERT INTO Branch VALUES ('B30007', 'MY-07', 'AEON Bukit Tinggi', 'Main Atrium', TO_DATE('03-04-2016', 'DD-MM-YYYY'), 'Lim Chong', 'Small', 15, 120000, 'Low', 'LP10007', 'T7', 'WH1007', 'Z007');
INSERT INTO Branch VALUES ('B30008', 'MY-08', 'Setia City Mall', 'Upper Ground', TO_DATE('08-11-2020', 'DD-MM-YYYY'), 'Wong Kee', 'Medium', 19, 170000, 'Medium', 'LP10008', 'T8', 'WH1008', 'Z008');
INSERT INTO Branch VALUES ('B30009', 'MY-09', 'AEON Maluri', 'Level 3', TO_DATE('25-02-2014', 'DD-MM-YYYY'), 'Fatimah Zainal', 'Small', 12, 100000, 'Low', 'LP10009', 'T9', 'WH1009', 'Z009');
INSERT INTO Branch VALUES ('B30010', 'MY-10', 'IOI Mall Puchong', 'LG Floor', TO_DATE('30-07-2018', 'DD-MM-YYYY'), 'Tan Wei Jie', 'Medium', 21, 190000, 'Medium', 'LP10010', 'T10', 'WH1010', 'Z010');

COMMIT;


-- ========== 9. MAINTENANCE ========= rik
INSERT INTO Maintenance VALUES ('MT10001', 'WO2023-001', 'Preventive', TO_DATE('05/07/2023', 'DD/MM/YYYY'), 'EQP-FORK01', 'Ali bin Ahmad', 350.00, '2 hours', 'Routine check', 'Completed', 'B30001', 'MY-01');
INSERT INTO Maintenance VALUES ('MT10002', 'WO2023-002', 'Corrective', TO_DATE('08/07/2023', 'DD/MM/YYYY'), 'EQP-CONV02', 'Tan Wei Loon', 550.00, '8 hours', 'Belt replacement', 'Completed', 'B30002', 'MY-02');
INSERT INTO Maintenance VALUES ('MT10003', 'WO2023-003', 'Emergency', TO_DATE('12/07/2023', 'DD/MM/YYYY'), 'EQP-AC01', 'Rajesh a/l Kumar', 800.00, '24 hours', 'Compressor failure', 'In Progress', 'B30003', 'MY-03');
INSERT INTO Maintenance VALUES ('MT10004', 'WO2023-004', 'Preventive', TO_DATE('15/07/2023', 'DD/MM/YYYY'), 'EQP-SHELF03', 'Lim Mei Ling', 420.00, '3 hours', 'Structural inspection', 'Completed', 'B30004', 'MY-04');
INSERT INTO Maintenance VALUES ('MT10005', 'WO2023-005', 'Corrective', TO_DATE('18/07/2023', 'DD/MM/YYYY'), 'EQP-LIFT01', 'Ahmad Faisal', 1200.00, '48 hours', 'Hydraulic leak', 'Pending', 'B30005', 'MY-05');
INSERT INTO Maintenance VALUES ('MT10006', 'WO2023-006', 'Calibration', TO_DATE('20/07/2023', 'DD/MM/YYYY'), 'EQP-SCALE05', 'Wong Keat Soon', 280.00, '1 hour', 'Scale accuracy', 'Completed', 'B30006', 'MY-06');
INSERT INTO Maintenance VALUES ('MT10007', 'WO2023-007', 'Emergency', TO_DATE('22/07/2023', 'DD/MM/YYYY'), 'EQP-GEN01', 'Siti Norhaliza', 1500.00, '36 hours', 'Generator breakdown', 'Completed', 'B30007', 'MY-07');
INSERT INTO Maintenance VALUES ('MT10008', 'WO2023-008', 'Preventive', TO_DATE('25/07/2023', 'DD/MM/YYYY'), 'EQP-COMP01', 'Lee Chong Wei', 380.00, '2 hours', 'System diagnostics', 'Completed', 'B30008', 'MY-08');
INSERT INTO Maintenance VALUES ('MT10009', 'WO2023-009', 'Corrective', TO_DATE('28/07/2023', 'DD/MM/YYYY'), 'EQP-DOCK02', 'Muthu a/l Palani', 670.00, '12 hours', 'Door mechanism', 'In Progress', 'B30009', 'MY-09');
INSERT INTO Maintenance VALUES ('MT10010', 'WO2023-010', 'Upgrade', TO_DATE('30/07/2023', 'DD/MM/YYYY'), 'EQP-SCAN03', 'Ng Pei Ling', 2300.00, '72 hours', 'Barcode system upgrade', 'Completed', 'B30010', 'MY-10');

COMMIT;


-- ========== 10. TRAINING ========= rik
INSERT INTO Training VALUES ('TR10001', 'T2023-001', 'Inventory Management', 'Ahmad Daniel Bin Ahmad Ikram', TO_DATE('05/07/2023', 'DD/MM/YYYY'), TO_DATE('06/07/2023', 'DD/MM/YYYY'), 'Physical', 'Yes', 15, '95% pass rate', 'B30001', 'MY-01');

INSERT INTO Training VALUES ('TR10002', 'T2023-002', 'Customer Service', 'Muhammad Amirul Bin Abdul Rahman', TO_DATE('08/07/2023', 'DD/MM/YYYY'), TO_DATE('08/07/2023', 'DD/MM/YYYY'), 'Virtual', 'No', 22, '88% satisfaction', 'B30002', 'MY-02');

INSERT INTO Training VALUES ('TR10003', 'T2023-003', 'POS System', 'Zhang Hua', TO_DATE('12/07/2023', 'DD/MM/YYYY'), TO_DATE('13/07/2023', 'DD/MM/YYYY'), 'Hybrid', 'Yes', 30, '100% certified', 'B30003', 'MY-03');

INSERT INTO Training VALUES ('TR10004', 'T2023-004', 'Safety', 'Anand Kapil A/L Krishan Divekar', TO_DATE('15/07/2023', 'DD/MM/YYYY'), TO_DATE('15/07/2023', 'DD/MM/YYYY'), 'Physical', 'Yes', 18, '92% pass rate', 'B30004', 'MY-04');

INSERT INTO Training VALUES ('TR10005', 'T2023-005', 'Sales Techniques', 'Chen Tao', TO_DATE('18/07/2023', 'DD/MM/YYYY'), TO_DATE('19/07/2023', 'DD/MM/YYYY'), 'Virtual', 'No', 25, '85% satisfaction', 'B30005', 'MY-05');

INSERT INTO Training VALUES ('TR10006', 'T2023-006', 'Leadership', 'Muhammad Alif Bin Saifulnizam', TO_DATE('20/07/2023', 'DD/MM/YYYY'), TO_DATE('21/07/2023', 'DD/MM/YYYY'), 'Physical', 'Yes', 12, '100% certified', 'B30006', 'MY-06');

INSERT INTO Training VALUES ('TR10007', 'T2023-007', 'Product Knowledge', 'Zhou Jing', TO_DATE('22/07/2023', 'DD/MM/YYYY'), TO_DATE('22/07/2023', 'DD/MM/YYYY'), 'Hybrid', 'No', 28, '90% satisfaction', 'B30007', 'MY-07');

INSERT INTO Training VALUES ('TR10008', 'T2023-008', 'Data Security', 'Megat Daniel Bin Zulkifli', TO_DATE('25/07/2023', 'DD/MM/YYYY'), TO_DATE('26/07/2023', 'DD/MM/YYYY'), 'Virtual', 'Yes', 20, '95% pass rate', 'B30008', 'MY-08');

INSERT INTO Training VALUES ('TR10009', 'T2023-009', 'First Aid', 'Nik Muhammad Hafiz Bin Nik Abdul Aziz', TO_DATE('28/07/2023', 'DD/MM/YYYY'), TO_DATE('28/07/2023', 'DD/MM/YYYY'), 'Physical', 'Yes', 15, '100% certified', 'B30009', 'MY-09');

INSERT INTO Training VALUES ('TR10010', 'T2023-010', 'Diversity', 'Sham Kumar A/L Arumugam', TO_DATE('30/07/2023', 'DD/MM/YYYY'), TO_DATE('30/07/2023', 'DD/MM/YYYY'), 'Virtual', 'No', 35, '82% satisfaction', 'B30010', 'MY-10');

COMMIT;


-- ========== 11. ITSYSTEM ========= Iskandar
INSERT INTO ITSystem VALUES ('IT10001', 'SRV-MY-01', 'RetailPOS', 'v4.2', TO_DATE('15/03/2020', 'DD/MM/YYYY'), 'RetailTech', 'Weekly', 'Transaction', 'Production', '00:00-02:00', 'B30001', 'MY-01');
INSERT INTO ITSystem VALUES ('IT10002', 'SRV-MY-02', 'InventoryMG', 'v3.5', TO_DATE('22/08/2021', 'DD/MM/YYYY'), 'StoreSoft', 'Bi-Weekly', 'Database', 'Production', '02:00-03:00', 'B30002', 'MY-02');
INSERT INTO ITSystem VALUES ('IT10003', 'SRV-MY-03', 'HRMS', 'v2.8', TO_DATE('10/06/2019', 'DD/MM/YYYY'), 'PeopleFirst', 'Monthly', 'Management', 'Production', '03:00-04:00', 'B30003', 'MY-03');
INSERT INTO ITSystem VALUES ('IT10004', 'SRV-MY-04', 'E-Commerce', 'v5.1', TO_DATE('05/01/2022', 'DD/MM/YYYY'), 'WebSolutions', 'Daily', 'Web', 'Production', '01:00-02:30', 'B30004', 'MY-04');
INSERT INTO ITSystem VALUES ('IT10005', 'SRV-MY-05', 'CRM', 'v3.2', TO_DATE('18/11/2020', 'DD/MM/YYYY'), 'SalesForce', 'Quarterly', 'Customer', 'Production', '00:30-01:30', 'B30005', 'MY-05');
INSERT INTO ITSystem VALUES ('IT10006', 'SRV-MY-06', 'Accounting', 'v6.0', TO_DATE('30/04/2021', 'DD/MM/YYYY'), 'FinSys', 'Monthly', 'Financial', 'Production', '04:00-05:00', 'B30006', 'MY-06');
INSERT INTO ITSystem VALUES ('IT10007', 'SRV-MY-07', 'WarehouseWMS', 'v2.3', TO_DATE('12/07/2022', 'DD/MM/YYYY'), 'LogiTech', 'Bi-Monthly', 'Logistics', 'Staging', '23:00-00:00', 'B30007', 'MY-07');
INSERT INTO ITSystem VALUES ('IT10008', 'SRV-MY-08', 'Loyalty', 'v1.9', TO_DATE('25/09/2021', 'DD/MM/YYYY'), 'RewardPlus', 'Weekly', 'Marketing', 'Production', '00:00-01:00', 'B30008', 'MY-08');
INSERT INTO ITSystem VALUES ('IT10009', 'SRV-MY-09', 'BI', 'v4.5', TO_DATE('08/03/2023', 'DD/MM/YYYY'), 'DataInsight', 'Monthly', 'Analytics', 'Testing', '05:00-06:00', 'B30009', 'MY-09');
INSERT INTO ITSystem VALUES ('IT10010', 'SRV-MY-10', 'Security', 'v3.0', TO_DATE('14/12/2022', 'DD/MM/YYYY'), 'CyberGuard', 'Daily', 'Security', 'Production', '06:00-07:00', 'B30010', 'MY-10'); 
COMMIT;


-- ========== 12. INVENTORY ========== aina
INSERT INTO Inventory VALUES ('INV50001','WH-A12',50,65,100,14,2,5,'In Stock',TO_DATE('15/07/2023','DD/MM/YYYY'),'B30001','MY-01','P40001','SKU1001','WH1001','Z001','IT10001','SRV-MY-01');
INSERT INTO Inventory VALUES ('INV50002','WH-B07',30,12,50,7,0,3,'Low Stock',TO_DATE('16/07/2023','DD/MM/YYYY'),'B30002','MY-02','P40002','SKU1002','WH1002','Z002','IT10002','SRV-MY-02');
INSERT INTO Inventory VALUES ('INV50003','WH-C03',100,45,150,30,5,8,'In Stock',TO_DATE('14/07/2023','DD/MM/YYYY'),'B30003','MY-03','P40003','SKU1003','WH1003','Z003','IT10003','SRV-MY-03');
INSERT INTO Inventory VALUES ('INV50004','WH-D15',20,18,40,7,1,2,'Low Stock',TO_DATE('17/07/2023','DD/MM/YYYY'),'B30004','MY-04','P40004','SKU1004','WH1004','Z004','IT10004','SRV-MY-04');
INSERT INTO Inventory VALUES ('INV50005','WH-A08',75,110,200,14,0,15,'Overstock',TO_DATE('15/07/2023','DD/MM/YYYY'),'B30005','MY-05','P40005','SKU1005','WH1005','Z005','IT10005','SRV-MY-05');
INSERT INTO Inventory VALUES ('INV50006','WH-E22',40,25,80,7,3,4,'In Stock',TO_DATE('16/07/2023','DD/MM/YYYY'),'B30006','MY-06','P40006','SKU1006','WH1006','Z006','IT10006','SRV-MY-06');
INSERT INTO Inventory VALUES ('INV50007','WH-F09',60,32,100,14,2,6,'In Stock',TO_DATE('14/07/2023','DD/MM/YYYY'),'B30007','MY-07','P40007','SKU1007','WH1007','Z007','IT10007','SRV-MY-07');
INSERT INTO Inventory VALUES ('INV50008','WH-G14',25,5,50,7,0,0,'Low Stock',TO_DATE('17/07/2023','DD/MM/YYYY'),'B30008','MY-08','P40008','SKU1008','WH1008','Z008','IT10008','SRV-MY-08');
INSERT INTO Inventory VALUES ('INV50009','WH-H05',80,95,150,30,1,10,'In Stock',TO_DATE('15/07/2023','DD/MM/YYYY'),'B30009','MY-09','P40009','SKU1009','WH1009','Z009','IT10009','SRV-MY-09');
INSERT INTO Inventory VALUES ('INV50010','WH-J18',35,40,70,14,0,7,'In Stock',TO_DATE('16/07/2023','DD/MM/YYYY'),'B30010','MY-10','P40010','SKU1010','WH1010','Z010','IT10010','SRV-MY-10');

COMMIT;


-- ========== 13. PROCUREMENT ========= iskandar
INSERT INTO Procurement VALUES ('PROC10001', 'OC2023-001', TO_DATE('05/07/2023', 'DD/MM/YYYY'), 'Approved', 200, TO_DATE('15/07/2023', 'DD/MM/YYYY'), 4.5, 'QT23001', 8500.00, 'Lim Wei Shen', 'HH1001', 'aisyah@gmail.com', 'S20001', 'BL2023001', 'B30001', 'MY-01', 'MT10001', 'WO2023-001');

INSERT INTO Procurement VALUES ('PROC10002', 'OC2023-002', TO_DATE('08/07/2023', 'DD/MM/YYYY'), 'Pending', 150, TO_DATE('20/07/2023', 'DD/MM/YYYY'), 4.2, 'QT23002', 6200.00, 'Ahmad Faisal', 'HH1002', 'kumar123@yahoo.com', 'S20002', 'BL2023002', 'B30002', 'MY-02', 'MT10002', 'WO2023-002');

INSERT INTO Procurement VALUES ('PROC10003', 'OC2023-003', TO_DATE('10/07/2023', 'DD/MM/YYYY'), 'Approved', 75, TO_DATE('18/07/2023', 'DD/MM/YYYY'), 4.7, 'QT23003', 3750.00, 'Priya Devi', 'HH1003', 'xiaowen02@gmail.com', 'S20003', 'BL2023003', 'B30003', 'MY-03', 'MT10003', 'WO2023-003');

INSERT INTO Procurement VALUES ('PROC10004', 'OC2023-004', TO_DATE('12/07/2023', 'DD/MM/YYYY'), 'Rejected', 300, TO_DATE('25/07/2023', 'DD/MM/YYYY'), 3.8, 'QT23004', 12000.00, 'Tan Chong Lee', 'HH1004', 'keong88@gmail.com', 'S20004', 'BL2023004', 'B30004', 'MY-04', 'MT10004', 'WO2023-004');

INSERT INTO Procurement VALUES ('PROC10005', 'OC2023-005', TO_DATE('15/07/2023', 'DD/MM/YYYY'), 'Approved', 120, TO_DATE('22/07/2023', 'DD/MM/YYYY'), 4.3, 'QT23005', 5400.00, 'Sarah Ismail', 'HH1005', 'nurul99@gmail.com', 'S20005', 'BL2023005', 'B30005', 'MY-05', 'MT10005', 'WO2023-005');

INSERT INTO Procurement VALUES ('PROC10006', 'OC2023-006', TO_DATE('18/07/2023', 'DD/MM/YYYY'), 'Pending', 250, TO_DATE('30/07/2023', 'DD/MM/YYYY'), 4.1, 'QT23006', 9375.00, 'Raj Kumar', 'HH1006', 'hafiz93@outlook.com', 'S20006', 'BL2023006', 'B30006', 'MY-06', 'MT10006', 'WO2023-006');

INSERT INTO Procurement VALUES ('PROC10007', 'OC2023-007', TO_DATE('20/07/2023', 'DD/MM/YYYY'), 'Approved', 80, TO_DATE('25/07/2023', 'DD/MM/YYYY'), 4.6, 'QT23007', 3200.00, 'Wong Mei Ling', 'HH1007', 'meiling0715@yahoo.com', 'S20007', 'BL2023007', 'B30007', 'MY-07', 'MT10007', 'WO2023-007');

INSERT INTO Procurement VALUES ('PROC10008', 'OC2023-008', TO_DATE('22/07/2023', 'DD/MM/YYYY'), 'Approved', 180, TO_DATE('28/07/2023', 'DD/MM/YYYY'), 4.4, 'QT23008', 7020.00, 'Amir Hakim', 'HH1008', 'saravanan89@gmail.com', 'S20008', 'BL2023008', 'B30008', 'MY-08', 'MT10008', 'WO2023-008');

INSERT INTO Procurement VALUES ('PROC10009', 'OC2023-009', TO_DATE('25/07/2023', 'DD/MM/YYYY'), 'Pending', 90, TO_DATE('05/08/2023', 'DD/MM/YYYY'), 4.0, 'QT23009', 3150.00, 'Fatimah Zainal', 'HH1009', 'siti02@gmail.com', 'S20009', 'BL2023009', 'B30009', 'MY-09', 'MT10009', 'WO2023-009');

INSERT INTO Procurement VALUES ('PROC10010', 'OC2023-010', TO_DATE('28/07/2023', 'DD/MM/YYYY'), 'Approved', 300, TO_DATE('10/08/2023', 'DD/MM/YYYY'), 4.5, 'QT23010', 10500.00, 'Lee Xin Yi', 'HH1010', 'hong940506@gmail.com', 'S20010', 'BL2023010', 'B30010', 'MY-10', 'MT10010', 'WO2023-010');

COMMIT;




-- ========== 14. PROMOTION ========== Iskandar
INSERT INTO Promotion VALUES ('RAYA2023', 'PROMO001', 'Raya Mega Sale', 20.00, 'Seasonal', TO_DATE('01/06/2023', 'DD/MM/YYYY'), TO_DATE('30/06/2023', 'DD/MM/YYYY'), 200.00, 'Furniture', 'Unlimited', 'HH1001', 'aisyah@gmail.com', 'LP10001', 'T1');
INSERT INTO Promotion VALUES ('MERDEKA23', 'PROMO002', 'National Day Special', 15.00, 'Holiday', TO_DATE('15/08/2023', 'DD/MM/YYYY'), TO_DATE('31/08/2023', 'DD/MM/YYYY'), 150.00, 'All', '1000', 'HH1002', 'kumar123@yahoo.com', 'LP10002', 'T2');
INSERT INTO Promotion VALUES ('MEMBERSHIP', 'PROMO003', 'Loyalty Discount', 10.00, 'Membership', TO_DATE('01/01/2023', 'DD/MM/YYYY'), TO_DATE('31/12/2023', 'DD/MM/YYYY'), 100.00, 'All', 'Unlimited', 'HH1003', 'xiaowen02@gmail.com', 'LP10003', 'T3');
INSERT INTO Promotion VALUES ('CLEARANCE', 'PROMO004', 'Year-End Clearance', 30.00, 'Clearance', TO_DATE('15/11/2023', 'DD/MM/YYYY'), TO_DATE('31/12/2023', 'DD/MM/YYYY'), 300.00, 'Decor', '500', 'HH1004', 'keong88@gmail.com', 'LP10004', 'T4');
INSERT INTO Promotion VALUES ('NEWSTORE', 'PROMO005', 'Grand Opening', 25.00, 'Opening', TO_DATE('01/07/2023', 'DD/MM/YYYY'), TO_DATE('15/07/2023', 'DD/MM/YYYY'), 0.00, 'All', 'Unlimited', 'HH1005', 'nurul99@gmail.com', 'LP10005', 'T5');
INSERT INTO Promotion VALUES ('WEEKEND', 'PROMO006', 'Weekend Special', 15.00, 'Recurring', TO_DATE('13/05/2023', 'DD/MM/YYYY'), TO_DATE('14/05/2023', 'DD/MM/YYYY'), 250.00, 'Bedding', 'Unlimited', 'HH1006', 'hafiz93@outlook.com', 'LP10006', 'T6');
INSERT INTO Promotion VALUES ('BULK2023', 'PROMO007', 'Bulk Purchase', 75.00, 'Volume', TO_DATE('01/09/2023', 'DD/MM/YYYY'), TO_DATE('30/09/2023', 'DD/MM/YYYY'), 500.00, 'All', '200', 'HH1007', 'meiling0715@yahoo.com', 'LP10007', 'T7');
INSERT INTO Promotion VALUES ('STUDENT', 'PROMO008', 'Student Discount', 10.00, 'Special', TO_DATE('01/03/2023', 'DD/MM/YYYY'), TO_DATE('31/12/2023', 'DD/MM/YYYY'), 50.00, 'All', 'Unlimited', 'HH1008', 'saravanan89@gmail.com', 'LP10008', 'T8');
INSERT INTO Promotion VALUES ('SENIOR', 'PROMO009', 'Senior Citizen', 15.00, 'Special', TO_DATE('01/01/2023', 'DD/MM/YYYY'), TO_DATE('31/12/2023', 'DD/MM/YYYY'), 100.00, 'All', 'Unlimited', 'HH1009', 'siti02@gmail.com', 'LP10009', 'T9');
INSERT INTO Promotion VALUES ('FLASHSALE', 'PROMO010', 'Midnight Madness', 40.00, 'Flash', TO_DATE('15/12/2023', 'DD/MM/YYYY'), TO_DATE('15/12/2023', 'DD/MM/YYYY'), 300.00, 'Lighting', '50', 'HH1010', 'hong940506@gmail.com', 'LP10010', 'T10');
COMMIT;


-- ========== 15. SALESTRANSACTION ========== iskandar
INSERT INTO SalesTransaction VALUES ('T60001', 'INV23001', TO_DATE('12/07/2023', 'DD/MM/YYYY'), 'Credit Card', TO_TIMESTAMP('10:15:23', 'HH24:MI:SS'), 589.90, 50.00, 35.39, 3, 'In-Store', 'HH1001', 'aisyah@gmail.com', 'B30001', 'MY-01', 'LP10001', 'T1', 'RAYA2023', 'PROMO001', 'IT10001', 'SRV-MY-01');
INSERT INTO SalesTransaction VALUES ('T60002', 'INV23002', TO_DATE('13/07/2023', 'DD/MM/YYYY'), 'E-Wallet', TO_TIMESTAMP('12:42:56', 'HH24:MI:SS'), 229.50, 0.00, 13.77, 2, 'Online', 'HH1002', 'kumar123@yahoo.com', 'B30002', 'MY-02', 'LP10002', 'T2', 'MERDEKA23', 'PROMO002', 'IT10002', 'SRV-MY-02');
INSERT INTO SalesTransaction VALUES ('T60003', 'INV23003', TO_DATE('14/07/2023', 'DD/MM/YYYY'), 'Cash', TO_TIMESTAMP('14:03:11', 'HH24:MI:SS'), 1250.00, 75.00, 75.00, 5, 'In-Store', 'HH1003', 'xiaowen02@gmail.com', 'B30003', 'MY-03', 'LP10003', 'T3', 'MEMBERSHIP', 'PROMO003', 'IT10003', 'SRV-MY-03');
INSERT INTO SalesTransaction VALUES ('T60004', 'INV23004', TO_DATE('15/07/2023', 'DD/MM/YYYY'), 'Debit Card', TO_TIMESTAMP('15:28:34', 'HH24:MI:SS'), 429.90, 30.00, 25.79, 4, 'Online', 'HH1004', 'keong88@gmail.com', 'B30004', 'MY-04', 'LP10004', 'T4', 'CLEARANCE', 'PROMO004', 'IT10004', 'SRV-MY-04');
INSERT INTO SalesTransaction VALUES ('T60005', 'INV23005', TO_DATE('16/07/2023', 'DD/MM/YYYY'), 'Bank Transfer', TO_TIMESTAMP('16:45:07', 'HH24:MI:SS'), 899.00, 100.00, 53.94, 3, 'Phone Order', 'HH1005', 'nurul99@gmail.com', 'B30005', 'MY-05', 'LP10005', 'T5', 'NEWSTORE', 'PROMO005', 'IT10005', 'SRV-MY-05');
INSERT INTO SalesTransaction VALUES ('T60006', 'INV23006', TO_DATE('17/07/2023', 'DD/MM/YYYY'), 'GrabPay', TO_TIMESTAMP('18:02:59', 'HH24:MI:SS'), 159.90, 0.00, 9.59, 1, 'Online', 'HH1006', 'hafiz93@outlook.com', 'B30006', 'MY-06', 'LP10006', 'T6', 'WEEKEND', 'PROMO006', 'IT10006', 'SRV-MY-06');
INSERT INTO SalesTransaction VALUES ('T60007', 'INV23007', TO_DATE('18/07/2023', 'DD/MM/YYYY'), 'Touch n Go', TO_TIMESTAMP('19:17:44', 'HH24:MI:SS'), 2399.00, 200.00, 143.94, 7, 'In-Store', 'HH1007', 'meiling0715@yahoo.com', 'B30007', 'MY-07', 'LP10007', 'T7', 'BULK2023', 'PROMO007', 'IT10007', 'SRV-MY-07');
INSERT INTO SalesTransaction VALUES ('T60008', 'INV23008', TO_DATE('19/07/2023', 'DD/MM/YYYY'), 'Credit Card', TO_TIMESTAMP('21:08:12', 'HH24:MI:SS'), 749.50, 50.00, 44.97, 4, 'Online', 'HH1008', 'saravanan89@gmail.com', 'B30008', 'MY-08', 'LP10008', 'T8', 'STUDENT', 'PROMO008', 'IT10008', 'SRV-MY-08');
INSERT INTO SalesTransaction VALUES ('T60009','INV23009',TO_DATE('20/07/2023','DD/MM/YYYY'),'Cash',TO_TIMESTAMP('22:34:56','HH24:MI:SS'),329.00,0.00,19.74,2,'In-Store','HH1009','siti02@gmail.com','B30009','MY-09','LP10009','T9','SENIOR','PROMO009','IT10009','SRV-MY-09');
INSERT INTO SalesTransaction VALUES ('T60010', 'INV23010', TO_DATE('21/07/2023', 'DD/MM/YYYY'), 'ShopeePay', TO_TIMESTAMP('23:59:59', 'HH24:MI:SS'), 189.90, 15.00, 11.39, 3, 'Online', 'HH1010', 'hong940506@gmail.com', 'B30010', 'MY-10', 'LP10010', 'T10', 'FLASHSALE', 'PROMO010', 'IT10010', 'SRV-MY-10');
COMMIT;


-- ========== 16. PAYMENT ==========  joel
INSERT INTO Payment VALUES ('PY70001', 'RCPT8001', 'Credit Card', 589.90, TO_DATE('12-07-2023', 'DD-MM-YYYY'), 'Completed', 'MYR', 'Visa', 'TXN12345', 'Maybank', 'B30001', 'MY-01', 'T60001', 'INV23001', 'PROC10001', 'OC2023-001');
INSERT INTO Payment VALUES ('PY70002', 'RCPT8002', 'E-Wallet', 229.50, TO_DATE('13-07-2023', 'DD-MM-YYYY'), 'Completed', 'MYR', 'GrabPay', 'TXN12346', 'Grab', 'B30002', 'MY-02', 'T60002', 'INV23002', 'PROC10002', 'OC2023-002');
INSERT INTO Payment VALUES ('PY70003', 'RCPT8003', 'Cash', 1250.00, TO_DATE('14-07-2023', 'DD-MM-YYYY'), 'Completed', 'MYR', 'N/A', 'CASH-0723', 'N/A', 'B30003', 'MY-03', 'T60003', 'INV23003', 'PROC10003', 'OC2023-003');
INSERT INTO Payment VALUES ('PY70004', 'RCPT8004', 'Debit Card', 429.90, TO_DATE('15-07-2023', 'DD-MM-YYYY'), 'Completed', 'MYR', 'Mastercard', 'TXN12347', 'CIMB', 'B30004', 'MY-04', 'T60004', 'INV23004', 'PROC10004', 'OC2023-004');
INSERT INTO Payment VALUES ('PY70005', 'RCPT8005', 'Bank Transfer', 899.00, TO_DATE('16-07-2023', 'DD-MM-YYYY'), 'Pending', 'MYR', 'FPX', 'TXN12348', 'Public Bank', 'B30005', 'MY-05', 'T60005', 'INV23005', 'PROC10005', 'OC2023-005');
INSERT INTO Payment VALUES ('PY70006', 'RCPT8006', 'E-Wallet', 159.90, TO_DATE('17-07-2023', 'DD-MM-YYYY'), 'Completed', 'MYR', 'ShopeePay', 'TXN12349', 'Shopee', 'B30006', 'MY-06', 'T60006', 'INV23006', 'PROC10006', 'OC2023-006');
INSERT INTO Payment VALUES ('PY70007', 'RCPT8007', 'E-Wallet', 2399.00, TO_DATE('18-07-2023', 'DD-MM-YYYY'), 'Completed', 'MYR', 'Touch''n Go', 'TXN12350', 'Touch''n Go', 'B30007', 'MY-07', 'T60007', 'INV23007', 'PROC10007', 'OC2023-007');
INSERT INTO Payment VALUES ('PY70008', 'RCPT8008', 'Credit Card', 749.50, TO_DATE('19-07-2023', 'DD-MM-YYYY'), 'Refunded', 'MYR', 'Amex', 'TXN12351', 'Amex', 'B30008', 'MY-08', 'T60008', 'INV23008', 'PROC10008', 'OC2023-008');
INSERT INTO Payment VALUES ('PY70009', 'RCPT8009', 'Cash', 329.00, TO_DATE('20-07-2023', 'DD-MM-YYYY'), 'Completed', 'MYR', 'N/A', 'CASH-0724', 'N/A', 'B30009', 'MY-09', 'T60009', 'INV23009', 'PROC10009', 'OC2023-009');
INSERT INTO Payment VALUES ('PY70010', 'RCPT8010', 'E-Wallet', 189.90, TO_DATE('21-07-2023', 'DD-MM-YYYY'), 'Completed', 'MYR', 'Boost', 'TXN12352', 'Boost', 'B30010', 'MY-10', 'T60010', 'INV23010', 'PROC10010', 'OC2023-010');

COMMIT;

  

-- ========== 17. DELIVERY ========= aina
INSERT INTO Delivery VALUES ('DL10001','LGN23001','Standard',TO_DATE('10/07/2023','DD/MM/YYYY'),TO_DATE('12/07/2023','DD/MM/YYYY'),'Delayed','GDEX','9AM-1PM','track.gdex.com/123',15.00,'B30001','MY-01','T60001','INV23001','PROC10001','OC2023-001','WH1001','Z001','IT10001','SRV-MY-01');

INSERT INTO Delivery VALUES ('DL10002','LGN23002','Express',TO_DATE('13/07/2023','DD/MM/YYYY'),TO_DATE('13/07/2023','DD/MM/YYYY'),'On-Time','Ninja Van','2PM-6PM','track.ninjavan/456',25.00,'B30002','MY-02','T60002','INV23002','PROC10002','OC2023-002','WH1002','Z002','IT10002','SRV-MY-02');

INSERT INTO Delivery VALUES ('DL10003','LGN23003','Same-Day',TO_DATE('14/07/2023','DD/MM/YYYY'),TO_DATE('14/07/2023','DD/MM/YYYY'),'Completed','Lalamove','6PM-9PM','track.lalamove/789',40.00,'B30003','MY-03','T60003','INV23003','PROC10003','OC2023-003','WH1003','Z003','IT10003','SRV-MY-03');

INSERT INTO Delivery VALUES ('DL10004','LGN23004','Standard',TO_DATE('15/07/2023','DD/MM/YYYY'),TO_DATE('17/07/2023','DD/MM/YYYY'),'Delayed','J&T','9AM-1PM','track.jtexpress/101',12.00,'B30004','MY-04','T60004','INV23004','PROC10004','OC2023-004','WH1004','Z004','IT10004','SRV-MY-04');

INSERT INTO Delivery VALUES ('DL10005','LGN23005','Express',TO_DATE('16/07/2023','DD/MM/YYYY'),TO_DATE('16/07/2023','DD/MM/YYYY'),'On-Time','DHL','10AM-2PM','track.dhl.com/202',35.00,'B30005','MY-05','T60005','INV23005','PROC10005','OC2023-005','WH1005','Z005','IT10005','SRV-MY-05');

INSERT INTO Delivery VALUES ('DL10006','LGN23006','Installation',TO_DATE('17/07/2023','DD/MM/YYYY'),TO_DATE('17/07/2023','DD/MM/YYYY'),'Completed','In-House','1PM-5PM','track.homehaven/303',80.00,'B30006','MY-06','T60006','INV23006','PROC10006','OC2023-006','WH1006','Z006','IT10006','SRV-MY-06');

INSERT INTO Delivery VALUES ('DL10007','LGN23007','Standard',TO_DATE('18/07/2023','DD/MM/YYYY'),TO_DATE('20/07/2023','DD/MM/YYYY'),'Delayed','PosLaju','9AM-1PM','track.poslaju/404',10.00,'B30007','MY-07','T60007','INV23007','PROC10007','OC2023-007','WH1007','Z007','IT10007','SRV-MY-07');

INSERT INTO Delivery VALUES ('DL10008','LGN23008','Express',TO_DATE('19/07/2023','DD/MM/YYYY'),TO_DATE('19/07/2023','DD/MM/YYYY'),'On-Time','Ninja Van','2PM-6PM','track.ninjavan/505',25.00,'B30008','MY-08','T60008','INV23008','PROC10008','OC2023-008','WH1008','Z008','IT10008','SRV-MY-08');

INSERT INTO Delivery VALUES ('DL10009','LGN23009','Same-Day',TO_DATE('20/07/2023','DD/MM/YYYY'),TO_DATE('20/07/2023','DD/MM/YYYY'),'Completed','Lalamove','6PM-9PM','track.lalamove/606',45.00,'B30009','MY-09','T60009','INV23009','PROC10009','OC2023-009','WH1009','Z009','IT10009','SRV-MY-09');

INSERT INTO Delivery VALUES ('DL10010','LGN23010','Standard',TO_DATE('21/07/2023','DD/MM/YYYY'),TO_DATE('23/07/2023','DD/MM/YYYY'),'Pending','GDEX','9AM-1PM','track.gdex.com/707',15.00,'B30010','MY-10','T60010','INV23010','PROC10010','OC2023-010','WH1010','Z010','IT10010','SRV-MY-10');


-- ========== 18. COMPLAINT ========= rik
INSERT INTO Complaint VALUES
('CMP10001', 'CS2023-001', 'Product Quality', 'Received damaged dining table with scratches', TO_DATE('2023-07-05', 'YYYY-MM-DD'), 'Resolved', TO_DATE('2023-07-07', 'YYYY-MM-DD'), 'High', 'Email', 'Full refund processed and item collected', 'B30001', 'MY-01', 'PY70001', 'RCPT8001', 'INV50001', 'WH-A12', 'RAYA2023', 'PROMO001', 'DL10001', 'LGN23001', 'IT10001', 'SRV-MY-01', 'PROC10001', 'OC2023-001', 'T60001', 'INV23001', 'WH1001', 'Z001', 'LP10001', 'T1');
INSERT INTO Complaint VALUES
('CMP10002', 'CS2023-002', 'Delivery Issue', 'Package arrived 5 days late', TO_DATE('2023-07-08', 'YYYY-MM-DD'), 'Pending', TO_DATE('2023-07-15', 'YYYY-MM-DD'), 'Medium', 'Phone', 'Courier investigation ongoing', 'B30002', 'MY-02', 'PY70002', 'RCPT8002', 'INV50002', 'WH-B07', 'MERDEKA23', 'PROMO002', 'DL10002', 'LGN23002', 'IT10002', 'SRV-MY-02', 'PROC10002', 'OC2023-002', 'T60002', 'INV23002', 'WH1002', 'Z002', 'LP10002', 'T2');
INSERT INTO Complaint VALUES
('CMP10003', 'CS2023-003', 'Service Quality', 'Rude staff at Mid Valley branch', TO_DATE('2023-07-10', 'YYYY-MM-DD'), 'Resolved', TO_DATE('2023-07-12', 'YYYY-MM-DD'), 'High', 'In-Person', 'Staff retraining completed', 'B30003', 'MY-03', 'PY70003', 'RCPT8003', 'INV50003', 'WH-C03', 'MEMBERSHIP', 'PROMO003', 'DL10003', 'LGN23003', 'IT10003', 'SRV-MY-03', 'PROC10003', 'OC2023-003', 'T60003', 'INV23003', 'WH1003', 'Z003', 'LP10003', 'T3');
INSERT INTO Complaint VALUES
('CMP10004', 'CS2023-004', 'Wrong Item', 'Received blue curtains instead of beige', TO_DATE('2023-07-12', 'YYYY-MM-DD'), 'Resolved', TO_DATE('2023-07-14', 'YYYY-MM-DD'), 'Medium', 'WhatsApp', 'Correct item delivered with RM50 voucher', 'B30004', 'MY-04', 'PY70004', 'RCPT8004', 'INV50004', 'WH-D15', 'CLEARANCE', 'PROMO004', 'DL10004', 'LGN23004', 'IT10004', 'SRV-MY-04', 'PROC10004', 'OC2023-004', 'T60004', 'INV23004', 'WH1004', 'Z004', 'LP10004', 'T4');
INSERT INTO Complaint VALUES
('CMP10005', 'CS2023-005', 'Billing Error', 'Charged twice for same transaction', TO_DATE('2023-07-15', 'YYYY-MM-DD'), 'Resolved', TO_DATE('2023-07-16', 'YYYY-MM-DD'), 'High', 'Email', 'Duplicate charge refunded within 24 hours', 'B30005', 'MY-05', 'PY70005', 'RCPT8005', 'INV50005', 'WH-A08', 'NEWSTORE', 'PROMO005', 'DL10005', 'LGN23005', 'IT10005', 'SRV-MY-05', 'PROC10005', 'OC2023-005', 'T60005', 'INV23005', 'WH1005', 'Z005', 'LP10005', 'T5');
INSERT INTO Complaint VALUES
('CMP10006', 'CS2023-006', 'Warranty Claim', 'Sofa frame broke after 3 months', TO_DATE('2023-07-18', 'YYYY-MM-DD'), 'In Progress', TO_DATE('2023-07-25', 'YYYY-MM-DD'), 'High', 'Phone', 'Technician scheduled for inspection', 'B30006', 'MY-06', 'PY70006', 'RCPT8006', 'INV50006', 'WH-E22', 'WEEKEND', 'PROMO006', 'DL10006', 'LGN23006', 'IT10006', 'SRV-MY-06', 'PROC10006', 'OC2023-006', 'T60006', 'INV23006', 'WH1006', 'Z006', 'LP10006', 'T6');
INSERT INTO Complaint VALUES
('CMP10007', 'CS2023-007', 'Website Issue', 'Cannot check out on mobile app', TO_DATE('2023-07-20', 'YYYY-MM-DD'), 'Resolved', TO_DATE('2023-07-21', 'YYYY-MM-DD'), 'Low', 'Live Chat', 'App updated, RM20 voucher issued', 'B30007', 'MY-07', 'PY70007', 'RCPT8007', 'INV50007', 'WH-F09', 'BULK2023', 'PROMO007', 'DL10007', 'LGN23007', 'IT10007', 'SRV-MY-07', 'PROC10007', 'OC2023-007', 'T60007', 'INV23007', 'WH1007', 'Z007', 'LP10007', 'T7');
INSERT INTO Complaint VALUES
('CMP10008', 'CS2023-008', 'Return Problem', 'Refund not processed after 14 days', TO_DATE('2023-07-22', 'YYYY-MM-DD'), 'Resolved', TO_DATE('2023-07-24', 'YYYY-MM-DD'), 'Medium', 'Email', 'Refund processed with apology voucher', 'B30008', 'MY-08', 'PY70008', 'RCPT8008', 'INV50008', 'WH-G14', 'STUDENT', 'PROMO008', 'DL10008', 'LGN23008', 'IT10008', 'SRV-MY-08', 'PROC10008', 'OC2023-008', 'T60008', 'INV23008', 'WH1008', 'Z008', 'LP10008', 'T8');
INSERT INTO Complaint VALUES
('CMP10009', 'CS2023-009', 'Product Safety', 'Lamp overheated and melted', TO_DATE('2023-07-25', 'YYYY-MM-DD'), 'Under Review', TO_DATE('2023-07-30', 'YYYY-MM-DD'), 'High', 'Phone', 'Product sent to manufacturer for testing', 'B30009', 'MY-09', 'PY70009', 'RCPT8009', 'INV50009', 'WH-H05', 'SENIOR', 'PROMO009', 'DL10009', 'LGN23009', 'IT10009', 'SRV-MY-09', 'PROC10009', 'OC2023-009', 'T60009', 'INV23009', 'WH1009', 'Z009', 'LP10009', 'T9');
INSERT INTO Complaint VALUES
('CMP10010', 'CS2023-010', 'Membership Issue', 'Loyalty points not credited', TO_DATE('2023-07-28', 'YYYY-MM-DD'), 'Resolved', TO_DATE('2023-07-29', 'YYYY-MM-DD'), 'Low', 'Email', 'Points added plus 10% bonus', 'B30010', 'MY-10', 'PY70010', 'RCPT8010', 'INV50010', 'WH-J18', 'FLASHSALE', 'PROMO010', 'DL10010', 'LGN23010', 'IT10010', 'SRV-MY-10', 'PROC10010', 'OC2023-010', 'T60010', 'INV23010', 'WH1010', 'Z010', 'LP10010', 'T10');
COMMIT;


-- ========== 19. PRODUCTRETURN ========== joel

INSERT INTO ProductReturn VALUES (
  'RTN10001', 'RR23001', TO_DATE('05-07-2023', 'DD-MM-YYYY'), 'DAMAGED', 'Used', 'Refund', 'Yes', 359.90, 'No', 'Store Credit',
  'B30001', 'MY-01', 'T60001', 'INV23001', 'PY70001', 'RCPT8001', 'LP10001', 'T1', 'DL10001',
  'LGN23001', 'CMP10001', 'CS2023-001', 'PROC10001', 'OC2023-001', 'WH1001', 'Z001'
);
INSERT INTO ProductReturn VALUES (
  'RTN10002', 'RR23002', TO_DATE('08-07-2023', 'DD-MM-YYYY'), 'WRONG_ITEM', 'Unopened', 'Exchange', 'No', 0.00, 'Yes', 'Cash',
  'B30002', 'MY-02', 'T60002', 'INV23002', 'PY70002', 'RCPT8002', 'LP10002', 'T2', 'DL10002',
  'LGN23002', 'CMP10002', 'CS2023-002', 'PROC10002', 'OC2023-002', 'WH1002', 'Z002'
);
INSERT INTO ProductReturn VALUES (
  'RTN10003', 'RR23003', TO_DATE('12-07-2023', 'DD-MM-YYYY'), 'DEFECTIVE', 'Used', 'Refund', 'Yes', 125.50, 'No', 'Exchange',
  'B30003', 'MY-03', 'T60003', 'INV23003', 'PY70003', 'RCPT8003', 'LP10003', 'T3', 'DL10003',
  'LGN23003', 'CMP10003', 'CS2023-003', 'PROC10003', 'OC2023-003', 'WH1003', 'Z003'
);
INSERT INTO ProductReturn VALUES (
  'RTN10004', 'RR23004', TO_DATE('15-07-2023', 'DD-MM-YYYY'), 'SIZE_ISSUE', 'Unused', 'Exchange', 'Yes', 0.00, 'Yes', 'Bank Transfer',
  'B30004', 'MY-04', 'T60004', 'INV23004', 'PY70004', 'RCPT8004', 'LP10004', 'T4', 'DL10004',
  'LGN23004', 'CMP10004', 'CS2023-004', 'PROC10004', 'OC2023-004', 'WH1004', 'Z004'
);
INSERT INTO ProductReturn VALUES (
  'RTN10005', 'RR23005', TO_DATE('18-07-2023', 'DD-MM-YYYY'), 'COLOR_MISMATCH', 'Unopened', 'Refund', 'No', 89.90, 'No', 'Voucher',
  'B30005', 'MY-05', 'T60005', 'INV23005', 'PY70005', 'RCPT8005', 'LP10005', 'T5', 'DL10005',
  'LGN23005', 'CMP10005', 'CS2023-005', 'PROC10005', 'OC2023-005', 'WH1005', 'Z005'
);
INSERT INTO ProductReturn VALUES (
  'RTN10006', 'RR23006', TO_DATE('20-07-2023', 'DD-MM-YYYY'), 'CHANGE_MIND', 'Used', 'Store Credit', 'Yes', 229.00, 'No', 'Credit Card Refund',
  'B30006', 'MY-06', 'T60006', 'INV23006', 'PY70006', 'RCPT8006', 'LP10006', 'T6', 'DL10006',
  'LGN23006', 'CMP10006', 'CS2023-006', 'PROC10006', 'OC2023-006', 'WH1006', 'Z006'
);
INSERT INTO ProductReturn VALUES (
  'RTN10007', 'RR23007', TO_DATE('22-07-2023', 'DD-MM-YYYY'), 'DAMAGED', 'Unused', 'Refund', 'Yes', 199.90, 'No', 'Cash',
  'B30007', 'MY-07', 'T60007', 'INV23007', 'PY70007', 'RCPT8007', 'LP10007', 'T7', 'DL10007',
  'LGN23007', 'CMP10007', 'CS2023-007', 'PROC10007', 'OC2023-007', 'WH1007', 'Z007'
);
INSERT INTO ProductReturn VALUES (
  'RTN10008', 'RR23008', TO_DATE('25-07-2023', 'DD-MM-YYYY'), 'WRONG_ITEM', 'Unopened', 'Exchange', 'No', 0.00, 'Yes', 'Store Credit',
  'B30008', 'MY-08', 'T60008', 'INV23008', 'PY70008', 'RCPT8008', 'LP10008', 'T8', 'DL10008',
  'LGN23008', 'CMP10008', 'CS2023-008', 'PROC10008', 'OC2023-008', 'WH1008', 'Z008'
);
INSERT INTO ProductReturn VALUES (
  'RTN10009', 'RR23009', TO_DATE('28-07-2023', 'DD-MM-YYYY'), 'DEFECTIVE', 'Used', 'Refund', 'Yes', 75.25, 'No', 'Bank Transfer',
  'B30009', 'MY-09', 'T60009', 'INV23009', 'PY70009', 'RCPT8009', 'LP10009', 'T9', 'DL10009',
  'LGN23009', 'CMP10009', 'CS2023-009', 'PROC10009', 'OC2023-009', 'WH1009', 'Z009'
);
INSERT INTO ProductReturn VALUES (
  'RTN10010', 'RR23010', TO_DATE('30-07-2023', 'DD-MM-YYYY'), 'QUALITY_ISSUE', 'Unused', 'Exchange', 'No', 0.00, 'Yes', 'Exchange',
  'B30010', 'MY-10', 'T60010', 'INV23010', 'PY70010', 'RCPT8010', 'LP10010', 'T10', 'DL10010',
  'LGN23010', 'CMP10010', 'CS2023-010', 'PROC10010', 'OC2023-010', 'WH1010', 'Z010'
);
COMMIT;



-- ========== 20. REVIEW ========= rik

INSERT INTO Review VALUES
('REV10001', 'FB23001', 4, TO_DATE('12/06/2023', 'DD/MM/YYYY'), 'Good product quality but delivery was slow', 'Replied', 5, 3, 'Website', 'No',
 'B30001', 'MY-01', 'P40001', 'SKU1001', 'T60001', 'INV23001', 'RAYA2023', 'PROMO001',
 'RTN10001', 'RR23001', 'DL10001', 'LGN23001', 'LP10001', 'T1', 'TR10001', 'T2023-001', 'IT10001', 'SRV-MY-01');

INSERT INTO Review VALUES
('REV10002', 'FB23002', 1, TO_DATE('15/06/2023', 'DD/MM/YYYY'), 'Received damaged sofa legs', 'Pending', 1, 2, 'Google', 'Yes',
 'B30002', 'MY-02', 'P40002', 'SKU1002', 'T60002', 'INV23002', 'MERDEKA23', 'PROMO002',
 'RTN10002', 'RR23002', 'DL10002', 'LGN23002', 'LP10002', 'T2', 'TR10002', 'T2023-002', 'IT10002', 'SRV-MY-02');

INSERT INTO Review VALUES
('REV10003', 'FB23003', 5, TO_DATE('18/06/2023', 'DD/MM/YYYY'), 'Excellent customer service at Mid Valley branch', 'Replied', 5, 5, 'Facebook', 'No',
 'B30003', 'MY-03', 'P40003', 'SKU1003', 'T60003', 'INV23003', 'MEMBERSHIP', 'PROMO003',
 'RTN10003', 'RR23003', 'DL10003', 'LGN23003', 'LP10003', 'T3', 'TR10003', 'T2023-003', 'IT10003', 'SRV-MY-03');

INSERT INTO Review VALUES
('REV10004', 'FB23004', 3, TO_DATE('20/06/2023', 'DD/MM/YYYY'), 'Product okay but expensive for quality', 'Replied', 3, 4, 'Shopee', 'No',
 'B30004', 'MY-04', 'P40004', 'SKU1004', 'T60004', 'INV23004', 'CLEARANCE', 'PROMO004',
 'RTN10004', 'RR23004', 'DL10004', 'LGN23004', 'LP10004', 'T4', 'TR10004', 'T2023-004', 'IT10004', 'SRV-MY-04');

INSERT INTO Review VALUES
('REV10005', 'FB23005', 2, TO_DATE('22/06/2023', 'DD/MM/YYYY'), 'Wrong color curtains delivered', 'Not Replied', 2, 1, 'Lazada', 'Yes',
 'B30005', 'MY-05', 'P40005', 'SKU1005', 'T60005', 'INV23005', 'NEWSTORE', 'PROMO005',
 'RTN10005', 'RR23005', 'DL10005', 'LGN23005', 'LP10005', 'T5', 'TR10005', 'T2023-005', 'IT10005', 'SRV-MY-05');

INSERT INTO Review VALUES
('REV10006', 'FB23006', 5, TO_DATE('25/06/2023', 'DD/MM/YYYY'), 'Very happy with my new dining set!', 'Replied', 5, 5, 'Website', 'No',
 'B30006', 'MY-06', 'P40006', 'SKU1006', 'T60006', 'INV23006', 'WEEKEND', 'PROMO006',
 'RTN10006', 'RR23006', 'DL10006', 'LGN23006', 'LP10006', 'T6', 'TR10006', 'T2023-006', 'IT10006', 'SRV-MY-06');

INSERT INTO Review VALUES
('REV10007', 'FB23007', 4, TO_DATE('28/06/2023', 'DD/MM/YYYY'), 'Good value but assembly instructions unclear', 'Replied', 4, 4, 'Google', 'No',
 'B30007', 'MY-07', 'P40007', 'SKU1007', 'T60007', 'INV23007', 'BULK2023', 'PROMO007',
 'RTN10007', 'RR23007', 'DL10007', 'LGN23007', 'LP10007', 'T7', 'TR10007', 'T2023-007', 'IT10007', 'SRV-MY-07');

INSERT INTO Review VALUES
('REV10008', 'FB23008', 1, TO_DATE('01/07/2023', 'DD/MM/YYYY'), 'Fabric stains on new cushion covers', 'Pending', 1, 3, 'Facebook', 'Yes',
 'B30008', 'MY-08', 'P40008', 'SKU1008', 'T60008', 'INV23008', 'STUDENT', 'PROMO008',
 'RTN10008', 'RR23008', 'DL10008', 'LGN23008', 'LP10008', 'T8', 'TR10008', 'T2023-008', 'IT10008', 'SRV-MY-08');

INSERT INTO Review VALUES
('REV10009', 'FB23009', 3, TO_DATE('05/07/2023', 'DD/MM/YYYY'), 'Average experience, took long to process refund', 'Replied', 4, 2, 'Website', 'No',
 'B30009', 'MY-09', 'P40009', 'SKU1009', 'T60009', 'INV23009', 'SENIOR', 'PROMO009',
 'RTN10009', 'RR23009', 'DL10009', 'LGN23009', 'LP10009', 'T9', 'TR10009', 'T2023-009', 'IT10009', 'SRV-MY-09');

INSERT INTO Review VALUES
('REV10010', 'FB23010', 5, TO_DATE('08/07/2023', 'DD/MM/YYYY'), 'Perfect! Will buy again', 'Not Replied', 5, 5, 'Shopee', 'No',
 'B30010', 'MY-10', 'P40010', 'SKU1010', 'T60010', 'INV23010', 'FLASHSALE', 'PROMO010',
 'RTN10010', 'RR23010', 'DL10010', 'LGN23010', 'LP10010', 'T10', 'TR10010', 'T2023-010', 'IT10010', 'SRV-MY-10');

COMMIT;

-- ========== 21. AUDITACTIVITY ========= rik
INSERT INTO AuditActivity VALUES
('AUD10001', 'LOG2023-001', TO_DATE('05/07/2023','DD/MM/YYYY'), 'Internal Team A', 'Inventory',
 '5% stock discrepancy in Warehouse A', 'Non-Compliant', 'AuditPro', 'AP2023-001', TO_DATE('05/01/2024','DD/MM/YYYY'),
 'HH1001', 'aisyah@gmail.com', 'B30001', 'MY-01', 'T60001', 'INV23001',
 'PY70001', 'RCPT8001', 'DL10001', 'LGN23001', 'WH1001', 'Z001',
 'RAYA2023', 'PROMO001', 'PROC10001', 'OC2023-001');

INSERT INTO AuditActivity VALUES
('AUD10002', 'LOG2023-002', TO_DATE('08/07/2023','DD/MM/YYYY'), 'External Auditor', 'Financial',
 'No material misstatements found', 'Compliant', 'FinCheck', NULL, TO_DATE('08/01/2024','DD/MM/YYYY'),
 'HH1002', 'kumar123@yahoo.com', 'B30002', 'MY-02', 'T60002', 'INV23002',
 'PY70002', 'RCPT8002', 'DL10002', 'LGN23002', 'WH1002', 'Z002',
 'MERDEKA23', 'PROMO002', 'PROC10002', 'OC2023-002');

INSERT INTO AuditActivity VALUES
('AUD10003', 'LOG2023-003', TO_DATE('12/07/2023','DD/MM/YYYY'), 'Internal Team B', 'Safety',
 '2 fire extinguishers expired', 'Partial Compliance', 'SafeAudit', 'AP2023-002', TO_DATE('12/10/2023','DD/MM/YYYY'),
 'HH1003', 'xiaowen02@gmail.com', 'B30003', 'MY-03', 'T60003', 'INV23003',
 'PY70003', 'RCPT8003', 'DL10003', 'LGN23003', 'WH1003', 'Z003',
 'MEMBERSHIP', 'PROMO003', 'PROC10003', 'OC2023-003');

INSERT INTO AuditActivity VALUES
('AUD10004', 'LOG2023-004', TO_DATE('15/07/2023','DD/MM/YYYY'), 'Internal Team A', 'POS',
 '3 transactions missing receipts', 'Non-Compliant', 'RetailAudit', 'AP2023-003', TO_DATE('15/01/2024','DD/MM/YYYY'),
 'HH1004', 'keong88@gmail.com', 'B30004', 'MY-04', 'T60004', 'INV23004',
 'PY70004', 'RCPT8004', 'DL10004', 'LGN23004', 'WH1004', 'Z004',
 'CLEARANCE', 'PROMO004', 'PROC10004', 'OC2023-004');

INSERT INTO AuditActivity VALUES
('AUD10005', 'LOG2023-005', TO_DATE('18/07/2023','DD/MM/YYYY'), 'External Auditor', 'Tax',
 'All tax documents properly filed', 'Compliant', 'TaxExpert', NULL, TO_DATE('18/07/2024','DD/MM/YYYY'),
 'HH1005', 'nurul99@gmail.com', 'B30005', 'MY-05', 'T60005', 'INV23005',
 'PY70005', 'RCPT8005', 'DL10005', 'LGN23005', 'WH1005', 'Z005',
 'NEWSTORE', 'PROMO005', 'PROC10005', 'OC2023-005');

INSERT INTO AuditActivity VALUES
('AUD10006', 'LOG2023-006', TO_DATE('20/07/2023','DD/MM/YYYY'), 'Internal Team C', 'Supplier',
 '2 suppliers without valid licenses', 'Non-Compliant', 'VendorCheck', 'AP2023-004', TO_DATE('20/01/2024','DD/MM/YYYY'),
 'HH1006', 'hafiz93@outlook.com', 'B30006', 'MY-06', 'T60006', 'INV23006',
 'PY70006', 'RCPT8006', 'DL10006', 'LGN23006', 'WH1006', 'Z006',
 'WEEKEND', 'PROMO006', 'PROC10006', 'OC2023-006');

INSERT INTO AuditActivity VALUES
('AUD10007', 'LOG2023-007', TO_DATE('22/07/2023','DD/MM/YYYY'), 'Internal Team B', 'Data',
 'Backup procedures not followed', 'Partial Compliance', 'DataSecure', 'AP2023-005', TO_DATE('22/10/2023','DD/MM/YYYY'),
 'HH1007', 'meiling0715@yahoo.com', 'B30007', 'MY-07', 'T60007', 'INV23007',
 'PY70007', 'RCPT8007', 'DL10007', 'LGN23007', 'WH1007', 'Z007',
 'BULK2023', 'PROMO007', 'PROC10007', 'OC2023-007');

INSERT INTO AuditActivity VALUES
('AUD10008', 'LOG2023-008', TO_DATE('25/07/2023','DD/MM/YYYY'), 'Internal Team A', 'HR',
 '3 staff files incomplete', 'Non-Compliant', 'PeopleAudit', 'AP2023-006', TO_DATE('25/01/2024','DD/MM/YYYY'),
 'HH1008', 'saravanan89@gmail.com', 'B30008', 'MY-08', 'T60008', 'INV23008',
 'PY70008', 'RCPT8008', 'DL10008', 'LGN23008', 'WH1008', 'Z008',
 'STUDENT', 'PROMO008', 'PROC10008', 'OC2023-008');

INSERT INTO AuditActivity VALUES
('AUD10009', 'LOG2023-009', TO_DATE('28/07/2023','DD/MM/YYYY'), 'External Auditor', 'ISO',
 'All ISO standards maintained', 'Compliant', 'ISOCheck', NULL, TO_DATE('28/07/2024','DD/MM/YYYY'),
 'HH1009', 'siti02@gmail.com', 'B30009', 'MY-09', 'T60009', 'INV23009',
 'PY70009', 'RCPT8009', 'DL10009', 'LGN23009', 'WH1009', 'Z009',
 'SENIOR', 'PROMO009', 'PROC10009', 'OC2023-009');

INSERT INTO AuditActivity VALUES
('AUD10010', 'LOG2023-010', TO_DATE('30/07/2023','DD/MM/YYYY'), 'Internal Team C', 'Cash',
 'RM150 petty cash discrepancy', 'Non-Compliant', 'CashAudit', 'AP2023-007', TO_DATE('30/01/2024','DD/MM/YYYY'),
 'HH1010', 'hong940506@gmail.com', 'B30010', 'MY-10', 'T60010', 'INV23010',
 'PY70010', 'RCPT8010', 'DL10010', 'LGN23010', 'WH1010', 'Z010',
 'FLASHSALE', 'PROMO010', 'PROC10010', 'OC2023-010');
COMMIT;


-- ================================================
-- CREATE ALL EXPLOSION TABLES FOR MR. DIY DATABASE
-- ================================================

-- ========== 1. PersonReviewSubmission ========= aina (1 -> 11)
INSERT INTO PersonReviewSubmission VALUES ('1011','900101-14-5678','REV10001','FB23001');
INSERT INTO PersonReviewSubmission VALUES ('1012','880202-08-4321','REV10002','FB23002');
INSERT INTO PersonReviewSubmission VALUES ('1013','920303-10-1122','REV10003','FB23003');
INSERT INTO PersonReviewSubmission VALUES ('1014','851224-07-3344','REV10004','FB23004');
INSERT INTO PersonReviewSubmission VALUES ('1015','950505-13-5566','REV10005','FB23005');
INSERT INTO PersonReviewSubmission VALUES ('1016','870606-05-7788','REV10006','FB23006');
INSERT INTO PersonReviewSubmission VALUES ('1017','931010-02-9900','REV10007','FB23007');
INSERT INTO PersonReviewSubmission VALUES ('1018','840414-03-1133','REV10008','FB23008');
INSERT INTO PersonReviewSubmission VALUES ('1019','960909-01-2244','REV10009','FB23009');
INSERT INTO PersonReviewSubmission VALUES ('1020','891212-09-7788','REV10010','FB23010');

COMMIT;

-- ========== 2. PersonBranchInteraction ========= 
INSERT INTO PersonBranchInteraction VALUES ('1011','900101-14-5678','B30001','MY-01');
INSERT INTO PersonBranchInteraction VALUES ('1012','880202-08-4321','B30002','MY-02');
INSERT INTO PersonBranchInteraction VALUES ('1013','920303-10-1122','B30003','MY-03');
INSERT INTO PersonBranchInteraction VALUES ('1014','851224-07-3344','B30004','MY-04');
INSERT INTO PersonBranchInteraction VALUES ('1015','950505-13-5566','B30005','MY-05');
INSERT INTO PersonBranchInteraction VALUES ('1020','891212-09-7788','B30006','MY-06');
INSERT INTO PersonBranchInteraction VALUES ('1021','850818-11-4455','B30007','MY-07');
INSERT INTO PersonBranchInteraction VALUES ('1022','830707-06-6677','B30008','MY-08');
INSERT INTO PersonBranchInteraction VALUES ('1023','910111-12-8899','B30009','MY-09');
INSERT INTO PersonBranchInteraction VALUES ('1024','900818-08-1234','B30010','MY-10');
COMMIT;

-- ========== 3. PersonComplaintRecord ========= 
INSERT INTO PersonComplaintRecord VALUES ('1011', '900101-14-5678', 'CMP10001', 'CS2023-001');
INSERT INTO PersonComplaintRecord VALUES ('1012', '880202-08-4321', 'CMP10002', 'CS2023-002');
INSERT INTO PersonComplaintRecord VALUES ('1013', '920303-10-1122', 'CMP10003', 'CS2023-003');
INSERT INTO PersonComplaintRecord VALUES ('1014', '851224-07-3344', 'CMP10004', 'CS2023-004');
INSERT INTO PersonComplaintRecord VALUES ('1015', '950505-13-5566', 'CMP10005', 'CS2023-005');
INSERT INTO PersonComplaintRecord VALUES ('1016', '870606-05-7788', 'CMP10006', 'CS2023-006');
INSERT INTO PersonComplaintRecord VALUES ('1017', '931010-02-9900', 'CMP10007', 'CS2023-007');
INSERT INTO PersonComplaintRecord VALUES ('1018', '840414-03-1133', 'CMP10008', 'CS2023-008');
INSERT INTO PersonComplaintRecord VALUES ('1019', '960909-01-2244', 'CMP10009', 'CS2023-009');
INSERT INTO PersonComplaintRecord VALUES ('1020', '891212-09-7788', 'CMP10010', 'CS2023-010');
COMMIT;

-- ========== 4. PersonProductInteraction ========= 
INSERT INTO PersonProductInteraction VALUES ('1015', '950505-13-5566', 'P40001', 'SKU1001');
INSERT INTO PersonProductInteraction VALUES ('1016', '870606-05-7788', 'P40002', 'SKU1002');
INSERT INTO PersonProductInteraction VALUES ('1017', '931010-02-9900', 'P40003', 'SKU1003');
INSERT INTO PersonProductInteraction VALUES ('1018', '840414-03-1133', 'P40004', 'SKU1004');
INSERT INTO PersonProductInteraction VALUES ('1019', '960909-01-2244', 'P40005', 'SKU1005');
INSERT INTO PersonProductInteraction VALUES ('1020', '891212-09-7788', 'P40006', 'SKU1006');
INSERT INTO PersonProductInteraction VALUES ('1021', '850818-11-4455', 'P40007', 'SKU1007');
INSERT INTO PersonProductInteraction VALUES ('1022', '830707-06-6677', 'P40008', 'SKU1008');
INSERT INTO PersonProductInteraction VALUES ('1023', '910111-12-8899', 'P40009', 'SKU1009');
INSERT INTO PersonProductInteraction VALUES ('1024', '900818-08-1234', 'P40010', 'SKU1010');
COMMIT;

-- ========== 5. PersonPaymentTransaction ========= 
INSERT INTO PersonPaymentTransaction VALUES ('1005','990724-05-9988','PY70001','RCPT8001');
INSERT INTO PersonPaymentTransaction VALUES ('1006','930310-04-3344','PY70002','RCPT8002');
INSERT INTO PersonPaymentTransaction VALUES ('1007','980715-07-6677','PY70003','RCPT8003');
INSERT INTO PersonPaymentTransaction VALUES ('1008','891201-09-7788','PY70004','RCPT8004');
INSERT INTO PersonPaymentTransaction VALUES ('1009','021212-02-8899','PY70005','RCPT8005');
INSERT INTO PersonPaymentTransaction VALUES ('1010','940506-14-1122','PY70006','RCPT8006');
INSERT INTO PersonPaymentTransaction VALUES ('1011','900101-14-5678','PY70007','RCPT8007');
INSERT INTO PersonPaymentTransaction VALUES ('1012','880202-08-4321','PY70008','RCPT8008');
INSERT INTO PersonPaymentTransaction VALUES ('1013','920303-10-1122','PY70009','RCPT8009');
INSERT INTO PersonPaymentTransaction VALUES ('1014','851224-07-3344','PY70010','RCPT8010');
COMMIT;

-- ========== 6. PersonProductReturnRequest ========= 
INSERT INTO PersonProductReturnRequest VALUES ('1011','900101-14-5678','RTN10001','RR23001');
INSERT INTO PersonProductReturnRequest VALUES ('1012','880202-08-4321','RTN10002','RR23002');
INSERT INTO PersonProductReturnRequest VALUES ('1013','920303-10-1122','RTN10003','RR23003');
INSERT INTO PersonProductReturnRequest VALUES ('1014','851224-07-3344','RTN10004','RR23004');
INSERT INTO PersonProductReturnRequest VALUES ('1015','950505-13-5566','RTN10005','RR23005');
INSERT INTO PersonProductReturnRequest VALUES ('1016','870606-05-7788','RTN10006','RR23006');
INSERT INTO PersonProductReturnRequest VALUES ('1017','931010-02-9900','RTN10007','RR23007');
INSERT INTO PersonProductReturnRequest VALUES ('1018','840414-03-1133','RTN10008','RR23008');
INSERT INTO PersonProductReturnRequest VALUES ('1019','960909-01-2244','RTN10009','RR23009');
INSERT INTO PersonProductReturnRequest VALUES ('1020','891212-09-7788','RTN10010','RR23010');
COMMIT;

-- ========== 7. PersonDeliveryRecord ========= 
INSERT INTO PersonDeliveryRecord VALUES ('1011','900101-14-5678','DL10001','LGN23001');
INSERT INTO PersonDeliveryRecord VALUES ('1012','880202-08-4321','DL10002','LGN23002');
INSERT INTO PersonDeliveryRecord VALUES ('1013','920303-10-1122','DL10003','LGN23003');
INSERT INTO PersonDeliveryRecord VALUES ('1014','851224-07-3344','DL10004','LGN23004');
INSERT INTO PersonDeliveryRecord VALUES ('1015','950505-13-5566','DL10005','LGN23005');
INSERT INTO PersonDeliveryRecord VALUES ('1016','870606-05-7788','DL10006','LGN23006');
INSERT INTO PersonDeliveryRecord VALUES ('1017','931010-02-9900','DL10007','LGN23007');
INSERT INTO PersonDeliveryRecord VALUES ('1018','840414-03-1133','DL10008','LGN23008');
INSERT INTO PersonDeliveryRecord VALUES ('1019','960909-01-2244','DL10009','LGN23009');
INSERT INTO PersonDeliveryRecord VALUES ('1020','891212-09-7788','DL10010','LGN23010');
COMMIT;

-- ========== 8. CustomerPromotionRedemption ========= 
INSERT INTO CustomerPromotionRedemption VALUES ('C10001','LC80001','RAYA2023','PROMO001');
INSERT INTO CustomerPromotionRedemption VALUES ('C10002','LC80002','MERDEKA23','PROMO002');
INSERT INTO CustomerPromotionRedemption VALUES ('C10003','LC80003','MEMBERSHIP','PROMO003');
INSERT INTO CustomerPromotionRedemption VALUES ('C10004','LC80004','CLEARANCE','PROMO004');
INSERT INTO CustomerPromotionRedemption VALUES ('C10005','LC80005','NEWSTORE','PROMO005');
INSERT INTO CustomerPromotionRedemption VALUES ('C10006','LC80006','WEEKEND','PROMO006');
INSERT INTO CustomerPromotionRedemption VALUES ('C10007','LC80007','BULK2023','PROMO007');
INSERT INTO CustomerPromotionRedemption VALUES ('C10008','LC80008','STUDENT','PROMO008');
INSERT INTO CustomerPromotionRedemption VALUES ('C10009','LC80009','SENIOR','PROMO009');
INSERT INTO CustomerPromotionRedemption VALUES ('C10010','LC80010','FLASHSALE','PROMO010');
COMMIT;

-- ========== 9. CustomerSalesTransaction ========= 
INSERT INTO CustomerSalesTransaction VALUES ('C10001','LC80001','T60001','INV23001');
INSERT INTO CustomerSalesTransaction VALUES ('C10002','LC80002','T60002','INV23002');
INSERT INTO CustomerSalesTransaction VALUES ('C10003','LC80003','T60003','INV23003');
INSERT INTO CustomerSalesTransaction VALUES ('C10004','LC80004','T60004','INV23004');
INSERT INTO CustomerSalesTransaction VALUES ('C10005','LC80005','T60005','INV23005');
INSERT INTO CustomerSalesTransaction VALUES ('C10006','LC80006','T60006','INV23006');
INSERT INTO CustomerSalesTransaction VALUES ('C10007','LC80007','T60007','INV23007');
INSERT INTO CustomerSalesTransaction VALUES ('C10008','LC80008','T60008','INV23008');
INSERT INTO CustomerSalesTransaction VALUES ('C10009','LC80009','T60009','INV23009');
INSERT INTO CustomerSalesTransaction VALUES ('C10010','LC80010','T60010','INV23010');
COMMIT;

-- ========== 10. EmployeeCustomerSupport ========= 
INSERT INTO EmployeeCustomerSupport VALUES ('HH1001','aisyah@gmail.com','C10001','LC80001');
INSERT INTO EmployeeCustomerSupport VALUES ('HH1002','kumar123@yahoo.com','C10002','LC80002');
INSERT INTO EmployeeCustomerSupport VALUES ('HH1003','xiaowen02@gmail.com','C10003','LC80003');
INSERT INTO EmployeeCustomerSupport VALUES ('HH1004','keong88@gmail.com','C10004','LC80004');
INSERT INTO EmployeeCustomerSupport VALUES ('HH1005','nurul99@gmail.com','C10005','LC80005');
INSERT INTO EmployeeCustomerSupport VALUES ('HH1006','hafiz93@outlook.com','C10006','LC80006');
INSERT INTO EmployeeCustomerSupport VALUES ('HH1007','meiling0715@yahoo.com','C10007','LC80007');
INSERT INTO EmployeeCustomerSupport VALUES ('HH1008','saravanan89@gmail.com','C10008','LC80008');
INSERT INTO EmployeeCustomerSupport VALUES ('HH1009','siti02@gmail.com','C10009','LC80009');
INSERT INTO EmployeeCustomerSupport VALUES ('HH1010','hong940506@gmail.com','C10010','LC80010');
COMMIT;

-- ========== 11. EmployeeITSystemAccess ========= 
INSERT INTO EmployeeITSystemAccess VALUES ('HH1001', 'aisyah@gmail.com', 'IT10001', 'SRV-MY-01');
INSERT INTO EmployeeITSystemAccess VALUES ('HH1002', 'kumar123@yahoo.com', 'IT10002', 'SRV-MY-02');
INSERT INTO EmployeeITSystemAccess VALUES ('HH1003', 'xiaowen02@gmail.com', 'IT10003', 'SRV-MY-03');
INSERT INTO EmployeeITSystemAccess VALUES ('HH1004', 'keong88@gmail.com', 'IT10004', 'SRV-MY-04');
INSERT INTO EmployeeITSystemAccess VALUES ('HH1005', 'nurul99@gmail.com', 'IT10005', 'SRV-MY-05');
INSERT INTO EmployeeITSystemAccess VALUES ('HH1006', 'hafiz93@outlook.com', 'IT10006', 'SRV-MY-06');
INSERT INTO EmployeeITSystemAccess VALUES ('HH1007', 'meiling0715@yahoo.com', 'IT10007', 'SRV-MY-07');
INSERT INTO EmployeeITSystemAccess VALUES ('HH1008', 'saravanan89@gmail.com', 'IT10008', 'SRV-MY-08');
INSERT INTO EmployeeITSystemAccess VALUES ('HH1009', 'siti02@gmail.com', 'IT10009', 'SRV-MY-09');
INSERT INTO EmployeeITSystemAccess VALUES ('HH1010', 'hong940506@gmail.com', 'IT10010', 'SRV-MY-10');
COMMIT;

-- ========== 12. EmployeeTrainingEnrollment ========= joel (12 -> 22)
INSERT INTO EmployeeTrainingEnrollment VALUES ('HH1001', 'aisyah@gmail.com', 'TR10001', 'T2023-001');
INSERT INTO EmployeeTrainingEnrollment VALUES ('HH1002', 'kumar123@yahoo.com', 'TR10002', 'T2023-002');
INSERT INTO EmployeeTrainingEnrollment VALUES ('HH1003', 'xiaowen02@gmail.com', 'TR10003', 'T2023-003');
INSERT INTO EmployeeTrainingEnrollment VALUES ('HH1004', 'keong88@gmail.com', 'TR10004', 'T2023-004');
INSERT INTO EmployeeTrainingEnrollment VALUES ('HH1005', 'nurul99@gmail.com', 'TR10005', 'T2023-005');
INSERT INTO EmployeeTrainingEnrollment VALUES ('HH1006', 'hafiz93@outlook.com', 'TR10006', 'T2023-006');
INSERT INTO EmployeeTrainingEnrollment VALUES ('HH1007', 'meiling0715@yahoo.com', 'TR10007', 'T2023-007');
INSERT INTO EmployeeTrainingEnrollment VALUES ('HH1008', 'saravanan89@gmail.com', 'TR10008', 'T2023-008');
INSERT INTO EmployeeTrainingEnrollment VALUES ('HH1009', 'siti02@gmail.com', 'TR10009', 'T2023-009');
INSERT INTO EmployeeTrainingEnrollment VALUES ('HH1010', 'hong940506@gmail.com', 'TR10010', 'T2023-010');

COMMIT;


-- ========== 13. EmployeeInventoryHandling ========= 
INSERT INTO EmployeeInventoryHandling VALUES ('HH1001', 'aisyah@gmail.com', 'INV50001', 'WH-A12');
INSERT INTO EmployeeInventoryHandling VALUES ('HH1002', 'kumar123@yahoo.com', 'INV50002', 'WH-B07');
INSERT INTO EmployeeInventoryHandling VALUES ('HH1003', 'xiaowen02@gmail.com', 'INV50003', 'WH-C03');
INSERT INTO EmployeeInventoryHandling VALUES ('HH1004', 'keong88@gmail.com', 'INV50004', 'WH-D15');
INSERT INTO EmployeeInventoryHandling VALUES ('HH1005', 'nurul99@gmail.com', 'INV50005', 'WH-A08');
INSERT INTO EmployeeInventoryHandling VALUES ('HH1006', 'hafiz93@outlook.com', 'INV50006', 'WH-E22');
INSERT INTO EmployeeInventoryHandling VALUES ('HH1007', 'meiling0715@yahoo.com', 'INV50007', 'WH-F09');
INSERT INTO EmployeeInventoryHandling VALUES ('HH1008', 'saravanan89@gmail.com', 'INV50008', 'WH-G14');
INSERT INTO EmployeeInventoryHandling VALUES ('HH1009', 'siti02@gmail.com', 'INV50009', 'WH-H05');
INSERT INTO EmployeeInventoryHandling VALUES ('HH1010', 'hong940506@gmail.com', 'INV50010', 'WH-J18');

COMMIT;


-- ========== 14. EmployeeMaintenanceAssignment ========= 
INSERT INTO EmployeeMaintenanceAssignment VALUES ('HH1001', 'aisyah@gmail.com', 'MT10001', 'WO2023-001');
INSERT INTO EmployeeMaintenanceAssignment VALUES ('HH1002', 'kumar123@yahoo.com', 'MT10002', 'WO2023-002');
INSERT INTO EmployeeMaintenanceAssignment VALUES ('HH1003', 'xiaowen02@gmail.com', 'MT10003', 'WO2023-003');
INSERT INTO EmployeeMaintenanceAssignment VALUES ('HH1004', 'keong88@gmail.com', 'MT10004', 'WO2023-004');
INSERT INTO EmployeeMaintenanceAssignment VALUES ('HH1005', 'nurul99@gmail.com', 'MT10005', 'WO2023-005');
INSERT INTO EmployeeMaintenanceAssignment VALUES ('HH1006', 'hafiz93@outlook.com', 'MT10006', 'WO2023-006');
INSERT INTO EmployeeMaintenanceAssignment VALUES ('HH1007', 'meiling0715@yahoo.com', 'MT10007', 'WO2023-007');
INSERT INTO EmployeeMaintenanceAssignment VALUES ('HH1008', 'saravanan89@gmail.com', 'MT10008', 'WO2023-008');
INSERT INTO EmployeeMaintenanceAssignment VALUES ('HH1009', 'siti02@gmail.com', 'MT10009', 'WO2023-009');
INSERT INTO EmployeeMaintenanceAssignment VALUES ('HH1010', 'hong940506@gmail.com', 'MT10010', 'WO2023-010');

COMMIT;


-- ========== 15. EmployeeWarehouseAssignment ========= 
INSERT INTO EmployeeWarehouseAssignment VALUES ('HH1001', 'aisyah@gmail.com', 'WH1001', 'Z001');
INSERT INTO EmployeeWarehouseAssignment VALUES ('HH1002', 'kumar123@yahoo.com', 'WH1002', 'Z002');
INSERT INTO EmployeeWarehouseAssignment VALUES ('HH1003', 'xiaowen02@gmail.com', 'WH1003', 'Z003');
INSERT INTO EmployeeWarehouseAssignment VALUES ('HH1004', 'keong88@gmail.com', 'WH1004', 'Z004');
INSERT INTO EmployeeWarehouseAssignment VALUES ('HH1005', 'nurul99@gmail.com', 'WH1005', 'Z005');
INSERT INTO EmployeeWarehouseAssignment VALUES ('HH1006', 'hafiz93@outlook.com', 'WH1006', 'Z006');
INSERT INTO EmployeeWarehouseAssignment VALUES ('HH1007', 'meiling0715@yahoo.com', 'WH1007', 'Z007');
INSERT INTO EmployeeWarehouseAssignment VALUES ('HH1008', 'saravanan89@gmail.com', 'WH1008', 'Z008');
INSERT INTO EmployeeWarehouseAssignment VALUES ('HH1009', 'siti02@gmail.com', 'WH1009', 'Z009');
INSERT INTO EmployeeWarehouseAssignment VALUES ('HH1010', 'hong940506@gmail.com', 'WH1010', 'Z010');

COMMIT;


-- ========== 16. SupplierAuditInspection ========= 
INSERT INTO SupplierAuditInspection VALUES ('S20001', 'BL2023001', 'AUD10001', 'LOG2023-001');
INSERT INTO SupplierAuditInspection VALUES ('S20002', 'BL2023002', 'AUD10002', 'LOG2023-002');
INSERT INTO SupplierAuditInspection VALUES ('S20003', 'BL2023003', 'AUD10003', 'LOG2023-003');
INSERT INTO SupplierAuditInspection VALUES ('S20004', 'BL2023004', 'AUD10004', 'LOG2023-004');
INSERT INTO SupplierAuditInspection VALUES ('S20005', 'BL2023005', 'AUD10005', 'LOG2023-005');
INSERT INTO SupplierAuditInspection VALUES ('S20006', 'BL2023006', 'AUD10006', 'LOG2023-006');
INSERT INTO SupplierAuditInspection VALUES ('S20007', 'BL2023007', 'AUD10007', 'LOG2023-007');
INSERT INTO SupplierAuditInspection VALUES ('S20008', 'BL2023008', 'AUD10008', 'LOG2023-008');
INSERT INTO SupplierAuditInspection VALUES ('S20009', 'BL2023009', 'AUD10009', 'LOG2023-009');
INSERT INTO SupplierAuditInspection VALUES ('S20010', 'BL2023010', 'AUD10010', 'LOG2023-010');

COMMIT;


-- ========== 17. SupplierInventorySupply ========= 
INSERT INTO SupplierInventorySupply VALUES ('S20001', 'BL2023001', 'INV50001', 'WH-A12');
INSERT INTO SupplierInventorySupply VALUES ('S20002', 'BL2023002', 'INV50002', 'WH-B07');
INSERT INTO SupplierInventorySupply VALUES ('S20003', 'BL2023003', 'INV50003', 'WH-C03');
INSERT INTO SupplierInventorySupply VALUES ('S20004', 'BL2023004', 'INV50004', 'WH-D15');
INSERT INTO SupplierInventorySupply VALUES ('S20005', 'BL2023005', 'INV50005', 'WH-A08');
INSERT INTO SupplierInventorySupply VALUES ('S20006', 'BL2023006', 'INV50006', 'WH-E22');
INSERT INTO SupplierInventorySupply VALUES ('S20007', 'BL2023007', 'INV50007', 'WH-F09');
INSERT INTO SupplierInventorySupply VALUES ('S20008', 'BL2023008', 'INV50008', 'WH-G14');
INSERT INTO SupplierInventorySupply VALUES ('S20009', 'BL2023009', 'INV50009', 'WH-H05');
INSERT INTO SupplierInventorySupply VALUES ('S20010', 'BL2023010', 'INV50010', 'WH-J18');

COMMIT;


-- ========== 18. BranchProductStock ========= 
INSERT INTO BranchProductStock VALUES ('B30001', 'MY-01', 'P40001', 'SKU1001');
INSERT INTO BranchProductStock VALUES ('B30002', 'MY-02', 'P40002', 'SKU1002');
INSERT INTO BranchProductStock VALUES ('B30003', 'MY-03', 'P40003', 'SKU1003');
INSERT INTO BranchProductStock VALUES ('B30004', 'MY-04', 'P40004', 'SKU1004');
INSERT INTO BranchProductStock VALUES ('B30005', 'MY-05', 'P40005', 'SKU1005');
INSERT INTO BranchProductStock VALUES ('B30006', 'MY-06', 'P40006', 'SKU1006');
INSERT INTO BranchProductStock VALUES ('B30007', 'MY-07', 'P40007', 'SKU1007');
INSERT INTO BranchProductStock VALUES ('B30008', 'MY-08', 'P40008', 'SKU1008');
INSERT INTO BranchProductStock VALUES ('B30009', 'MY-09', 'P40009', 'SKU1009');
INSERT INTO BranchProductStock VALUES ('B30010', 'MY-10', 'P40010', 'SKU1010');

COMMIT;


-- ========== 19. BranchPromotionAvailability ========= 
INSERT INTO BranchPromotionAvailability VALUES ('B30001', 'MY-01', 'RAYA2023', 'PROMO001');
INSERT INTO BranchPromotionAvailability VALUES ('B30002', 'MY-02', 'MERDEKA23', 'PROMO002');
INSERT INTO BranchPromotionAvailability VALUES ('B30003', 'MY-03', 'MEMBERSHIP', 'PROMO003');
INSERT INTO BranchPromotionAvailability VALUES ('B30004', 'MY-04', 'CLEARANCE', 'PROMO004');
INSERT INTO BranchPromotionAvailability VALUES ('B30005', 'MY-05', 'NEWSTORE', 'PROMO005');
INSERT INTO BranchPromotionAvailability VALUES ('B30006', 'MY-06', 'WEEKEND', 'PROMO006');
INSERT INTO BranchPromotionAvailability VALUES ('B30007', 'MY-07', 'BULK2023', 'PROMO007');
INSERT INTO BranchPromotionAvailability VALUES ('B30008', 'MY-08', 'STUDENT', 'PROMO008');
INSERT INTO BranchPromotionAvailability VALUES ('B30009', 'MY-09', 'SENIOR', 'PROMO009');
INSERT INTO BranchPromotionAvailability VALUES ('B30010', 'MY-10', 'FLASHSALE', 'PROMO010');

COMMIT;


-- ========== 20. ProductSalesTransactionDetail ========= 
INSERT INTO ProductSalesTransactionDetail VALUES ('P40001', 'SKU1001', 'T60001', 'INV23001');
INSERT INTO ProductSalesTransactionDetail VALUES ('P40002', 'SKU1002', 'T60002', 'INV23002');
INSERT INTO ProductSalesTransactionDetail VALUES ('P40003', 'SKU1003', 'T60003', 'INV23003');
INSERT INTO ProductSalesTransactionDetail VALUES ('P40004', 'SKU1004', 'T60004', 'INV23004');
INSERT INTO ProductSalesTransactionDetail VALUES ('P40005', 'SKU1005', 'T60005', 'INV23005');
INSERT INTO ProductSalesTransactionDetail VALUES ('P40006', 'SKU1006', 'T60006', 'INV23006');
INSERT INTO ProductSalesTransactionDetail VALUES ('P40007', 'SKU1007', 'T60007', 'INV23007');
INSERT INTO ProductSalesTransactionDetail VALUES ('P40008', 'SKU1008', 'T60008', 'INV23008');
INSERT INTO ProductSalesTransactionDetail VALUES ('P40009', 'SKU1009', 'T60009', 'INV23009');
INSERT INTO ProductSalesTransactionDetail VALUES ('P40010', 'SKU1010', 'T60010', 'INV23010');

COMMIT;


-- ========== 21. ProductAuditCheck ========= 
INSERT INTO ProductAuditCheck VALUES ('P40001', 'SKU1001', 'AUD10001', 'LOG2023-001');
INSERT INTO ProductAuditCheck VALUES ('P40002', 'SKU1002', 'AUD10002', 'LOG2023-002');
INSERT INTO ProductAuditCheck VALUES ('P40003', 'SKU1003', 'AUD10003', 'LOG2023-003');
INSERT INTO ProductAuditCheck VALUES ('P40004', 'SKU1004', 'AUD10004', 'LOG2023-004');
INSERT INTO ProductAuditCheck VALUES ('P40005', 'SKU1005', 'AUD10005', 'LOG2023-005');
INSERT INTO ProductAuditCheck VALUES ('P40006', 'SKU1006', 'AUD10006', 'LOG2023-006');
INSERT INTO ProductAuditCheck VALUES ('P40007', 'SKU1007', 'AUD10007', 'LOG2023-007');
INSERT INTO ProductAuditCheck VALUES ('P40008', 'SKU1008', 'AUD10008', 'LOG2023-008');
INSERT INTO ProductAuditCheck VALUES ('P40009', 'SKU1009', 'AUD10009', 'LOG2023-009');
INSERT INTO ProductAuditCheck VALUES ('P40010', 'SKU1010', 'AUD10010', 'LOG2023-010');

COMMIT;

-- ========== 22. ProductProcurementRequest ========= 

INSERT INTO ProductProcurementRequest VALUES ('P40001', 'SKU1001', 'PROC10001', 'OC2023-001');
INSERT INTO ProductProcurementRequest VALUES ('P40002', 'SKU1002', 'PROC10002', 'OC2023-002');
INSERT INTO ProductProcurementRequest VALUES ('P40003', 'SKU1003', 'PROC10003', 'OC2023-003');
INSERT INTO ProductProcurementRequest VALUES ('P40004', 'SKU1004', 'PROC10004', 'OC2023-004');
INSERT INTO ProductProcurementRequest VALUES ('P40005', 'SKU1005', 'PROC10005', 'OC2023-005');
INSERT INTO ProductProcurementRequest VALUES ('P40006', 'SKU1006', 'PROC10006', 'OC2023-006');
INSERT INTO ProductProcurementRequest VALUES ('P40007', 'SKU1007', 'PROC10007', 'OC2023-007');
INSERT INTO ProductProcurementRequest VALUES ('P40008', 'SKU1008', 'PROC10008', 'OC2023-008');
INSERT INTO ProductProcurementRequest VALUES ('P40009', 'SKU1009', 'PROC10009', 'OC2023-009');
INSERT INTO ProductProcurementRequest VALUES ('P40010', 'SKU1010', 'PROC10010', 'OC2023-010');

COMMIT;


-- ========== 23. ProductDeliveryShipment ========= rik (23 -> 33)
INSERT INTO ProductDeliveryShipment VALUES ('P40001', 'SKU1001', 'DL10001', 'LGN23001');
INSERT INTO ProductDeliveryShipment VALUES ('P40002', 'SKU1002', 'DL10002', 'LGN23002');
INSERT INTO ProductDeliveryShipment VALUES ('P40003', 'SKU1003', 'DL10003', 'LGN23003');
INSERT INTO ProductDeliveryShipment VALUES ('P40004', 'SKU1004', 'DL10004', 'LGN23004');
INSERT INTO ProductDeliveryShipment VALUES ('P40005', 'SKU1005', 'DL10005', 'LGN23005');
INSERT INTO ProductDeliveryShipment VALUES ('P40006', 'SKU1006', 'DL10006', 'LGN23006');
INSERT INTO ProductDeliveryShipment VALUES ('P40007', 'SKU1007', 'DL10007', 'LGN23007');
INSERT INTO ProductDeliveryShipment VALUES ('P40008', 'SKU1008', 'DL10008', 'LGN23008');
INSERT INTO ProductDeliveryShipment VALUES ('P40009', 'SKU1009', 'DL10009', 'LGN23009');
INSERT INTO ProductDeliveryShipment VALUES ('P40010', 'SKU1010', 'DL10010', 'LGN23010');
COMMIT;

-- ========== 24. ProductComplaintReport ========= 
INSERT INTO ProductComplaintReport VALUES ('P40001', 'SKU1001', 'CMP10001', 'CS2023-001');
INSERT INTO ProductComplaintReport VALUES ('P40002', 'SKU1002', 'CMP10002', 'CS2023-002');
INSERT INTO ProductComplaintReport VALUES ('P40003', 'SKU1003', 'CMP10003', 'CS2023-003');
INSERT INTO ProductComplaintReport VALUES ('P40004', 'SKU1004', 'CMP10004', 'CS2023-004');
INSERT INTO ProductComplaintReport VALUES ('P40005', 'SKU1005', 'CMP10005', 'CS2023-005');
INSERT INTO ProductComplaintReport VALUES ('P40006', 'SKU1006', 'CMP10006', 'CS2023-006');
INSERT INTO ProductComplaintReport VALUES ('P40007', 'SKU1007', 'CMP10007', 'CS2023-007');
INSERT INTO ProductComplaintReport VALUES ('P40008', 'SKU1008', 'CMP10008', 'CS2023-008');
INSERT INTO ProductComplaintReport VALUES ('P40009', 'SKU1009', 'CMP10009', 'CS2023-009');
INSERT INTO ProductComplaintReport VALUES ('P40010', 'SKU1010', 'CMP10010', 'CS2023-010');
COMMIT;


-- ========== 25. PromotionProductLink ========= 
INSERT INTO PromotionProductLink VALUES ('RAYA2023', 'PROMO001', 'P40001', 'SKU1001');
INSERT INTO PromotionProductLink VALUES ('MERDEKA23', 'PROMO002', 'P40002', 'SKU1002');
INSERT INTO PromotionProductLink VALUES ('MEMBERSHIP', 'PROMO003', 'P40003', 'SKU1003');
INSERT INTO PromotionProductLink VALUES ('CLEARANCE', 'PROMO004', 'P40004', 'SKU1004');
INSERT INTO PromotionProductLink VALUES ('NEWSTORE', 'PROMO005', 'P40005', 'SKU1005');
INSERT INTO PromotionProductLink VALUES ('WEEKEND', 'PROMO006', 'P40006', 'SKU1006');
INSERT INTO PromotionProductLink VALUES ('BULK2023', 'PROMO007', 'P40007', 'SKU1007');
INSERT INTO PromotionProductLink VALUES ('STUDENT', 'PROMO008', 'P40008', 'SKU1008');
INSERT INTO PromotionProductLink VALUES ('SENIOR', 'PROMO009', 'P40009', 'SKU1009');
INSERT INTO PromotionProductLink VALUES ('FLASHSALE', 'PROMO010', 'P40010', 'SKU1010');
COMMIT;



-- ========== 26. ProductReturnInventoryUpdate ========= 
INSERT INTO ProductReturnInventoryUpdate VALUES ('RTN10001', 'RR23001', 'INV50001', 'WH-A12');
INSERT INTO ProductReturnInventoryUpdate VALUES ('RTN10002', 'RR23002', 'INV50002', 'WH-B07');
INSERT INTO ProductReturnInventoryUpdate VALUES ('RTN10003', 'RR23003', 'INV50003', 'WH-C03');
INSERT INTO ProductReturnInventoryUpdate VALUES ('RTN10004', 'RR23004', 'INV50004', 'WH-D15');
INSERT INTO ProductReturnInventoryUpdate VALUES ('RTN10005', 'RR23005', 'INV50005', 'WH-A08');
INSERT INTO ProductReturnInventoryUpdate VALUES ('RTN10006', 'RR23006', 'INV50006', 'WH-E22');
INSERT INTO ProductReturnInventoryUpdate VALUES ('RTN10007', 'RR23007', 'INV50007', 'WH-F09');
INSERT INTO ProductReturnInventoryUpdate VALUES ('RTN10008', 'RR23008', 'INV50008', 'WH-G14');
INSERT INTO ProductReturnInventoryUpdate VALUES ('RTN10009', 'RR23009', 'INV50009', 'WH-H05');
INSERT INTO ProductReturnInventoryUpdate VALUES ('RTN10010', 'RR23010', 'INV50010', 'WH-J18');
COMMIT;




-- ========== 27. ProductReturnProductDetail ========= 
INSERT INTO ProductReturnProductDetail VALUES ('RTN10001', 'RR23001', 'P40001', 'SKU1001');
INSERT INTO ProductReturnProductDetail VALUES ('RTN10002', 'RR23002', 'P40002', 'SKU1002');
INSERT INTO ProductReturnProductDetail VALUES ('RTN10003', 'RR23003', 'P40003', 'SKU1003');
INSERT INTO ProductReturnProductDetail VALUES ('RTN10004', 'RR23004', 'P40004', 'SKU1004');
INSERT INTO ProductReturnProductDetail VALUES ('RTN10005', 'RR23005', 'P40005', 'SKU1005');
INSERT INTO ProductReturnProductDetail VALUES ('RTN10006', 'RR23006', 'P40006', 'SKU1006');
INSERT INTO ProductReturnProductDetail VALUES ('RTN10007', 'RR23007', 'P40007', 'SKU1007');
INSERT INTO ProductReturnProductDetail VALUES ('RTN10008', 'RR23008', 'P40008', 'SKU1008');
INSERT INTO ProductReturnProductDetail VALUES ('RTN10009', 'RR23009', 'P40009', 'SKU1009');
INSERT INTO ProductReturnProductDetail VALUES ('RTN10010', 'RR23010', 'P40010', 'SKU1010');
COMMIT;


-- ========== 28. ComplaintMaintenanceAction =========
INSERT INTO ComplaintMaintenanceAction VALUES ('CMP10001', 'CS2023-001', 'MT10001', 'WO2023-001');
INSERT INTO ComplaintMaintenanceAction VALUES ('CMP10002', 'CS2023-002', 'MT10002', 'WO2023-002');
INSERT INTO ComplaintMaintenanceAction VALUES ('CMP10003', 'CS2023-003', 'MT10003', 'WO2023-003');
INSERT INTO ComplaintMaintenanceAction VALUES ('CMP10004', 'CS2023-004', 'MT10004', 'WO2023-004');
INSERT INTO ComplaintMaintenanceAction VALUES ('CMP10005', 'CS2023-005', 'MT10005', 'WO2023-005');
INSERT INTO ComplaintMaintenanceAction VALUES ('CMP10006', 'CS2023-006', 'MT10006', 'WO2023-006');
INSERT INTO ComplaintMaintenanceAction VALUES ('CMP10007', 'CS2023-007', 'MT10007', 'WO2023-007');
INSERT INTO ComplaintMaintenanceAction VALUES ('CMP10008', 'CS2023-008', 'MT10008', 'WO2023-008');
INSERT INTO ComplaintMaintenanceAction VALUES ('CMP10009', 'CS2023-009', 'MT10009', 'WO2023-009');
INSERT INTO ComplaintMaintenanceAction VALUES ('CMP10010', 'CS2023-010', 'MT10010', 'WO2023-010');
COMMIT;



-- ========== 29. ComplaintReviewFeedback  ========= 
INSERT INTO ComplaintReviewFeedback VALUES ('CMP10001', 'CS2023-001', 'REV10001', 'FB23001');
INSERT INTO ComplaintReviewFeedback VALUES ('CMP10002', 'CS2023-002', 'REV10002', 'FB23002');
INSERT INTO ComplaintReviewFeedback VALUES ('CMP10003', 'CS2023-003', 'REV10003', 'FB23003');
INSERT INTO ComplaintReviewFeedback VALUES ('CMP10004', 'CS2023-004', 'REV10004', 'FB23004');
INSERT INTO ComplaintReviewFeedback VALUES ('CMP10005', 'CS2023-005', 'REV10005', 'FB23005');
INSERT INTO ComplaintReviewFeedback VALUES ('CMP10006', 'CS2023-006', 'REV10006', 'FB23006');
INSERT INTO ComplaintReviewFeedback VALUES ('CMP10007', 'CS2023-007', 'REV10007', 'FB23007');
INSERT INTO ComplaintReviewFeedback VALUES ('CMP10008', 'CS2023-008', 'REV10008', 'FB23008');
INSERT INTO ComplaintReviewFeedback VALUES ('CMP10009', 'CS2023-009', 'REV10009', 'FB23009');
INSERT INTO ComplaintReviewFeedback VALUES ('CMP10010', 'CS2023-010', 'REV10010', 'FB23010');
COMMIT;



-- ========== 30. ComplaintTrainingResponse ========= 
INSERT INTO ComplaintTrainingResponse VALUES ('CMP10001', 'CS2023-001', 'TR10001', 'T2023-001');
INSERT INTO ComplaintTrainingResponse VALUES ('CMP10002', 'CS2023-002', 'TR10002', 'T2023-002');
INSERT INTO ComplaintTrainingResponse VALUES ('CMP10003', 'CS2023-003', 'TR10003', 'T2023-003');
INSERT INTO ComplaintTrainingResponse VALUES ('CMP10004', 'CS2023-004', 'TR10004', 'T2023-004');
INSERT INTO ComplaintTrainingResponse VALUES ('CMP10005', 'CS2023-005', 'TR10005', 'T2023-005');
INSERT INTO ComplaintTrainingResponse VALUES ('CMP10006', 'CS2023-006', 'TR10006', 'T2023-006');
INSERT INTO ComplaintTrainingResponse VALUES ('CMP10007', 'CS2023-007', 'TR10007', 'T2023-007');
INSERT INTO ComplaintTrainingResponse VALUES ('CMP10008', 'CS2023-008', 'TR10008', 'T2023-008');
INSERT INTO ComplaintTrainingResponse VALUES ('CMP10009', 'CS2023-009', 'TR10009', 'T2023-009');
INSERT INTO ComplaintTrainingResponse VALUES ('CMP10010', 'CS2023-010', 'TR10010', 'T2023-010');
COMMIT;


-- ========== 31. DeliveryInventoryContents ========= 
INSERT INTO DeliveryInventoryContents VALUES ('DL10001', 'LGN23001', 'INV50001', 'WH-A12');
INSERT INTO DeliveryInventoryContents VALUES ('DL10002', 'LGN23002', 'INV50002', 'WH-B07');
INSERT INTO DeliveryInventoryContents VALUES ('DL10003', 'LGN23003', 'INV50003', 'WH-C03');
INSERT INTO DeliveryInventoryContents VALUES ('DL10004', 'LGN23004', 'INV50004', 'WH-D15');
INSERT INTO DeliveryInventoryContents VALUES ('DL10005', 'LGN23005', 'INV50005', 'WH-A08');
INSERT INTO DeliveryInventoryContents VALUES ('DL10006', 'LGN23006', 'INV50006', 'WH-E22');
INSERT INTO DeliveryInventoryContents VALUES ('DL10007', 'LGN23007', 'INV50007', 'WH-F09');
INSERT INTO DeliveryInventoryContents VALUES ('DL10008', 'LGN23008', 'INV50008', 'WH-G14');
INSERT INTO DeliveryInventoryContents VALUES ('DL10009', 'LGN23009', 'INV50009', 'WH-H05');
INSERT INTO DeliveryInventoryContents VALUES ('DL10010', 'LGN23010', 'INV50010', 'WH-J18');
COMMIT;


-- ========== 32. ProcurementInventoryRequest ========= 
INSERT INTO ProcurementInventoryRequest VALUES ('PROC10001', 'OC2023-001', 'INV50001', 'WH-A12');
INSERT INTO ProcurementInventoryRequest VALUES ('PROC10002', 'OC2023-002', 'INV50002', 'WH-B07');
INSERT INTO ProcurementInventoryRequest VALUES ('PROC10003', 'OC2023-003', 'INV50003', 'WH-C03');
INSERT INTO ProcurementInventoryRequest VALUES ('PROC10004', 'OC2023-004', 'INV50004', 'WH-D15');
INSERT INTO ProcurementInventoryRequest VALUES ('PROC10005', 'OC2023-005', 'INV50005', 'WH-A08');
INSERT INTO ProcurementInventoryRequest VALUES ('PROC10006', 'OC2023-006', 'INV50006', 'WH-E22');
INSERT INTO ProcurementInventoryRequest VALUES ('PROC10007', 'OC2023-007', 'INV50007', 'WH-F09');
INSERT INTO ProcurementInventoryRequest VALUES ('PROC10008', 'OC2023-008', 'INV50008', 'WH-G14');
INSERT INTO ProcurementInventoryRequest VALUES ('PROC10009', 'OC2023-009', 'INV50009', 'WH-H05');
INSERT INTO ProcurementInventoryRequest VALUES ('PROC10010', 'OC2023-010', 'INV50010', 'WH-J18');
COMMIT;


-- ========== 33. ProcurementWarehouse ========= 
INSERT INTO ProcurementWarehouse VALUES ('PROC10001', 'OC2023-001', 'WH1001', 'Z001');
INSERT INTO ProcurementWarehouse VALUES ('PROC10002', 'OC2023-002', 'WH1002', 'Z002');
INSERT INTO ProcurementWarehouse VALUES ('PROC10003', 'OC2023-003', 'WH1003', 'Z003');
INSERT INTO ProcurementWarehouse VALUES ('PROC10004', 'OC2023-004', 'WH1004', 'Z004');
INSERT INTO ProcurementWarehouse VALUES ('PROC10005', 'OC2023-005', 'WH1005', 'Z005');
INSERT INTO ProcurementWarehouse VALUES ('PROC10006', 'OC2023-006', 'WH1006', 'Z006');
INSERT INTO ProcurementWarehouse VALUES ('PROC10007', 'OC2023-007', 'WH1007', 'Z007');
INSERT INTO ProcurementWarehouse VALUES ('PROC10008', 'OC2023-008', 'WH1008', 'Z008');
INSERT INTO ProcurementWarehouse VALUES ('PROC10009', 'OC2023-009', 'WH1009', 'Z009');
INSERT INTO ProcurementWarehouse VALUES ('PROC10010', 'OC2023-010', 'WH1010', 'Z010');
COMMIT;

-- ========== 34. AuditComplaintInspection ========= iskandar (34 -> 44)
INSERT INTO AuditComplaintInspection VALUES ('AUD10001', 'LOG2023-001', 'CMP10001', 'CS2023-001');
INSERT INTO AuditComplaintInspection VALUES ('AUD10002', 'LOG2023-002', 'CMP10002', 'CS2023-002');
INSERT INTO AuditComplaintInspection VALUES ('AUD10003', 'LOG2023-003', 'CMP10003', 'CS2023-003');
INSERT INTO AuditComplaintInspection VALUES ('AUD10004', 'LOG2023-004', 'CMP10004', 'CS2023-004');
INSERT INTO AuditComplaintInspection VALUES ('AUD10005', 'LOG2023-005', 'CMP10005', 'CS2023-005');
INSERT INTO AuditComplaintInspection VALUES ('AUD10006', 'LOG2023-006', 'CMP10006', 'CS2023-006');
INSERT INTO AuditComplaintInspection VALUES ('AUD10007', 'LOG2023-007', 'CMP10007', 'CS2023-007');
INSERT INTO AuditComplaintInspection VALUES ('AUD10008', 'LOG2023-008', 'CMP10008', 'CS2023-008');
INSERT INTO AuditComplaintInspection VALUES ('AUD10009', 'LOG2023-009', 'CMP10009', 'CS2023-009');
INSERT INTO AuditComplaintInspection VALUES ('AUD10010', 'LOG2023-010', 'CMP10010', 'CS2023-010');
COMMIT;

-- ========== 35. AuditInventoryCheck ========= 
INSERT INTO AuditInventoryCheck VALUES ('AUD10001', 'LOG2023-001', 'INV50001', 'WH-A12');
INSERT INTO AuditInventoryCheck VALUES ('AUD10002', 'LOG2023-002', 'INV50002', 'WH-B07');
INSERT INTO AuditInventoryCheck VALUES ('AUD10003', 'LOG2023-003', 'INV50003', 'WH-C03');
INSERT INTO AuditInventoryCheck VALUES ('AUD10004', 'LOG2023-004', 'INV50004', 'WH-D15');
INSERT INTO AuditInventoryCheck VALUES ('AUD10005', 'LOG2023-005', 'INV50005', 'WH-A08');
INSERT INTO AuditInventoryCheck VALUES ('AUD10006', 'LOG2023-006', 'INV50006', 'WH-E22');
INSERT INTO AuditInventoryCheck VALUES ('AUD10007', 'LOG2023-007', 'INV50007', 'WH-F09');
INSERT INTO AuditInventoryCheck VALUES ('AUD10008', 'LOG2023-008', 'INV50008', 'WH-G14');
INSERT INTO AuditInventoryCheck VALUES ('AUD10009', 'LOG2023-009', 'INV50009', 'WH-H05');
INSERT INTO AuditInventoryCheck VALUES ('AUD10010', 'LOG2023-010', 'INV50010', 'WH-J18');
COMMIT;


-- ========== 36. AuditTrainingAssessment ========= 
INSERT INTO AuditTrainingAssessment VALUES ('AUD10001', 'LOG2023-001', 'TR10001', 'T2023-001');
INSERT INTO AuditTrainingAssessment VALUES ('AUD10002', 'LOG2023-002', 'TR10002', 'T2023-002');
INSERT INTO AuditTrainingAssessment VALUES ('AUD10003', 'LOG2023-003', 'TR10003', 'T2023-003');
INSERT INTO AuditTrainingAssessment VALUES ('AUD10004', 'LOG2023-004', 'TR10004', 'T2023-004');
INSERT INTO AuditTrainingAssessment VALUES ('AUD10005', 'LOG2023-005', 'TR10005', 'T2023-005');
INSERT INTO AuditTrainingAssessment VALUES ('AUD10006', 'LOG2023-006', 'TR10006', 'T2023-006');
INSERT INTO AuditTrainingAssessment VALUES ('AUD10007', 'LOG2023-007', 'TR10007', 'T2023-007');
INSERT INTO AuditTrainingAssessment VALUES ('AUD10008', 'LOG2023-008', 'TR10008', 'T2023-008');
INSERT INTO AuditTrainingAssessment VALUES ('AUD10009', 'LOG2023-009', 'TR10009', 'T2023-009');
INSERT INTO AuditTrainingAssessment VALUES ('AUD10010', 'LOG2023-010', 'TR10010', 'T2023-010');

COMMIT;


-- ========== 37. AuditITSystemEvaluation ========= 
INSERT INTO AuditITSystemEvaluation VALUES ('AUD10001', 'LOG2023-001', 'IT10001', 'SRV-MY-01');
INSERT INTO AuditITSystemEvaluation VALUES ('AUD10002', 'LOG2023-002', 'IT10002', 'SRV-MY-02');
INSERT INTO AuditITSystemEvaluation VALUES ('AUD10003', 'LOG2023-003', 'IT10003', 'SRV-MY-03');
INSERT INTO AuditITSystemEvaluation VALUES ('AUD10004', 'LOG2023-004', 'IT10004', 'SRV-MY-04');
INSERT INTO AuditITSystemEvaluation VALUES ('AUD10005', 'LOG2023-005', 'IT10005', 'SRV-MY-05');
INSERT INTO AuditITSystemEvaluation VALUES ('AUD10006', 'LOG2023-006', 'IT10006', 'SRV-MY-06');
INSERT INTO AuditITSystemEvaluation VALUES ('AUD10007', 'LOG2023-007', 'IT10007', 'SRV-MY-07');
INSERT INTO AuditITSystemEvaluation VALUES ('AUD10008', 'LOG2023-008', 'IT10008', 'SRV-MY-08');
INSERT INTO AuditITSystemEvaluation VALUES ('AUD10009', 'LOG2023-009', 'IT10009', 'SRV-MY-09');
INSERT INTO AuditITSystemEvaluation VALUES ('AUD10010', 'LOG2023-010', 'IT10010', 'SRV-MY-10');
COMMIT;


-- ========== 38. AuditLoyaltyProgramCompliance ========= 
INSERT INTO AuditLoyaltyProgramCompliance VALUES ('AUD10001', 'LOG2023-001', 'LP10001', 'T1');
INSERT INTO AuditLoyaltyProgramCompliance VALUES ('AUD10002', 'LOG2023-002', 'LP10002', 'T2');
INSERT INTO AuditLoyaltyProgramCompliance VALUES ('AUD10003', 'LOG2023-003', 'LP10003', 'T3');
INSERT INTO AuditLoyaltyProgramCompliance VALUES ('AUD10004', 'LOG2023-004', 'LP10004', 'T4');
INSERT INTO AuditLoyaltyProgramCompliance VALUES ('AUD10005', 'LOG2023-005', 'LP10005', 'T5');
INSERT INTO AuditLoyaltyProgramCompliance VALUES ('AUD10006', 'LOG2023-006', 'LP10006', 'T6');
INSERT INTO AuditLoyaltyProgramCompliance VALUES ('AUD10007', 'LOG2023-007', 'LP10007', 'T7');
INSERT INTO AuditLoyaltyProgramCompliance VALUES ('AUD10008', 'LOG2023-008', 'LP10008', 'T8');
INSERT INTO AuditLoyaltyProgramCompliance VALUES ('AUD10009', 'LOG2023-009', 'LP10009', 'T9');
INSERT INTO AuditLoyaltyProgramCompliance VALUES ('AUD10010', 'LOG2023-010', 'LP10010', 'T10');
COMMIT;


-- ========== 39. AuditMaintenanceFollowUp ========= 
INSERT INTO AuditMaintenanceFollowUp VALUES ('AUD10001', 'LOG2023-001', 'MT10001', 'WO2023-001');
INSERT INTO AuditMaintenanceFollowUp VALUES ('AUD10002', 'LOG2023-002', 'MT10002', 'WO2023-002');
INSERT INTO AuditMaintenanceFollowUp VALUES ('AUD10003', 'LOG2023-003', 'MT10003', 'WO2023-003');
INSERT INTO AuditMaintenanceFollowUp VALUES ('AUD10004', 'LOG2023-004', 'MT10004', 'WO2023-004');
INSERT INTO AuditMaintenanceFollowUp VALUES ('AUD10005', 'LOG2023-005', 'MT10005', 'WO2023-005');
INSERT INTO AuditMaintenanceFollowUp VALUES ('AUD10006', 'LOG2023-006', 'MT10006', 'WO2023-006');
INSERT INTO AuditMaintenanceFollowUp VALUES ('AUD10007', 'LOG2023-007', 'MT10007', 'WO2023-007');
INSERT INTO AuditMaintenanceFollowUp VALUES ('AUD10008', 'LOG2023-008', 'MT10008', 'WO2023-008');
INSERT INTO AuditMaintenanceFollowUp VALUES ('AUD10009', 'LOG2023-009', 'MT10009', 'WO2023-009');
INSERT INTO AuditMaintenanceFollowUp VALUES ('AUD10010', 'LOG2023-010', 'MT10010', 'WO2023-010');
COMMIT;


-- ========== 40. WarehouseProductStock ========= 
INSERT INTO WarehouseProductStock VALUES ('WH1001', 'Z001', 'P40001', 'SKU1001');
INSERT INTO WarehouseProductStock VALUES ('WH1002', 'Z002', 'P40002', 'SKU1002');
INSERT INTO WarehouseProductStock VALUES ('WH1003', 'Z003', 'P40003', 'SKU1003');
INSERT INTO WarehouseProductStock VALUES ('WH1004', 'Z004', 'P40004', 'SKU1004');
INSERT INTO WarehouseProductStock VALUES ('WH1005', 'Z005', 'P40005', 'SKU1005');
INSERT INTO WarehouseProductStock VALUES ('WH1006', 'Z006', 'P40006', 'SKU1006');
INSERT INTO WarehouseProductStock VALUES ('WH1007', 'Z007', 'P40007', 'SKU1007');
INSERT INTO WarehouseProductStock VALUES ('WH1008', 'Z008', 'P40008', 'SKU1008');
INSERT INTO WarehouseProductStock VALUES ('WH1009', 'Z009', 'P40009', 'SKU1009');
INSERT INTO WarehouseProductStock VALUES ('WH1010', 'Z010', 'P40010', 'SKU1010');
COMMIT;


-- ========== 41. WarehouseTrainingSession ========= 
INSERT INTO WarehouseTrainingSession VALUES ('WH1001', 'Z001', 'TR10001', 'T2023-001');
INSERT INTO WarehouseTrainingSession VALUES ('WH1002', 'Z002', 'TR10002', 'T2023-002');
INSERT INTO WarehouseTrainingSession VALUES ('WH1003', 'Z003', 'TR10003', 'T2023-003');
INSERT INTO WarehouseTrainingSession VALUES ('WH1004', 'Z004', 'TR10004', 'T2023-004');
INSERT INTO WarehouseTrainingSession VALUES ('WH1005', 'Z005', 'TR10005', 'T2023-005');
INSERT INTO WarehouseTrainingSession VALUES ('WH1006', 'Z006', 'TR10006', 'T2023-006');
INSERT INTO WarehouseTrainingSession VALUES ('WH1007', 'Z007', 'TR10007', 'T2023-007');
INSERT INTO WarehouseTrainingSession VALUES ('WH1008', 'Z008', 'TR10008', 'T2023-008');
INSERT INTO WarehouseTrainingSession VALUES ('WH1009', 'Z009', 'TR10009', 'T2023-009');
INSERT INTO WarehouseTrainingSession VALUES ('WH1010', 'Z010', 'TR10010', 'T2023-010');
COMMIT;


-- ========== 42. WarehouseMaintenanceRecord ========= 
INSERT INTO WarehouseMaintenanceRecord VALUES ('WH1001', 'Z001', 'MT10001', 'WO2023-001');
INSERT INTO WarehouseMaintenanceRecord VALUES ('WH1002', 'Z002', 'MT10002', 'WO2023-002');
INSERT INTO WarehouseMaintenanceRecord VALUES ('WH1003', 'Z003', 'MT10003', 'WO2023-003');
INSERT INTO WarehouseMaintenanceRecord VALUES ('WH1004', 'Z004', 'MT10004', 'WO2023-004');
INSERT INTO WarehouseMaintenanceRecord VALUES ('WH1005', 'Z005', 'MT10005', 'WO2023-005');
INSERT INTO WarehouseMaintenanceRecord VALUES ('WH1006', 'Z006', 'MT10006', 'WO2023-006');
INSERT INTO WarehouseMaintenanceRecord VALUES ('WH1007', 'Z007', 'MT10007', 'WO2023-007');
INSERT INTO WarehouseMaintenanceRecord VALUES ('WH1008', 'Z008', 'MT10008', 'WO2023-008');
INSERT INTO WarehouseMaintenanceRecord VALUES ('WH1009', 'Z009', 'MT10009', 'WO2023-009');
INSERT INTO WarehouseMaintenanceRecord VALUES ('WH1010', 'Z010', 'MT10010', 'WO2023-010');
COMMIT;

-- ========== 43. MaintenanceITSystemService ========= 
INSERT INTO MaintenanceITSystemService VALUES ('MT10001', 'WO2023-001', 'IT10001', 'SRV-MY-01');
INSERT INTO MaintenanceITSystemService VALUES ('MT10002', 'WO2023-002', 'IT10002', 'SRV-MY-02');
INSERT INTO MaintenanceITSystemService VALUES ('MT10003', 'WO2023-003', 'IT10003', 'SRV-MY-03');
INSERT INTO MaintenanceITSystemService VALUES ('MT10004', 'WO2023-004', 'IT10004', 'SRV-MY-04');
INSERT INTO MaintenanceITSystemService VALUES ('MT10005', 'WO2023-005', 'IT10005', 'SRV-MY-05');
INSERT INTO MaintenanceITSystemService VALUES ('MT10006', 'WO2023-006', 'IT10006', 'SRV-MY-06');
INSERT INTO MaintenanceITSystemService VALUES ('MT10007', 'WO2023-007', 'IT10007', 'SRV-MY-07');
INSERT INTO MaintenanceITSystemService VALUES ('MT10008', 'WO2023-008', 'IT10008', 'SRV-MY-08');
INSERT INTO MaintenanceITSystemService VALUES ('MT10009', 'WO2023-009', 'IT10009', 'SRV-MY-09');
INSERT INTO MaintenanceITSystemService VALUES ('MT10010', 'WO2023-010', 'IT10010', 'SRV-MY-10');
COMMIT;

-- ========== 44. ITSystemLoyaltyProgram ========= 
INSERT INTO ITSystemLoyaltyProgram VALUES ('IT10001', 'SRV-MY-01', 'LP10001', 'T1');
INSERT INTO ITSystemLoyaltyProgram VALUES ('IT10002', 'SRV-MY-02', 'LP10002', 'T2');
INSERT INTO ITSystemLoyaltyProgram VALUES ('IT10003', 'SRV-MY-03', 'LP10003', 'T3');
INSERT INTO ITSystemLoyaltyProgram VALUES ('IT10004', 'SRV-MY-04', 'LP10004', 'T4');
INSERT INTO ITSystemLoyaltyProgram VALUES ('IT10005', 'SRV-MY-05', 'LP10005', 'T5');
INSERT INTO ITSystemLoyaltyProgram VALUES ('IT10006', 'SRV-MY-06', 'LP10006', 'T6');
INSERT INTO ITSystemLoyaltyProgram VALUES ('IT10007', 'SRV-MY-07', 'LP10007', 'T7');
INSERT INTO ITSystemLoyaltyProgram VALUES ('IT10008', 'SRV-MY-08', 'LP10008', 'T8');
INSERT INTO ITSystemLoyaltyProgram VALUES ('IT10009', 'SRV-MY-09', 'LP10009', 'T9');
INSERT INTO ITSystemLoyaltyProgram VALUES ('IT10010', 'SRV-MY-10', 'LP10010', 'T10');
COMMIT;


-- =============================================
-- SHOW ALL DATA IN TABLES OF MR. DIY DATABASE
-- =============================================

-- ========== 21 ENTITIES TABLE =========
SELECT * FROM Person;
SELECT * FROM Product;
SELECT * FROM Warehouse;
SELECT * FROM LoyaltyProgram;
SELECT * FROM Employee;
SELECT * FROM Customer;
SELECT * FROM Supplier;
SELECT * FROM Branch;
SELECT * FROM Maintenance;
SELECT * FROM Training;
SELECT * FROM ITSystem;
SELECT * FROM Inventory;
SELECT * FROM Procurement;
SELECT * FROM Promotion;
SELECT * FROM SalesTransaction;
SELECT * FROM Payment;
SELECT * FROM Delivery;
SELECT * FROM Complaint;
SELECT * FROM ProductReturn;
SELECT * FROM Review;
SELECT * FROM AuditActivity;

-- ========== 44 EXPLOSION TABLE ========= 
SELECT * FROM PersonReviewSubmission;
SELECT * FROM PersonBranchInteraction;
SELECT * FROM PersonComplaintRecord;
SELECT * FROM PersonProductInteraction;
SELECT * FROM PersonPaymentTransaction;
SELECT * FROM PersonProductReturnRequest;
SELECT * FROM PersonDeliveryRecord;
SELECT * FROM CustomerPromotionRedemption;
SELECT * FROM CustomerSalesTransaction;
SELECT * FROM EmployeeCustomerSupport;
SELECT * FROM EmployeeITSystemAccess;
SELECT * FROM EmployeeTrainingEnrollment;
SELECT * FROM EmployeeInventoryHandling;
SELECT * FROM EmployeeMaintenanceAssignment;
SELECT * FROM EmployeeWarehouseAssignment;
SELECT * FROM SupplierAuditInspection;
SELECT * FROM SupplierInventorySupply;
SELECT * FROM BranchProductStock;
SELECT * FROM BranchPromotionAvailability;
SELECT * FROM ProductSalesTransactionDetail;
SELECT * FROM ProductAuditCheck;
SELECT * FROM ProductProcurementRequest;
SELECT * FROM ProductDeliveryShipment;
SELECT * FROM ProductComplaintReport;
SELECT * FROM PromotionProductLink;
SELECT * FROM ProductReturnInventoryUpdate;
SELECT * FROM ProductReturnProductDetail;
SELECT * FROM ComplaintMaintenanceAction;
SELECT * FROM ComplaintReviewFeedback;
SELECT * FROM ComplaintTrainingResponse;
SELECT * FROM DeliveryInventoryContents;
SELECT * FROM ProcurementInventoryRequest;
SELECT * FROM ProcurementWarehouse;
SELECT * FROM AuditComplaintInspection;
SELECT * FROM AuditInventoryCheck;
SELECT * FROM AuditTrainingAssessment;
SELECT * FROM AuditITSystemEvaluation;
SELECT * FROM AuditLoyaltyProgramCompliance;
SELECT * FROM AuditMaintenanceFollowUp;
SELECT * FROM WarehouseProductStock;
SELECT * FROM WarehouseTrainingSession;
SELECT * FROM WarehouseMaintenanceRecord;
SELECT * FROM MaintenanceITSystemService;
SELECT * FROM ITSystemLoyaltyProgram;
