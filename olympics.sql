/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `OLYMPICS`;
CREATE DATABASE `OLYMPICS`;
USE `OLYMPICS`;

-- Table structure for table `AUDIENCE`

DROP TABLE IF EXISTS `AUDIENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUDIENCE` (
  `Ticket_ID` INT(15) NOT NULL,
  `Fname` VARCHAR(15) NOT NULL,
  `Lname` VARCHAR(15) NOT NULL,
  `Sex` char DEFAULT NULL,
  `DOB` DATE DEFAULT NULL,
  `Country_of_origin` VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (`Ticket_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `AUDIENCE`

LOCK TABLES `AUDIENCE` WRITE;
/*!40000 ALTER TABLE `AUDIENCE` DISABLE KEYS */;
INSERT INTO `AUDIENCE` VALUES (11,'John','Smith','M','2000-12-02','England'),
(12, 'Jane', 'Doe', 'F', '1995-08-15', 'USA'),
(13, 'Alice', 'Johnson', 'F', '1988-04-22', 'Canada'),
(14, 'Robert', 'Brown', 'M', '1977-03-12', 'Australia'),
(15, 'Emily', 'Davis', 'F', '2001-06-10', 'England'),
(16, 'Michael', 'Wilson', 'M', '1990-11-30', 'USA'),
(17, 'Sarah', 'Martinez', 'F', '1993-01-25', 'Mexico'),
(18, 'David', 'Garcia', 'M', '1985-09-14', 'Spain'),
(19, 'Laura', 'Clark', 'F', '1998-12-05', 'Ireland'),
(20, 'James', 'Lewis', 'M', '1992-07-20', 'New Zealand'),
(21, 'Sophia', 'Walker', 'F', '2000-02-14', 'Germany'),
(22, 'Daniel', 'Hall', 'M', '1983-10-18', 'France'),
(23, 'Chloe', 'Allen', 'F', '1999-03-30', 'Scotland'),
(24, 'Ethan', 'Young', 'M', '2004-05-17', 'South Africa'),
(25, 'Olivia', 'Hernandez', 'F', '1996-07-29', 'Argentina'),
(26, 'Liam', 'King', 'M', '2002-01-08', 'USA'),
(27, 'Amelia', 'Lopez', 'F', '1989-12-21', 'Chile'),
(28, 'Benjamin', 'Hill', 'M', '1987-08-09', 'Canada');
/*!40000 ALTER TABLE `AUDIENCE` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `SPORTSPEOPLE`

DROP TABLE IF EXISTS `SPORTSPEOPLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPORTSPEOPLE` (
  `Sportspeople_ID` INT(15) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Height` DECIMAL(5,2) DEFAULT NULL,-- in cm
  `Weight` DECIMAL(5,2) DEFAULT NULL,-- in kg
  `Country` VARCHAR(15) DEFAULT NULL,
  `DOB` DATE DEFAULT NULL,
  PRIMARY KEY (`Sportspeople_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `SPORTSPEOPLE`

LOCK TABLES `SPORTSPEOPLE` WRITE;
/*!40000 ALTER TABLE `SPORTSPEOPLE` DISABLE KEYS */;
INSERT INTO `SPORTSPEOPLE` VALUES (18,'Virat','Kohli','M',169,60,'India','1990-11-05'),
(19, 'Serena', 'Williams', 'F', 175.50, 70.30, 'USA', '1981-09-26'),
(20, 'Cristiano', 'Ronaldo', 'M', 187.50, 83.00, 'Portugal', '1985-02-05'),
(21, 'Lionel', 'Messi', 'M', 170.50, 67.50, 'Argentina', '1987-06-24'),
(22, 'Roger', 'Federer', 'M', 185.00, 85.00, 'Switzerland', '1981-08-08'),
(23, 'Usain', 'Bolt', 'M', 195.00, 94.00, 'Jamaica', '1986-08-21'),
(24, 'Michael', 'Phelps', 'M', 193.00, 88.00, 'USA', '1985-06-30'),
(25, 'Naomi', 'Osaka', 'F', 180.00, 69.00, 'Japan', '1997-10-16'),
(26, 'Rafael', 'Nadal', 'M', 185.00, 85.00, 'Spain', '1986-06-03'),
(27, 'Simone', 'Biles', 'F', 142.00, 47.00, 'USA', '1997-03-14'),
(28, 'Novak', 'Djokovic', 'M', 188.00, 77.00, 'Serbia', '1987-05-22'),
(29, 'Megan', 'Rapinoe', 'F', 168.00, 60.00, 'USA', '1985-07-05'),
(30, 'Sunil', 'Chhetri', 'M', 170.00, 65.00, 'India', '1984-08-03'),
(31, 'Allyson', 'Felix', 'F', 168.00, 55.00, 'USA', '1985-11-18'),
(32, 'David', 'Beckham', 'M', 183.00, 74.00, 'England', '1975-05-02'),
(33, 'Kylian', 'Mbappe', 'M', 178.00, 73.00, 'France', '1998-12-20'),
(34, 'Elena', 'Delle Donne', 'F', 196.00, 85.00, 'USA', '1989-09-05'),
(35, 'LeBron', 'James', 'M', 206.00, 113.00, 'USA', '1984-12-30'),
(36, 'Shelly-Ann', 'Fraser-Pryce', 'F', 152.00, 52.00, 'Jamaica', '1986-12-27'),
(37, 'Pep', 'Guardiola', 'M', 180.00, 75.00, 'Spain', '1971-01-18'),
(38, 'Zinedine', 'Zidane', 'M', 185.00, 80.00, 'France', '1972-06-23'),
(39, 'Jill', 'Ellis', 'F', 170.00, 65.00, 'England', '1966-09-06'),
(40, 'Mike', 'Krzyzewski', 'M', 178.00, 70.00, 'USA', '1947-02-13'),
(41, 'Phil', 'Jackson', 'M', 203.00, 100.00, 'USA', '1945-09-17'),
(42, 'Martina', 'Navratilova', 'F', 173.00, 66.00, 'Czechia', '1956-10-18');
/*!40000 ALTER TABLE `SPORTSPEOPLE` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `BUSINESSES`

DROP TABLE IF EXISTS `BUSINESSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BUSINESSES` (
  `Registration_ID` INT(15) NOT NULL,
  `Enterprise_name` VARCHAR(30) NOT NULL,
  `Country_of_origin` VARCHAR(15) DEFAULT NULL,
  `Contract_year` INT(4) DEFAULT NULL,
  `Revenue_earned` DECIMAL(10,2) DEFAULT NULL,
  `Rental_fee_paid` DECIMAL(10,2) DEFAULT NULL,
  PRIMARY KEY (`Registration_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BUSINESSES`
--

LOCK TABLES `BUSINESSES` WRITE;
/*!40000 ALTER TABLE `BUSINESSES` DISABLE KEYS */;
INSERT INTO `BUSINESSES` VALUES (1,'Baskinrobins','America',2024,8000.05,3000.50),
(2, 'Starbucks', 'USA', 2023, 150000.75, 50000.30),
(3, 'Toyota', 'Japan', 2022, 350000.00, 70000.50),
(4, 'IKEA', 'Sweden', 2021, 120000.60, 45000.00),
(5, 'Adidas', 'Germany', 2024, 98000.50, 35000.75),
(6, 'Tata Motors', 'India', 2023, 210000.90, 60000.45),
(7, 'Nestle', 'Switzerland', 2020, 250000.00, 80000.00),
(8, 'Samsung', 'South Korea', 2024, 400000.25, 95000.00),
(9, 'Nike', 'USA', 2022, 175000.75, 55000.30),
(10, 'Huawei', 'China', 2021, 220000.85, 75000.50),
(11, 'Amazon', 'USA', 2024, 500000.50, 150000.25),
(12, 'Zara', 'Spain', 2023, 110000.45, 42000.35),
(13, 'Hyundai', 'South Korea', 2024, 310000.75, 80000.55),
(14, 'McDonalds', 'USA', 2022, 450000.00, 200000.10),
(15, 'Volkswagen', 'Germany', 2021, 390000.20, 99000.00),
(16, 'Sony', 'Japan', 2023, 270000.75, 85000.00),
(17, 'Unilever', 'Netherlands', 2020, 330000.10, 70000.50),
(18, 'Coca-Cola', 'USA', 2024, 230000.90, 80000.70),
(19, 'Infosys', 'India', 2023, 180000.50, 65000.20),
(20, 'H&M', 'Sweden', 2022, 90000.00, 30000.00);
/*!40000 ALTER TABLE `BUSINESSES` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `EMPLOYEES`

DROP TABLE IF EXISTS `EMPLOYEES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEES` (
  `Employee_ID` INT(15) NOT NULL,
  `Fname` VARCHAR(15) NOT NULL,
  `Lname` VARCHAR(15) NOT NULL,
  `Sex` char(1) DEFAULT NULL,
  `DOB` DATE DEFAULT NULL,
  `Address` VARCHAR(30) DEFAULT NULL,
  `Salary` DECIMAL(10,2) DEFAULT NULL,
  `Super_ID` INT(15) DEFAULT NULL,
  `Team_no` INT(2) DEFAULT 1,
  PRIMARY KEY (`Employee_ID`),
  CONSTRAINT `EMP_SUPER_FK` FOREIGN KEY (`Super_ID`) REFERENCES `EMPLOYEES`(`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `EMP_MANAGEMENT_FK` FOREIGN KEY (`Team_no`) REFERENCES `MANAGEMENT`(`Team_ID`) ON DELETE SET DEFAULT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `EMPLOYEES`

LOCK TABLES `EMPLOYEES` WRITE;
/*!40000 ALTER TABLE `EMPLOYEES` DISABLE KEYS */;
INSERT INTO `EMPLOYEES` VALUES (15,'Rohit','Kumar','M','1965-01-09','731 Fondren,TX',30000.00,5,1),
(16, 'Alice', 'Johnson', 'F', '1975-04-10', '123 Elm St, NY', 45000.00, 15, 2),
(17, 'Bob', 'Smith', 'M', '1980-07-12', '456 Oak Ave, CA', 50000.00, 15, 2),
(18, 'Carol', 'White', 'F', '1985-03-25', '789 Pine Ln, IL', 48000.00, 16, 3),
(19, 'David', 'Brown', 'M', '1990-11-15', '101 Maple Dr, FL', 52000.00, 17, 3),
(20, 'Eve', 'Davis', 'F', '1995-05-05', '202 Birch Rd, WA', 47000.00, 18, 4),
(21, 'Frank', 'Garcia', 'M', '1970-08-20', '303 Cedar Ct, OR', 60000.00, 15, 4),
(22, 'Grace', 'Lee', 'F', '1988-09-30', '404 Walnut St, TX', 49000.00, 17, 5),
(23, 'Hank', 'Martinez', 'M', '1978-06-18', '505 Poplar Blvd, CO', 53000.00, 19, 5),
(24, 'Ivy', 'Wilson', 'F', '1983-02-13', '606 Spruce Ave, NV', 51000.00, 16, 6),
(25, 'Jack', 'Anderson', 'M', '1992-04-27', '707 Willow St, AZ', 55000.00, 18, 6),
(26, 'Karen', 'Taylor', 'F', '1990-12-01', '808 Fir Dr, OH', 52000.00, 17, 7),
(27, 'Leo', 'Harris', 'M', '1984-01-23', '909 Ash Rd, MI', 58000.00, 21, 7),
(28, 'Mia', 'Clark', 'F', '1987-07-14', '1010 Cherry Ln, GA', 50000.00, 19, 8),
(29, 'Nate', 'Walker', 'M', '1982-03-05', '1111 Peach Ave, SC', 61000.00, 21, 8),
(30, 'Olivia', 'Young', 'F', '1991-05-10', '1212 Pineapple Blvd, AL', 47000.00, 23, 9),
(31, 'Paul', 'Evans', 'M', '1960-09-17', '1313 Cypress Ct, NC', 70000.00, NULL, 1);
/*!40000 ALTER TABLE `EMPLOYEES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPORTS`
--

DROP TABLE IF EXISTS `SPORTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPORTS` (
  `Sport_ID` INT(3) NOT NULL,
  `Sname` VARCHAR(15) NOT NULL,
  `Division` VARCHAR(15) DEFAULT NULL,
  `Genders_involved` VARCHAR(5) DEFAULT NULL,
  `Max_no_of_participants` INT(2) DEFAULT NULL,
  `Time_duration` TIME DEFAULT NULL,
  `Round` VARCHAR(15) DEFAULT NULL,
  `Statistics` VARCHAR(256) DEFAULT NULL,
  PRIMARY KEY (`Sport_ID`),
  UNIQUE (`Sname`,`Division`,`Genders_involved`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPORTS`
--

LOCK TABLES `SPORTS` WRITE;
/*!40000 ALTER TABLE `SPORTS` DISABLE KEYS */;
INSERT INTO `SPORTS` VALUES (10,'Boxing',NULL,'Men',2,'01:30:00','League','Get More points/knockout opponent'),
(11, 'Athletics', '100m', 'Both', 8, '00:00:10', 'Finals', 'Fastest time wins the race'),
(12, 'Athletics', '200m', 'Both', 8, '00:00:20', 'Finals', 'Fastest time wins the race'),
(13, 'Athletics', 'Marathon', 'Both', 50, '02:10:00', 'Finals', 'Fastest time over 42.195km distance'),
(14, 'Swimming', '100m Freestyle', 'Both', 8, '00:01:00', 'Heats', 'Fastest time wins'),
(15, 'Swimming', '200m Butterfly', 'Both', 8, '00:02:00', 'Heats', 'Fastest time wins'),
(16, 'Swimming', '400m Medley', 'Both', 8, '00:04:15', 'Heats', 'Fastest time wins'),
(17, 'Boxing', 'Heavyweight', 'Men', 2, '00:10:00', 'Knockout', 'Knockout opponent or win on points'),
(18, 'Boxing', 'Lightweight', 'Women', 2, '00:09:00', 'Elimination', 'Knockout opponent or win on points'),
(19, 'Cycling', 'Individual Time Trial', 'Both', 1, '00:01:30', 'Stages', 'Fastest time wins'),
(20, 'Cycling', 'Mountain Biking', 'Both', 1, '01:30:00', 'Elimination', 'Fastest time on the trail'),
(21, 'Tennis', 'Singles', 'Both', 2, '02:00:00', 'Knockout', 'Win sets by scoring games'),
(22, 'Tennis', 'Doubles', 'Both', 4, '02:30:00', 'Knockout', 'Win sets by scoring games'),
(23, 'Badminton', 'Singles', 'Both', 2, '00:45:00', 'Knockout', 'Win 2 out of 3 sets'),
(24, 'Badminton', 'Doubles', 'Both', 4, '00:50:00', 'Knockout', 'Win 2 out of 3 sets'),
(25, 'Rowing', 'Single Sculls', 'Both', 1, '00:06:30', 'Heats', 'Fastest time wins the race'),
(26, 'Rowing', 'Coxed Eights', 'Both', 9, '00:05:30', 'Heats', 'Fastest time wins the race'),
(27, 'Wrestling', 'Freestyle', 'Both', 2, '00:06:00', 'Knockout', 'Pin opponent or score more points'),
(28, 'Wrestling', 'Greco-Roman', 'Men', 2, '00:06:00', 'Knockout', 'Pin opponent or score more points'),
(29, 'Archery', 'Recurve', 'Both', 2, '00:10:00', 'Elimination', 'Highest score by hitting the target'),
(30, 'Archery', 'Compound', 'Both', 2, '00:10:00', 'Elimination', 'Highest score by hitting the target');
/*!40000 ALTER TABLE `SPORTS` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `PLAYING_ARENA`

DROP TABLE IF EXISTS `PLAYING_ARENA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAYING_ARENA` (
  `Arena_ID` INT(5) NOT NULL,
  `ARname` VARCHAR(100) NOT NULL,
  `Length` DECIMAL(7,2) DEFAULT NULL,-- in m
  `Width` DECIMAL(6,2) DEFAULT NULL,-- in m
  `Latitude` DECIMAL(10,6) NOT NULL,
  `Longitude` DECIMAL(10,6) NOT NULL,
  `Playing_condition` VARCHAR(128) DEFAULT NULL,
  `Damage%` DECIMAL(5,2) DEFAULT NULL,
  PRIMARY KEY (`Arena_ID`),
  UNIQUE (`Latitude`, `Longitude`) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `PLAYING_ARENA`

LOCK TABLES `PLAYING_ARENA` WRITE;
/*!40000 ALTER TABLE `PLAYING_ARENA` DISABLE KEYS */;
INSERT INTO `PLAYING_ARENA` VALUES (101,'MKR BasketBall court',50,30,48.856613,2.352222,'Suitable for play',5.10),
(102, 'Greenfield Soccer Stadium', 105.00, 68.00, 40.712776, -74.005974, 'Well-maintained and playable', 2.50),
(103, 'Bluewater Swimming Arena', 50.00, 25.00, 34.052235, -118.243683, 'Chlorine level monitored', 1.75),
(104, 'Champion Tennis Court', 23.77, 10.97, 51.507351, -0.127758, 'Ready for tournament play', 0.00),
(105, 'Grand Athletics Track', 400.00, 50.00, 35.689487, 139.691711, 'Requires minor resurfacing', 8.00),
(106, 'Summit Badminton Hall', 15.00, 7.00, 37.774929, -122.419418, 'Indoor lighting optimized', 3.20),
(107, 'Silver Hockey Arena', 91.40, 55.00, 28.613939, 77.209023, 'Suitable for matches', 4.75),
(108, 'Eagle Wrestling Pit', 12.00, 12.00, 41.902782, 12.496366, 'Minor repairs needed', 5.00),
(109, 'Falcon Boxing Ring', 6.00, 6.00, -33.868820, 151.209290, 'Well-maintained', 1.00),
(110, 'Cypress Archery Field', 90.00, 10.00, 55.755825, 37.617298, 'No obstructions', 0.00),
(111, 'Mountain Volleyball Arena', 18.00, 9.00, -23.550520, -46.633308, 'Sand level maintained', 2.25),
(112, 'Golden Gymnastics Hall', 20.00, 20.00, 48.208176, 16.373819, 'High-quality mats installed', 1.50),
(113, 'Platinum Rugby Field', 122.00, 68.00, 1.352083, 103.819839, 'Turf quality satisfactory', 4.00),
(114, 'Emerald Rowing Lake', 2000.00, 50.00, 39.904202, 116.407394, 'Clean water and buoys in place', 0.75),
(115, 'Tiger Karate Dojo', 10.00, 10.00, 19.432608, -99.133209, 'Perfect condition', 0.00),
(116, 'Urban Cycling Velodrome', 250.00, 7.00, 52.520008, 13.404954, 'Track maintenance needed', 10.00),
(117, 'Sky Golf Course', 6500.00, 500.00, 31.230391, 121.473701, 'Minor landscaping repairs', 6.00),
(118, 'Omega Esports Arena', 20.00, 20.00, 40.416775, -3.703790, 'High-speed internet available', 0.00),
(119, 'Sunrise Athletics Stadium', 400.00, 60.00, -1.292066, 36.821945, 'Ready for competitions', 2.00),
(120, 'Crystal Shooting Range', 100.00, 20.00, -26.204103, 28.047304, 'Targets and barriers inspected', 0.50);
/*!40000 ALTER TABLE `PLAYING_ARENA` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `MANAGEMENT`

DROP TABLE IF EXISTS `MANAGEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MANAGEMENT` (
  `Team_ID` INT(2) NOT NULL,
  PRIMARY KEY (`Team_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `MANAGEMENT`

LOCK TABLES `MANAGEMENT` WRITE;
/*!40000 ALTER TABLE `MANAGEMENT` DISABLE KEYS */;
INSERT INTO `MANAGEMENT` VALUES (1), 
(2), 
(3), 
(4), 
(5), 
(6), 
(7), 
(8), 
(9), 
(10), 
(11), 
(12), 
(13), 
(14), 
(15), 
(16), 
(17), 
(18), 
(19), 
(20),
(21),
(22),
(23),
(24);
/*!40000 ALTER TABLE `MANAGEMENT` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `AWARDS`

DROP TABLE IF EXISTS `AWARDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AWARDS` (
  `AWsports_ID` INT(3) NOT NULL,
  `Level` VARCHAR(30) DEFAULT NULL,
  `Year` INT(4) DEFAULT NULL,
  PRIMARY KEY (`AWsports_ID`),
  CONSTRAINT `AWD_SPT_FK` FOREIGN KEY (`AWsports_ID`) REFERENCES `SPORTS`(`Sport_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `AWARDS`

LOCK TABLES `AWARDS` WRITE;
/*!40000 ALTER TABLE `AWARDS` DISABLE KEYS */;
INSERT INTO `AWARDS` VALUES (10, 'Silver', 2016),
(11, 'Gold', 2020),
(12, 'Bronze', 2020),
(13, 'Gold', 2020),
(14, 'Silver', 2018),
(15, 'Bronze', 2018),
(16, 'Gold', 2022),
(17, 'Gold', 2020),
(18, 'Silver', 2018),
(19, 'Gold', 2020),
(20, 'Bronze', 2020),
(21, 'Gold', 2021),
(22, 'Silver', 2021),
(23, 'Bronze', 2021),
(24, 'Gold', 2022),
(25, 'Silver', 2022),
(26, 'Gold', 2020),
(27, 'Bronze', 2022),
(28, 'Gold', 2016),
(29, 'Silver', 2020),
(30, 'Gold', 2020);
/*!40000 ALTER TABLE `AWARDS` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `INVENTORY`

DROP TABLE IF EXISTS `INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVENTORY` (
  `INsports_ID` INT(3) NOT NULL,
  `Inventory_name` VARCHAR(30) NOT NULL,
  `Type` VARCHAR(30) DEFAULT NULL,
  `Quantity` INT(4) DEFAULT NULL,
  `Status` VARCHAR(100) DEFAULT NULL,
  `Cost` DECIMAL(10,2) DEFAULT NULL,
  PRIMARY KEY (`INsports_ID`,`Inventory_name`),
  CONSTRAINT `INV_SPT_FK` FOREIGN KEY (`INsports_ID`) REFERENCES `SPORTS`(`Sport_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `INVENTORY`

LOCK TABLES `INVENTORY` WRITE;
/*!40000 ALTER TABLE `INVENTORY` DISABLE KEYS */;
INSERT INTO `INVENTORY` VALUES (10,'Boxing gloves','Sport equipment',4,'Adjusting sticker torn out',5000.50),
(10, 'Boxing ring', 'Sport equipment', 1, 'Fully functional', 15000.00),
(11, 'Starting blocks', 'Track equipment', 8, 'In good condition', 2500.00),
(12, 'Finish line camera', 'Track equipment', 2, 'High-speed cameras operational', 20000.00),
(13, 'Water stations', 'Marathon equipment', 10, 'All operational', 5000.00),
(14, 'Swimsuits', 'Sport equipment', 20, 'Chlorine-resistant material', 2000.00),
(15, 'Swimming caps', 'Sport equipment', 20, 'Elastic and intact', 500.00),
(16, 'Swimming pool lanes', 'Facility equipment', 10, 'Buoy lines in place', 8000.00),
(17, 'Boxing helmets', 'Sport equipment', 8, 'Protective padding worn', 4000.00),
(18, 'Women’s boxing gloves', 'Sport equipment', 6, 'Slight damage on few pairs', 3000.00),
(19, 'Cycling helmets', 'Safety equipment', 15, 'All helmets in good condition', 7500.00),
(20, 'Mountain bikes', 'Sport equipment', 5, 'Regular maintenance needed', 25000.00),
(21, 'Tennis rackets', 'Sport equipment', 10, 'Strings replaced recently', 5000.00),
(22, 'Tennis balls', 'Sport equipment', 50, 'New balls, ready for play', 250.00),
(23, 'Badminton rackets', 'Sport equipment', 8, 'Strings slightly worn', 3200.00),
(24, 'Shuttlecocks', 'Sport equipment', 25, 'Feathered, good condition', 1200.00),
(25, 'Rowing oars', 'Sport equipment', 10, 'Minor scratches on handles', 6000.00),
(26, 'Rowing boats', 'Sport equipment', 4, 'Buoyancy checks completed', 40000.00),
(27, 'Wrestling mats', 'Facility equipment', 2, 'Surface cleaned and disinfected', 12000.00),
(28, 'Wrestling headgear', 'Sport equipment', 10, 'Good padding condition', 2000.00),
(29, 'Recurve bows', 'Archery equipment', 6, 'Strings in good condition', 15000.00),
(30, 'Archery arrows', 'Archery equipment', 30, 'Balanced and sharp tips', 3000.00);
/*!40000 ALTER TABLE `INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `PARTICIPATES_IN`

DROP TABLE IF EXISTS `PARTICIPATES_IN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PARTICIPATES_IN` (
  `Psports_ID` INT(3) NOT NULL,
  `Psportspeople_ID` INT(15) NOT NULL,
  PRIMARY KEY (`Psports_ID`,`Psportspeople_ID`),
  CONSTRAINT `PTCPT_SPT_FK` FOREIGN KEY (`Psports_ID`) REFERENCES `SPORTS`(`Sport_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PTCPT_SPTP_FK` FOREIGN KEY (`Psportspeople_ID`) REFERENCES `SPORTSPEOPLE`(`Sportspeople_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `PARTICIPATES_IN`

LOCK TABLES `PARTICIPATES_IN` WRITE;
/*!40000 ALTER TABLE `PARTICIPATES_IN` DISABLE KEYS */;
INSERT INTO `PARTICIPATES_IN` VALUES (10, 18), -- Virat Kohli participates in Boxing (Men)
(11, 23), -- Usain Bolt participates in Athletics 100m
(12, 27), -- Simone Biles participates in Athletics 200m
(13, 31), -- Allyson Felix participates in Marathon
(14, 24), -- Michael Phelps participates in Swimming 100m Freestyle
(15, 24), -- Michael Phelps participates in Swimming 200m Butterfly
(16, 24), -- Michael Phelps participates in Swimming 400m Medley
(17, 28), -- Novak Djokovic participates in Boxing (Heavyweight Men)
(18, 29), -- Megan Rapinoe participates in Boxing (Lightweight Women)
(19, 25), -- Naomi Osaka participates in Cycling Individual Time Trial
(20, 33), -- Kylian Mbappe participates in Cycling Mountain Biking
(21, 22), -- Roger Federer participates in Tennis Singles
(22, 28), -- Novak Djokovic participates in Tennis Doubles
(23, 20), -- Cristiano Ronaldo participates in Badminton Singles
(24, 19), -- Serena Williams participates in Badminton Doubles
(25, 34), -- Elena Delle Donne participates in Rowing Single Sculls
(26, 35), -- LeBron James participates in Rowing Coxed Eights
(27, 36), -- Shelly-Ann Fraser-Pryce participates in Wrestling Freestyle
(28, 30); -- Sunil Chhetri participates in Wrestling Greco-Roman
/*!40000 ALTER TABLE `PARTICIPATES_IN` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `FANS_OF`

DROP TABLE IF EXISTS `FANS_OF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FANS_OF` (
  `Fticket_ID` INT(15) NOT NULL,
  `Fsportspeople_ID` INT(15) NOT NULL,
  PRIMARY KEY (`Fticket_ID`,`Fsportspeople_ID`),
  CONSTRAINT `FAN_AUD_FK` FOREIGN KEY (`Fticket_Id`) REFERENCES `AUDIENCE`(`Ticket_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FAN_SPTP_FK` FOREIGN KEY (`Fsportspeople_ID`) REFERENCES `SPORTSPEOPLE`(`Sportspeople_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `FANS_OF`

LOCK TABLES `FANS_OF` WRITE;
/*!40000 ALTER TABLE `FANS_OF` DISABLE KEYS */;
INSERT INTO `FANS_OF` VALUES (11, 18), -- John Smith is a fan of Virat Kohli
(12, 20), -- Jane Doe is a fan of Cristiano Ronaldo
(13, 19), -- Alice Johnson is a fan of Serena Williams
(14, 23), -- Robert Brown is a fan of Usain Bolt
(15, 21), -- Emily Davis is a fan of Lionel Messi
(16, 22), -- Michael Wilson is a fan of Roger Federer
(17, 24), -- Sarah Martinez is a fan of Michael Phelps
(18, 26), -- David Garcia is a fan of Rafael Nadal
(19, 25), -- Laura Clark is a fan of Naomi Osaka
(20, 27), -- James Lewis is a fan of Simone Biles
(21, 28), -- Sophia Walker is a fan of Novak Djokovic
(22, 30), -- Daniel Hall is a fan of Sunil Chhetri
(23, 33), -- Chloe Allen is a fan of Kylian Mbappe
(24, 29), -- Ethan Young is a fan of Megan Rapinoe
(25, 32), -- Olivia Hernandez is a fan of David Beckham
(26, 31), -- Liam King is a fan of Allyson Felix
(27, 36), -- Amelia Lopez is a fan of Shelly-Ann Fraser-Pryce
(28, 34); -- Benjamin Hill is a fan of Elena Delle Donne
/*!40000 ALTER TABLE `FANS_OF` ENABLE KEYS */;
UNLOCK TABLES;


-- Table structure for table `SECURED_BY`

DROP TABLE IF EXISTS `SECURED_BY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURED_BY` (
  `SEC_awssports_ID` INT(3) NOT NULL,
  `SEC_sportspeople_ID` INT(15) NOT NULL,
  PRIMARY KEY (`SEC_awssports_ID`,`SEC_sportspeople_ID`),
  CONSTRAINT `SEC_AWD_FK` FOREIGN KEY (`SEC_awssports_ID`) REFERENCES `AWARDS`(`AWsports_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SEC_SPTP_FK` FOREIGN KEY (`SEC_sportspeople_ID`) REFERENCES `SPORTSPEOPLE`(`Sportspeople_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `SECURED_BY`

LOCK TABLES `SECURED_BY` WRITE;
/*!40000 ALTER TABLE `SECURED_BY` DISABLE KEYS */;
INSERT INTO `SECURED_BY` VALUES (10, 18), -- Virat Kohli secures Silver for Boxing in 2016
(11, 23), -- Usain Bolt secures Gold for Athletics (100m) in 2020
(12, 36), -- Shelly-Ann Fraser-Pryce secures Bronze for Athletics (200m) in 2020
(13, 31), -- Allyson Felix secures Gold for Marathon in 2020
(14, 24), -- Michael Phelps secures Silver for Swimming (100m Freestyle) in 2018
(15, 25), -- Naomi Osaka secures Bronze for Swimming (200m Butterfly) in 2018
(16, 24), -- Michael Phelps secures Gold for Swimming (400m Medley) in 2022
(17, 28), -- Novak Djokovic secures Gold for Boxing (Heavyweight) in 2020
(18, 29), -- Megan Rapinoe secures Silver for Boxing (Lightweight) in 2018
(19, 33), -- Kylian Mbappe secures Gold for Cycling (Individual Time Trial) in 2020
(20, 19), -- Serena Williams secures Bronze for Cycling (Mountain Biking) in 2020
(21, 26), -- Rafael Nadal secures Gold for Tennis (Singles) in 2021
(22, 22), -- Roger Federer secures Silver for Tennis (Doubles) in 2021
(23, 27), -- Simone Biles secures Bronze for Badminton (Singles) in 2021
(24, 30), -- Sunil Chhetri secures Gold for Badminton (Doubles) in 2022
(25, 34), -- Elena Delle Donne secures Silver for Rowing (Single Sculls) in 2022
(26, 35), -- LeBron James secures Gold for Rowing (Coxed Eights) in 2020
(27, 20), -- Cristiano Ronaldo secures Bronze for Wrestling (Freestyle) in 2022
(28, 21), -- Lionel Messi secures Gold for Wrestling (Greco-Roman) in 2016
(29, 36), -- Shelly-Ann Fraser-Pryce secures Silver for Archery (Recurve) in 2020
(30, 19); -- Serena Williams secures Gold for Archery (Compound) in 2020
/*!40000 ALTER TABLE `SECURED_BY` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `TRAINING`

DROP TABLE IF EXISTS `TRAINING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRAINING` (
  `Coach_ID` INT(15) NOT NULL,
  `Athlete_ID` INT(15) NOT NULL,
  PRIMARY KEY (`Coach_ID`,`Athlete_ID`),
  CONSTRAINT `T_C_SPTP_FK` FOREIGN KEY (`Coach_ID`) REFERENCES `SPORTSPEOPLE`(`Sportspeople_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `T_A_SPTP_FK` FOREIGN KEY (`Athlete_ID`) REFERENCES `SPORTSPEOPLE`(`Sportspeople_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `TRAINING`

LOCK TABLES `TRAINING` WRITE;
/*!40000 ALTER TABLE `TRAINING` DISABLE KEYS */;
INSERT INTO `TRAINING` VALUES (37, 18), -- Pep Guardiola training Virat Kohli
(37, 20), -- Pep Guardiola training Cristiano Ronaldo
(37, 21), -- Pep Guardiola training Lionel Messi
(38, 19), -- Zinedine Zidane training Serena Williams
(38, 23), -- Zinedine Zidane training Usain Bolt
(38, 22), -- Zinedine Zidane training Roger Federer
(39, 27), -- Jill Ellis training Simone Biles
(39, 29), -- Jill Ellis training Megan Rapinoe
(39, 30), -- Jill Ellis training Sunil Chhetri
(40, 24), -- Mike Krzyzewski training Michael Phelps
(40, 35), -- Mike Krzyzewski training LeBron James
(40, 33), -- Mike Krzyzewski training Kylian Mbappe
(41, 25), -- Phil Jackson training Naomi Osaka
(41, 26), -- Phil Jackson training Rafael Nadal
(41, 34), -- Phil Jackson training Elena Delle Donne
(42, 31), -- Martina Navratilova training Allyson Felix
(42, 28), -- Martina Navratilova training Novak Djokovic
(42, 36); -- Martina Navratilova training Shelly-Ann Fraser-Pryce
/*!40000 ALTER TABLE `TRAINING` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `CONDUCTS`

DROP TABLE IF EXISTS `CONDUCTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CONDUCTS` (
  `C_team_ID` INT(2) NOT NULL,
  `C_sport_ID` INT(3) NOT NULL,
  PRIMARY KEY (`C_team_ID`,`C_sport_ID`),
  CONSTRAINT `CON_MNG_FK` FOREIGN KEY (`C_team_ID`) REFERENCES `MANAGEMENT`(`Team_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CON_SPT_FK` FOREIGN KEY (`C_sport_ID`) REFERENCES `SPORTS`(`Sport_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `CONDUCTS`

LOCK TABLES `CONDUCTS` WRITE;
/*!40000 ALTER TABLE `CONDUCTS` DISABLE KEYS */;
INSERT INTO `CONDUCTS` VALUES (1, 10), -- Team 1 conducts Boxing
(2, 11), -- Team 2 conducts Athletics (100m)
(3, 12), -- Team 3 conducts Athletics (200m)
(4, 13), -- Team 4 conducts Marathon
(5, 14), -- Team 5 conducts Swimming (100m Freestyle)
(6, 15), -- Team 6 conducts Swimming (200m Butterfly)
(7, 16), -- Team 7 conducts Swimming (400m Medley)
(8, 17), -- Team 8 conducts Boxing (Heavyweight)
(9, 18), -- Team 9 conducts Boxing (Lightweight)
(10, 19), -- Team 10 conducts Cycling (Individual Time Trial)
(11, 20), -- Team 11 conducts Cycling (Mountain Biking)
(12, 21), -- Team 12 conducts Tennis (Singles)
(13, 22), -- Team 13 conducts Tennis (Doubles)
(14, 23), -- Team 14 conducts Badminton (Singles)
(15, 24), -- Team 15 conducts Badminton (Doubles)
(16, 25), -- Team 16 conducts Rowing (Single Sculls)
(17, 26), -- Team 17 conducts Rowing (Coxed Eights)
(18, 27), -- Team 18 conducts Wrestling (Freestyle)
(19, 28), -- Team 19 conducts Wrestling (Greco-Roman)
(20, 29); -- Team 20 conducts Archery (Recurve)
/*!40000 ALTER TABLE `CONDUCTS` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `MADE_PURCHASES_FROM`

DROP TABLE IF EXISTS `MADE_PURCHASES_FROM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MADE_PURCHASES_FROM` (
  `MPF_ticket_ID` INT(15) NOT NULL,
  `MPF_registration_ID` INT(15) NOT NULL,
  PRIMARY KEY (`MPF_ticket_ID`,`MPF_registration_ID`),
  CONSTRAINT `MPF_AUD_FK` FOREIGN KEY (`MPF_ticket_ID`) REFERENCES `AUDIENCE`(`Ticket_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MPF_BUSS_FK` FOREIGN KEY (`MPF_registration_ID`) REFERENCES `BUSINESSES`(`Registration_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `MADE_PURCHASES_FROM`

LOCK TABLES `MADE_PURCHASES_FROM` WRITE;
/*!40000 ALTER TABLE `MADE_PURCHASES_FROM` DISABLE KEYS */;
INSERT INTO `MADE_PURCHASES_FROM` VALUES (11, 1),  -- John Smith made a purchase from Baskinrobins
(12, 2),  -- Jane Doe made a purchase from Starbucks
(13, 3),  -- Alice Johnson made a purchase from Toyota
(14, 4),  -- Robert Brown made a purchase from IKEA
(15, 5),  -- Emily Davis made a purchase from Adidas
(16, 6),  -- Michael Wilson made a purchase from Tata Motors
(17, 7),  -- Sarah Martinez made a purchase from Nestle
(18, 8),  -- David Garcia made a purchase from Samsung
(19, 9),  -- Laura Clark made a purchase from Nike
(20, 10), -- James Lewis made a purchase from Huawei
(21, 11), -- Sophia Walker made a purchase from Amazon
(22, 12), -- Daniel Hall made a purchase from Zara
(23, 13), -- Chloe Allen made a purchase from Hyundai
(24, 14), -- Ethan Young made a purchase from McDonalds
(25, 15), -- Olivia Hernandez made a purchase from Volkswagen
(26, 16), -- Liam King made a purchase from Sony
(27, 17), -- Amelia Lopez made a purchase from Unilever
(28, 18); -- Benjamin Hill made a purchase from Coca-Cola
/*!40000 ALTER TABLE `MADE_PURCHASES_FROM` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `USED_IN_BY_AND_AT`

DROP TABLE IF EXISTS `USED_IN_BY_AND_AT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USED_IN_BY_AND_AT` (
  `U_INsports_ID` INT(3) NOT NULL,
  `U_inventory_name` VARCHAR(30) NOT NULL,
  `U_sport_ID` INT(3) NOT NULL,
  `U_sportspeople_ID` INT(15) NOT NULL,
  `U_arena_ID` INT(5) NOT NULL,
  PRIMARY KEY (`U_INsports_ID`,`U_inventory_name`,`U_sport_ID`,`U_sportspeople_ID`,`U_arena_ID`),
  CONSTRAINT `U_SPT1_FK` FOREIGN KEY (`U_INsports_ID`,`U_inventory_name`) REFERENCES `INVENTORY`(`INsports_ID`,`Inventory_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `U_SPT2_FK` FOREIGN KEY (`U_sport_ID`) REFERENCES `SPORTS`(`Sport_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `U_SPTP_FK` FOREIGN KEY (`U_sportspeople_ID`) REFERENCES `SPORTSPEOPLE`(`Sportspeople_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `U_ARN_FK` FOREIGN KEY (`U_arena_ID`) REFERENCES `ARENA`(`Arena_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `USED_IN_BY_AND_AT`

LOCK TABLES `USED_IN_BY_AND_AT` WRITE;
/*!40000 ALTER TABLE `USED_IN_BY_AND_AT` DISABLE KEYS */;
INSERT INTO `USED_IN_BY_AND_AT` VALUES -- Boxing in MKR BasketBall court
(10, 'Boxing gloves', 10, 18, 101), 
(10, 'Boxing ring', 10, 18, 109),

-- Athletics in Grand Athletics Track
(11, 'Starting blocks', 11, 23, 105), 
(12, 'Finish line camera', 12, 23, 105),

-- Swimming in Bluewater Swimming Arena
(14, 'Swimsuits', 14, 24, 103), 
(14, 'Swimming caps', 14, 24, 103), 
(16, 'Swimming pool lanes', 16, 24, 103),

-- Tennis in Champion Tennis Court
(21, 'Tennis rackets', 21, 22, 104), 
(22, 'Tennis balls', 22, 22, 104),

-- Badminton in Summit Badminton Hall
(23, 'Badminton rackets', 23, 34, 106), 
(24, 'Shuttlecocks', 23, 34, 106),

-- Wrestling in Eagle Wrestling Pit
(27, 'Wrestling mats', 27, 35, 108), 
(28, 'Wrestling headgear', 27, 35, 108),

-- Archery in Cypress Archery Field
(29, 'Recurve bows', 29, 29, 110), 
(30, 'Archery arrows', 29, 29, 110),

-- Rowing in Emerald Rowing Lake
(25, 'Rowing oars', 25, 23, 114), 
(26, 'Rowing boats', 26, 23, 114),

-- Cycling in Urban Cycling Velodrome
(19, 'Cycling helmets', 19, 33, 116), 
(20, 'Mountain bikes', 20, 33, 116);
/*!40000 ALTER TABLE `USED_IN_BY_AND_AT` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `TYPE_OF_BUSINESSES`

DROP TABLE IF EXISTS `TYPE_OF_BUSINESSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TYPE_OF_BUSINESSES` (
  `B_registration_ID` INT(15) NOT NULL,
  `Business_type` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`B_registration_ID`,`Business_type`),
  CONSTRAINT `TOB_BUSS_FK` FOREIGN KEY (`B_registration_ID`) REFERENCES `BUSINESSES`(`Registration_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `TYPE_OF_BUSINESSES`

LOCK TABLES `TYPE_OF_BUSINESSES` WRITE;
/*!40000 ALTER TABLE `TYPE_OF_BUSINESSES` DISABLE KEYS */;
INSERT INTO `TYPE_OF_BUSINESSES` VALUES (1, 'Food'), 
(1, 'Beverages'),
(2, 'Coffee'),
(3, 'Automotive'),
(4, 'Furniture'),
(5, 'Apparel'),
(6, 'Automotive'),
(7, 'Food'),
(8, 'Electronics'),
(9, 'Apparel'),
(10, 'Electronics'),
(11, 'E-commerce'),
(12, 'Fashion'),
(13, 'Automotive'),
(14, 'Fast Food'),
(15, 'Automotive'),
(16, 'Electronics'),
(17, 'Consumer Goods'),
(18, 'Beverages'),
(19, 'IT Services'),
(20, 'Apparel');
/*!40000 ALTER TABLE `TYPE_OF_BUSINESSES` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `SPORTS_RULES`

DROP TABLE IF EXISTS `SPORTS_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPORTS_RULES` (
  `S_sports_ID` INT(3) NOT NULL,
  `Rules` VARCHAR(400) NOT NULL,
  PRIMARY KEY (`S_sports_ID`,`Rules`),
  CONSTRAINT `SPTR_SPT_FK` FOREIGN KEY (`S_sports_ID`) REFERENCES `SPORTS`(`Sport_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `SPORTS_RULES`

LOCK TABLES `SPORTS_RULES` WRITE;
/*!40000 ALTER TABLE `SPORTS_RULES` DISABLE KEYS */;
INSERT INTO `SPORTS_RULES` VALUES (10,'Intake of drugs is restricted'),
(10,'Stop fight as soon as umplires calls'),
(11, 'Participants must remain in their designated lanes'),
(12, 'Runners must complete the full distance to qualify'),
(13, 'Runners must stay on the marked course'),
(14, 'Swimmers must touch the wall at every turn'),
(15, 'Butterfly stroke technique must be maintained throughout'),
(16, 'All four strokes must be performed in the correct order'),
(17, 'Heavyweight boxers must wear protective gear'),
(18, 'Lightweight boxing requires gloves of specified weight'),
(19, 'Cyclists must use approved time-trial bikes'),
(20, 'Participants must not deviate from the marked mountain trail'),
(21, 'Players must win at least six games to win a set'),
(22, 'In doubles, players must alternate serving every game'),
(23, 'Badminton players must not touch the net during play'),
(24, 'In doubles, partners must alternate hits within a rally'),
(25, 'Rowers must remain in their assigned lanes'),
(26, 'In coxed events, the coxswain must not assist with rowing'),
(27, 'Wrestlers must avoid illegal holds to prevent disqualification'),
(28, 'Greco-Roman wrestlers must not use legs in holds or attacks'),
(29, 'Archers must shoot within the specified time limit'),
(30, 'Compound bows must meet specific weight and length standards');
/*!40000 ALTER TABLE `SPORTS_RULES` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `COACHES`

DROP TABLE IF EXISTS `COACHES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COACHES` (
  `Chs_sportspeople_ID` INT(15) NOT NULL,
  `Chs_coach_id` INT(15) NOT NULL,
  `No_of_years_of_experience` INT(2) DEFAULT NULL, 
  PRIMARY KEY (`Chs_sportspeople_ID`),
  CONSTRAINT `CHS_SPTP_FK` FOREIGN KEY (`Chs_sportspeople_ID`) REFERENCES `SPORTSPEOPLE`(`Sportspeople_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `COACHES`

LOCK TABLES `COACHES` WRITE;
/*!40000 ALTER TABLE `COACHES` DISABLE KEYS */;
INSERT INTO `COACHES` VALUES (18, 37, 15), -- Virat Kohli coached by Pep Guardiola
(19, 38, 20), -- Serena Williams coached by Zinedine Zidane
(20, 39, 10), -- Cristiano Ronaldo coached by Jill Ellis
(21, 40, 35), -- Lionel Messi coached by Mike Krzyzewski
(22, 41, 40), -- Roger Federer coached by Phil Jackson
(23, 42, 25); -- Usain Bolt coached by Martina Navratilova
/*!40000 ALTER TABLE `COACHES` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `ATHLETES`

DROP TABLE IF EXISTS `ATHLETES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATHLETES` (
  `Ath_sportspeople_ID` INT(15) NOT NULL,
  `Personal_records` VARCHAR(256) DEFAULT NULL,
  PRIMARY KEY (`Ath_sportspeople_ID`),
  CONSTRAINT `ATH_SPTP_FK` FOREIGN KEY (`Ath_sportspeople_ID`) REFERENCES `SPORTSPEOPLE`(`Sportspeople_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `ATHLETES`

LOCK TABLES `ATHLETES` WRITE;
/*!40000 ALTER TABLE `ATHLETES` DISABLE KEYS */;
INSERT INTO `ATHLETES` VALUES (18, 'ODI: 183 runs; Test: 254* runs; 8,000+ runs in T20'),
(19, '23 Grand Slam singles titles; 4 Olympic gold medals'),
(20, 'Most international goals; 5 Ballon d’Or awards'),
(21, '4 Champions League titles; 7 Ballon d’Or awards'),
(22, '20 Grand Slam singles titles; Career Golden Slam'),
(23, 'Olympic 100m: 9.58s (world record); 8 gold medals'),
(24, '28 Olympic medals (23 gold); 39 world records'),
(25, '4 Grand Slam singles titles; First Asian #1 in WTA'),
(26, '22 Grand Slam singles titles; 2 Olympic gold medals'),
(27, '7 Olympic medals (4 gold); 25 world championship medals'),
(28, '24 Grand Slam singles titles; Double Career Golden Slam'),
(29, '2019 FIFA Women’s World Cup Golden Boot winner'),
(30, 'India’s all-time top scorer; Over 85 international goals'),
(31, '9 Olympic medals (6 gold); Fastest 400m relay split'),
(32, 'England: 115 caps, 17 goals; MLS and La Liga winner'),
(33, 'Youngest FIFA World Cup Final scorer since Pelé'),
(34, 'WNBA MVP (2015, 2019); 2-time Olympic gold medalist'),
(35, '4 NBA championships; 2 Olympic gold medals'),
(36, '2 Olympic gold medals; 9-time world champion sprinter');
/*!40000 ALTER TABLE `ATHLETES` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `LOGISTICS_TEAM`

DROP TABLE IF EXISTS `LOGISTICS_TEAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOGISTICS_TEAM` (
  `Logi_team_ID` INT(2) NOT NULL,
  `Tasks` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`Logi_team_ID`),
  CONSTRAINT `LOGI_MNG_FK` FOREIGN KEY (`Logi_team_ID`) REFERENCES `MANAGEMENT`(`Team_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `LOGISTICS_TEAM`

LOCK TABLES `LOGISTICS_TEAM` WRITE;
/*!40000 ALTER TABLE `LOGISTICS_TEAM` DISABLE KEYS */;
INSERT INTO `LOGISTICS_TEAM` VALUES (1, 'Transporting equipment'),
(2, 'Venue setup and teardown'),
(3, 'Inventory management'),
(4, 'Scheduling logistics team members');
/*!40000 ALTER TABLE `LOGISTICS_TEAM` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `LOGISTICS_SAFETY_MEASURES`

DROP TABLE IF EXISTS `LOGISTICS_SAFETY_MEASURES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOGISTICS_SAFETY_MEASURES` (
  `Logi_sf_team_ID` INT(2) NOT NULL,
  `Safety_measures` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Logi_sf_team_ID`,`Safety_measures`),
  CONSTRAINT `LOGI_SF_MNG_FK` FOREIGN KEY (`Logi_sf_team_ID`) REFERENCES `LOGISTICS_TEAM`(`Logi_team_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `LOGISTICS_SAFETY_MEASURES`

LOCK TABLES `LOGISTICS_SAFETY_MEASURES` WRITE;
/*!40000 ALTER TABLE `LOGISTICS_SAFETY_MEASURES` DISABLE KEYS */;
INSERT INTO `LOGISTICS_SAFETY_MEASURES` VALUES (1, 'Proper equipment storage and handling'),
(1, 'Regular maintenance of transport vehicles'),
(2, 'Adherence to safety protocols for hazardous materials'),
(4, 'Emergency safety drills for logistics team');
/*!40000 ALTER TABLE `LOGISTICS_SAFETY_MEASURES` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `SECURITY_TEAM`

DROP TABLE IF EXISTS `SECURITY_TEAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURITY_TEAM` (
  `sect_team_ID` INT(2) NOT NULL,
  `Protocol` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`sect_team_ID`),
  CONSTRAINT `SECT_MNG_FK` FOREIGN KEY (`sect_team_ID`) REFERENCES `MANAGEMENT`(`Team_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `SECURITY_TEAM`

LOCK TABLES `SECURITY_TEAM` WRITE;
/*!40000 ALTER TABLE `SECURITY_TEAM` DISABLE KEYS */;
INSERT INTO `SECURITY_TEAM` VALUES (9, 'Monitoring surveillance systems'),
(10, 'Implementing crowd control strategies'),
(11, 'Conducting security checks for participants and spectators'),
(12, 'Emergency response for potential threats');
/*!40000 ALTER TABLE `SECURITY_TEAM` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `EVENT_ORGANIZERS`

DROP TABLE IF EXISTS `EVENT_ORGANIZERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_ORGANIZERS` (
  `EO_team_ID` INT(2) NOT NULL,
  `POC` VARCHAR(100) NOT NULL,
  `Event_schedule_timestamp` TIMESTAMP DEFAULT NULL,
  PRIMARY KEY (`EO_team_ID`),
  CONSTRAINT `EO_MNG_FK` FOREIGN KEY (`EO_team_ID`) REFERENCES `MANAGEMENT`(`Team_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `EVENT_ORGANIZERS`

LOCK TABLES `EVENT_ORGANIZERS` WRITE;
/*!40000 ALTER TABLE `EVENT_ORGANIZERS` DISABLE KEYS */;
INSERT INTO `EVENT_ORGANIZERS` VALUES (13, 'John Doe', '2024-12-01 10:00:00'),
(14, 'Jane Smith', '2024-12-01 15:00:00'),
(15, 'Emily Johnson', '2024-12-02 09:00:00'),
(16, 'Michael Brown', '2024-12-02 14:00:00');
/*!40000 ALTER TABLE `EVENT_ORGANIZERS` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `FINANCE_MANAGERS`

DROP TABLE IF EXISTS `FINANCE_MANAGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FINANCE_MANAGERS` (
  `FM_team_ID` INT(2) NOT NULL,
  `Budget` DECIMAL(10,2) DEFAULT NULL,
  PRIMARY KEY (`FM_team_ID`),
  CONSTRAINT `FM_MNG_FK` FOREIGN KEY (`FM_team_ID`) REFERENCES `MANAGEMENT`(`Team_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `FINANCE_MANAGERS`

LOCK TABLES `FINANCE_MANAGERS` WRITE;
/*!40000 ALTER TABLE `FINANCE_MANAGERS` DISABLE KEYS */;
INSERT INTO `FINANCE_MANAGERS` VALUES (21, 50000.00),
(22, 75000.00),
(23, 60000.00),
(24, 80000.00);
/*!40000 ALTER TABLE `FINANCE_MANAGERS` ENABLE KEYS */;
UNLOCK TABLES;

-- Table structure for table `JUDGES`

DROP TABLE IF EXISTS `JUDGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JUDGES` (
  `J_team_ID` INT(2) NOT NULL,
  `Experience_in_years` INT(2) DEFAULT NULL,
  PRIMARY KEY (`J_team_ID`),
  CONSTRAINT `JDG_MNG_FK` FOREIGN KEY (`J_team_ID`) REFERENCES `MANAGEMENT`(`Team_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `JUDGES`

LOCK TABLES `JUDGES` WRITE;
/*!40000 ALTER TABLE `JUDGES` DISABLE KEYS */;
INSERT INTO `JUDGES` VALUES (17, 10),
(18, 15),
(19, 20),
(20, 12); 
/*!40000 ALTER TABLE `JUDGES` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

