-- SQL Project by Jignesh N. Revankar


Create Database mysql_project;
Use mysql_project;

CREATE TABLE suppliers(
id int not null PRIMARY KEY,
supplier varchar(50) not null
);

DESC suppliers;

INSERT INTO suppliers (id,supplier)
VALUES
(1,'ShockWave Tech'),
(2,'CDW'),
(3,'Acme Tech'),
(4,'CloudTail'),
(5,'Alpha Seller');

SELECT * from suppliers;

CREATE TABLE products (
id int not null primary key,
ProductName varchar(100) not null,
PartNumber varchar(100) not null,
ProductLabel varchar(100) not null,
StartingInventory int not null default 1,
InventoryReceived int default 0,
InventoryShipped int default 0,
InventoryOnHand int default 0,
MinimumRequired int default 1
);

DESC products;

INSERT INTO products (id,ProductName,PartNumber,ProductLabel,StartingInventory,InventoryReceived,InventoryShipped,InventoryOnHand,MinimumRequired)
VALUES
(101,'Product 1','IV374','Label A',100,50,25,120,12),
(102,'Product 2','NK245','Label A',200,60,25,340,11),
(103,'Product 3','LC245','Label B',180,30,35,180,45),
(104,'Product 4','VC345','Label E',100,40,25,221,25),
(105,'Product 5','MR245','Label C',160,50,25,120,12),
(106,'Product 6','QM935','Label B',100,51,56,260,19),
(107,'Product 7','MR545','Label B',190,30,22,198,88),
(108,'Product 8','MO888','Label E',110,46,26,134,200),
(109,'Product 9','VE105','Label C',240,90,85,321,67),
(110,'Product 10','IW645','Label B',810,20,55,220,127),
(111,'Product 11','QB345','Label A',188,54,100,200,100),
(112,'Product 12','OT376','Label A',105,70,75,90,22),
(113,'Product 13','MC645','Label A',179,53,235,50,129),
(114,'Product 14','IX848','Label D',456,64,53,60,102),
(115,'Product 15','KE145','Label A',180,52,100,120,12),
(116,'Product 16','QB343','Label C',120,50,45,202,25),
(117,'Product 17','RU327','Label B',230,96,15,111,11),
(118,'Product 18','YC045','Label D',110,10,15,110,119),
(119,'Product 19','DP365','Label A',100,50,26,320,52),
(120,'Product 20','WX222','Label E',187,43,27,80,65),
(121,'Product 21','MG245','Label B',130,80,21,240,31),
(122,'Product 22','KZ345','Label D',230,40,45,287,11),
(123,'Product 23','IV321','Label B',150,60,25,220,23),
(124,'Product 24','YN235','Label A',300,20,26,341,51),
(125,'Product 25','IK245','Label D',200,60,25,340,11),
(126,'Product 26','SK901','Label D',600,10,85,40,100),
(127,'Product 27','NL245','Label E',500,60,25,30,10),
(128,'Product 28','PE145','Label A',280,68,39,410,13),
(129,'Product 29','YA445','Label E',530,20,24,30,100),
(130,'Product 30','BN145','Label B',100,10,1,180,3),
(131,'Product 31','MS040','Label E',200,20,5,280,45),
(132,'Product 32','OC345','Label D',160,60,55,188,53),
(133,'Product 33','FH734','Label C',180,39,35,180,45),
(134,'Product 34','LE345','Label A',480,30,35,10,5),
(135,'Product 35','MF341','Label A',105,60,74,10,75),
(136,'Product 36','QJ345','Label B',170,30,65,140,79),
(137,'Product 37','IX345','Label D',190,60,79,18,54),
(138,'Product 38','SV445','Label C',180,30,35,180,45),
(139,'Product 39','TU343','Label A',230,50,75,280,125),
(140,'Product 40','NF365','Label A',560,80,65,10,42),
(141,'Product 41','SL326','Label B',290,86,25,31,95),
(142,'Product 42','BC340','Label C',500,20,250,21,73),
(143,'Product 43','WN344','Label E',180,40,55,17,55),
(144,'Product 44','QA345','Label D',940,30,25,241,133),
(145,'Product 45','DD349','Label D',100,43,25,51,23),
(146,'Product 46','GK825','Label D',300,49,25,221,64),
(147,'Product 47','AA145','Label B',100,80,7,221,85),
(148,'Product 48','XI314','Label B',370,40,75,521,65),
(149,'Product 49','WE212','Label A',280,90,225,22,40),
(150,'Product 50','VV309','Label C',165,64,65,22,10),
(151,'Product 51','NS245','Label E',260,20,55,123,22),
(152,'Product 52','GD245','Label B',120,50,23,124,42),
(153,'Product 53','LL295','Label E',150,58,22,80,178),
(154,'Product 54','NF245','Label A',160,50,25,120,12),
(155,'Product 55','LR545','Label E',760,80,75,120,15),
(156,'Product 56','II252','Label C',165,60,25,180,105),
(157,'Product 57','MD245','Label D',120,27,97,760,26),
(158,'Product 58','VD245','Label A',820,75,21,52,120),
(159,'Product 59','BR243','Label B',900,50,75,125,135),
(160,'Product 60','NE268','Label D',760,97,255,140,102),
(161,'Product 61','DB285','Label E',120,50,85,120,32),
(162,'Product 62','HH385','Label A',700,71,86,20,75),
(163,'Product 63','NZ395','Label B',200,51,76,260,57),
(164,'Product 64','ZY510','Label B',400,11,50,290,190),
(165,'Product 65','ND035','Label E',100,101,5,20,102),
(166,'Product 66','KF500','Label C',860,62,56,20,57),
(167,'Product 67','HJ301','Label A',830,26,58,267,19),
(168,'Product 68','BT240','Label D',500,21,89,76,98),
(169,'Product 69','EG035','Label B',820,80,63,42,75),
(170,'Product 70','NI045','Label D',700,40,27,48,70);

SELECT * from products;

CREATE TABLE orders (
id int not null PRIMARY KEY,
Title varchar(50) not null,
First varchar(50) not null,
Middle varchar(50),
Last varchar(50) not null,
ProductId int not null,
NumberShipped int not null,
OrderDate date not null,
FOREIGN KEY (ProductId) REFERENCES products (id)
);

DESC orders;

INSERT INTO orders (id,Title,First,Middle,Last,ProductId,NumberShipped,OrderDate)
VALUES
(1001,'Mr.','Rajesh','Arun','Rane',101,12,'2022-06-17'),
(1002,'Mr.','Raj','Tarun','Rane',151,10,'2022-03-18'),
(1003,'Mrs.','Tanvi','Sanjay','Kore',154,14,'2022-09-04'),
(1004,'Mr.','Shub','Anil','Mane',132,131,'2022-08-19'),
(1005,'Mr.','Rajesh','Arun','Gore',127,10,'2022-10-14'),
(1006,'Mr.','Manoj','Anand','Mane',116,12,'2023-06-02'),
(1007,'Mrs.','Riya','Arun','Chodankar',140,18,'2022-02-07'),
(1008,'Mr.','Ramesh','Arun','Sane',155,112,'2022-01-09'),
(1009,'Mrs.','Priyanka','Tarun','Rane',130,18,'2022-10-31'),
(1010,'Mr.','Sanjay','Arun','Bangar',121,112,'2023-04-11'),
(1011,'Mrs.','Riddhi','Pravin','Rane',123,27,'2022-10-10'),
(1012,'Mr.','Shyam','Anil','Raul',23,111,'2022-12-26'),
(1013,'Mr.','Sachin','Shyam','Parkar',134,18,'2023-08-19'),
(1014,'Mr.','Shubhman','Sunil','Gill',130,17,'2022-08-12'),
(1015,'Mrs.','Harman','Pravin','Kaur',115,28,'2022-10-16'),
(1016,'Mrs.','Alia','Shyam','Rane',115,42,'2022-05-10'),
(1017,'Mrs.','Riddhi','Pravin','Ganguly',125,24,'2022-01-01'),
(1018,'Mr.','Ramesh','Prakash','Patil',145,20,'2023-04-01'),
(1019,'Mrs.','Sara','Uday','Rane',123,27,'2023-08-09'),
(1020,'Mr.','Shubh','Rahul','Gill',115,27,'2022-09-15'),
(1021,'Mr.','Sachin','Anil','Rane',134,14,'2022-07-31'),
(1022,'Mr.','Veer','Anil','Gill',120,18,'2023-09-30'),
(1023,'Mrs.','Sara','Sanjit','Mane',123,27,'2022-08-11'),
(1024,'Mr.','Virat','Sachin','Sharma',110,17,'2022-08-12'),
(1025,'Mrs.','Sanchita','Yash','Kawle',145,27,'2022-02-09'),
(1026,'Mrs.','Sanyukta','Uday','Kaur',121,27,'2022-06-27'),
(1027,'Mrs.','Anita','Sanjay','Rane',139,27,'2023-03-09'),
(1028,'Mr.','Dhoni','Anil','Vichare',120,14,'2022-05-21'),
(1029,'Mr.','Ashwin','Sunil','Mane',144,34,'2022-11-30'),
(1030,'Mr.','Rachin','Uday','Sharma',127,33,'2022-11-12'),
(1031,'Mr.','Tanmay','Ruchil','Kale',120,14,'2022-08-12'),
(1032,'Mrs.','Suhana','Sanjit','Gore',117,45,'2023-02-06'),
(1033,'Mrs.','Riya','Ranjit','Tendukar',127,24,'2022-04-26'),
(1034,'Mrs.','Sara','Sanjay','Mane',135,27,'2022-09-11'),
(1035,'Mrs.','Anita','Amit','Kale',133,27,'2023-03-19'),
(1036,'Mr.','Sachin','Anil','Sharma',150,34,'2022-07-31'),
(1037,'Mr.','Rohit','Anil','Kohli',120,12,'2022-09-21'),
(1038,'Mr.','Sachin','Rohit','Vichare',126,14,'2022-06-19'),
(1039,'Mr.','Dhoni','Tanmay','Vichare',113,14,'2023-05-01'),
(1040,'Mr.','Sagar','Anil','Vichare',128,14,'2023-02-21'),
(1041,'Mrs.','Anuja','Anuj','Sharma',132,27,'2022-04-19'),
(1042,'Mrs.','Amita','Karan','Jadhav',128,26,'2022-11-20'),
(1043,'Mrs.','Siddhi','Sanjeet','Kishori',113,29,'2023-01-19'),
(1044,'Mrs.','Shanaya','Ajit','Sharma',129,27,'2023-07-19'),
(1045,'Mr.','Ruchil','Soham','Prabhu',124,54,'2022-09-21'),
(1046,'Mr.','Tanmay','Sanjay','Ghosh',144,14,'2023-08-25'),
(1047,'Mrs.','Simran','Kunal','Vichare',138,39,'2022-06-01'),
(1048,'Mr.','Rahul','Ajay','Kale',148,14,'2023-05-05'),
(1049,'Mrs.','Sonali','Ravindra','Kale',127,27,'2022-03-09'),
(1050,'Mrs.','Manali','Mayur','Patil',145,27,'2022-10-07'),
(1051,'Mrs.','Amruta','Rajesh','Mayekar',113,30,'2023-02-13'),
(1052,'Mrs.','Sanchita','Anil','Patil',118,37,'2023-04-19'),
(1053,'Mrs.','Mayuri','Rajesh','Pawar',110,27,'2023-04-07'),
(1054,'Mr.','Samay','Piyush','Sharma',116,24,'2022-07-12'),
(1055,'Mr.','Mayur','Amit','Koli',119,24,'2023-05-09'),
(1056,'Mrs.','Devika','Sharvil','Parab',150,27,'2022-11-24'),
(1057,'Mr.','Ashish','Sanjay','Shetye',138,19,'2023-09-25'),
(1058,'Mr.','Chinmay','Sanjay','Ghosh',150,14,'2023-08-25'),
(1059,'Mr.','Sushant','Arun','Deore',154,34,'2023-01-12'),
(1060,'Mrs.','Shamika','Sahil','Kore',115,27,'2023-08-01'),
(1061,'Mr.','Prakash','Arun','Kamble',128,19,'2023-02-25'),
(1062,'Mr.','Anuj','Purvesh','Jadhav',122,12,'2023-03-21'),
(1063,'Mr.','Ramesh','Yuvraj','Kohli',142,12,'2022-03-01'),
(1064,'Mrs.','Devika','Pratham','Parab',115,27,'2023-06-07'),
(1065,'Mrs.','Manali','Piyush','Sawant',120,27,'2022-09-09'),
(1066,'Mr.','Ojas','Rahul','Pawar',110,28,'2023-01-11'),
(1067,'Mr.','Shreyas','Virat','Sharma',145,15,'2023-03-04'),
(1068,'Mrs.','Shruti','Pravin','Parab',120,27,'2023-04-05'),
(1069,'Mrs.','Mayuri','Sarthak','Shetye',150,27,'2022-11-24'),
(1070,'Mrs.','Riddhi','Jasprit','Patil',140,27,'2022-12-20');

SELECT * from orders;

CREATE TABLE purchases (
id int not null PRIMARY KEY,
SupplierId int not null,
ProductId int not null,
NumberReceived int not null,
PurchaseDate date not null,
FOREIGN KEY (SupplierId) REFERENCES suppliers (id),
FOREIGN KEY (ProductId) REFERENCES products (id)
);

DESC purchases;

INSERT INTO purchases(id,SupplierId,ProductId,NumberReceived,PurchaseDate)
VALUES
(1,1,101,27,'2022-03-12'),
(2,1,102,16,'2022-08-17'),
(3,2,103,27,'2023-03-29'),
(4,5,104,16,'2022-08-04'),
(5,3,105,10,'2022-04-06'),
(6,3,106,34,'2022-09-16'),
(7,4,107,27,'2023-06-12'),
(8,1,108,20,'2022-08-03'),
(9,2,109,17,'2023-03-22'),
(10,4,110,53,'2022-11-30'),
(11,2,111,35,'2022-07-27'),
(12,1,112,29,'2023-01-03'),
(13,2,113,38,'2022-02-28'),
(14,2,114,39,'2022-11-12'),
(15,3,115,17,'2023-06-02'),
(16,5,116,33,'2023-05-12'),
(17,1,117,28,'2022-07-13'),
(18,5,118,33,'2022-12-07'),
(19,3,119,28,'2022-11-10'),
(20,4,120,47,'2023-06-19'),
(21,3,121,37,'2022-08-29'),
(22,2,122,32,'2022-06-14'),
(23,1,123,18,'2023-07-12'),
(24,1,124,25,'2022-11-11'),
(25,1,125,37,'2023-09-30'),
(26,1,126,26,'2022-03-12'),
(27,3,127,18,'2022-09-14'),
(28,2,128,49,'2022-01-13'),
(29,5,129,18,'2023-10-31'),
(30,1,130,28,'2023-01-12'),
(31,4,131,24,'2022-06-23'),
(32,2,132,17,'2023-04-11'),
(33,3,133,35,'2022-08-16'),
(34,2,134,15,'2022-02-27'),
(35,1,135,17,'2022-09-12'),
(36,4,136,15,'2022-07-14'),
(37,3,137,27,'2023-03-24'),
(38,1,138,18,'2022-10-26'),
(39,4,139,27,'2023-03-06'),
(40,1,140,37,'2022-01-11'),
(41,2,141,13,'2022-09-29'),
(42,1,142,27,'2023-03-11'),
(43,5,143,52,'2022-09-22'),
(44,3,144,17,'2023-05-28'),
(45,2,145,36,'2023-08-15'),
(46,5,146,34,'2022-07-17'),
(47,4,147,57,'2022-06-19'),
(48,5,148,58,'2023-03-24'),
(49,1,149,35,'2022-01-31'),
(50,1,150,36,'2022-07-29'),
(51,1,151,13,'2022-01-09'),
(52,2,152,30,'2023-05-12'),
(53,1,153,34,'2022-05-06'),
(54,4,154,29,'2023-04-05'),
(55,1,155,16,'2022-03-31'),
(56,3,156,43,'2022-12-04'),
(57,4,157,16,'2023-02-25'),
(58,1,158,15,'2022-08-10'),
(59,2,159,42,'2022-04-07'),
(60,3,160,16,'2022-11-05'),
(61,2,161,36,'2022-12-12'),
(62,5,162,16,'2023-10-01'),
(63,1,163,40,'2022-07-03'),
(64,4,164,26,'2022-07-11'),
(65,2,165,14,'2022-01-27'),
(66,3,166,28,'2022-08-30'),
(67,1,167,14,'2022-11-24'),
(68,1,168,40,'2022-05-07'),
(69,5,169,24,'2023-04-10'),
(70,2,170,16,'2022-12-02');

SELECT * from purchases;


-- Questions and Answers

-- 1. What are the Total Numbers Received from purchases from each Supplier?

SELECT s.supplier, SUM(pu.NumberReceived) AS Total_Received
FROM suppliers s
INNER JOIN purchases pu
ON s.id = pu.SupplierId
GROUP BY s.id
ORDER BY s.id;

-- 2. How many customer orders are there in 2022?

SELECT COUNT(o.id) as No_of_orders
FROM orders o
WHERE YEAR(o.OrderDate) = 2022;

-- 3. What are the Top product labels (categories) by no. of orders?

SELECT p.ProductLabel, COUNT(o.id) AS No_of_orders
FROM products p
INNER JOIN orders o ON
p.id = o.ProductId
GROUP BY p.ProductLabel
ORDER BY No_of_orders DESC;

-- 4. Write the full name of the people who has shipped order more than 30 times?

SELECT Title,First,Middle,Last
FROM orders
WHERE NumberShipped > 30;

-- 5. Find the top 3 cutomers by Number of orders?

SELECT CONCAT(Title,' ',First,' ',COALESCE(Middle,""),' ',Last) AS Name,
COUNT(id) as No_of_orders
FROM orders
GROUP BY Name
ORDER BY No_of_orders DESC
LIMIT 3;

-- 6. What is the total number of purchases made from each supplier?

SELECT s.supplier as Supplier, COUNT(pu.id) AS Purchases
FROM purchases pu
INNER JOIN suppliers s 
ON s.id = pu.SupplierId
GROUP BY s.id;

-- 7. Top 5 Product Names and PartNumbers by Inventory Shipped?

SELECT p.ProductName, p.PartNumber, InventoryShipped
FROM products p
ORDER BY InventoryShipped DESC
LIMIT 5;

-- 8. How many males or females have given orders?

SELECT CASE 
WHEN o.Title = 'Mr.' THEN 'Male'
WHEN o.Title ='Mrs.' THEN 'Female'
ELSE o.Title
END as Gender,
COUNT(o.Title) as Count
FROM orders o
GROUP BY Gender;

-- 9. Find the list of products that went in shortage?

SELECT ProductName,NumberShipped,MinimumRequired
FROM products
JOIN orders ON products.id = orders.ProductId
WHERE orders.NumberShipped < products.MinimumRequired;

-- 10. Find out the total sum of inventory of hand having label B?

SELECT SUM(InventoryOnHand) AS Total
FROM products
WHERE ProductLabel = 'Label B';

-- 11. Find out the product which was bought by customer named 'Sanchita Patil'?

SELECT orders.id,ProductName,NumberShipped,OrderDate
FROM orders
JOIN products
ON orders.ProductId = products.id
WHERE First = 'Sanchita' AND Last = 'Patil';

-- 12. Find out the products and their count that have been purchased by a specific supplier?

SELECT ProductName,NumberReceived,PurchaseDate
FROM products
JOIN purchases 
ON products.id = purchases.ProductId
WHERE purchases.SupplierId = 1;

-- 13. Find out the purchases done by suppliers in 2022 and 2023?

SELECT YEAR(PurchaseDate) AS Year,COUNT(ProductId) AS NumberOfPurchase
FROM purchases 
JOIN suppliers
ON purchases.SupplierId=suppliers.id
GROUP BY Year
ORDER BY NumberOfPurchase DESC;

-- 14. Find all the number of orders which have been ordered more than ones?

SELECT ProductName, COUNT(*) AS NumberOrders
FROM products
JOIN orders 
ON products.id = orders.ProductId
GROUP BY ProductName
HAVING NumberOrders > 1;

-- 15. Show all products purchaced in 2022 and 2023 from earliest to latest.

SELECT pd.ProductLabel, p.NumberReceived, date_format(PurchaseDate, '%D %b %Y') AS DATE
FROM products pd
JOIN purchases p
ON pd.Id = p.ProductId
WHERE YEAR(PurchaseDate) IN (2022, 2023)
ORDER BY YEAR(PurchaseDate), MONTH(PurchaseDate);