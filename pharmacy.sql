CREATE DATABASE /*!32312 IF NOT EXISTS*/ pharmacy;
USE pharmacy;


-- table `pharmacy`.`customer`

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `Name` varchar(20) NOT NULL,
  `Mobile_no` bigint(22) NOT NULL DEFAULT '0',
  `No_of_purchases` int(11) DEFAULT NULL,
  `CustomerID` int(20) DEFAULT NULL,
  PRIMARY KEY (`Mobile_no`),
  UNIQUE KEY `CoustomerID` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `pharmacy`.`customer`


INSERT INTO `customer` (`Name`,`Mobile_no`,`No_of_purchases`,`CustomerID`) VALUES 
 ('zein', '20115649851', '3', '8'),
('mohamed', '20118466541', '0', '5'),
('youssef', '20121654651', '4', '7'),
('alaa', '20125564657', '7', '6'),
('salah', '20126653454', '0', '4'),
('omar', '201280329306', '1', '1'),
('Ajay', '201289546565', '0', '2'),
('(yassin', '201554156544', '0', '3');



-- Table structure for table `pharmacy`.`login`


DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `Sno` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `Sno` (`Sno`),
  UNIQUE KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`.`login`
--

INSERT INTO `login` (`Sno`,`Userid`,`Password`) VALUES 
 ('1', 'admin', 'admin'),
('2', 'omar', 'admin'),
('3', 'mohamed', 'admin');

-- table `pharmacy`.`manufacturer`


DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE `manufacturer` (
  `Manufacturer_ID` int(10) NOT NULL,
  `Mobile_No` bigint(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `No_of_Supplies` int(10) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Manufacturer_name` varchar(50) DEFAULT NULL,
  `Phone_no` bigint(20) NOT NULL,
  PRIMARY KEY (`Manufacturer_ID`),
  UNIQUE KEY `Mobile_No` (`Mobile_No`),
  UNIQUE KEY `Mobile_No_2` (`Mobile_No`),
  UNIQUE KEY `Phone_no` (`Phone_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- table `pharmacy`.`manufacturer`

INSERT INTO `manufacturer` (`Manufacturer_ID`,`Mobile_No`,`Address`,`No_of_Supplies`,`City`,`State`,`Manufacturer_name`,`Phone_no`) VALUES 
 ('1', '201256466504', '127 sidi gaber', '9', 'Alexandria', 'Alexandria', 'Manufacturer1', '35478799'),
('2', '201288897888', '12 sidibasher', '2', 'Alexandria', 'Alexandria', 'Manufacturer2', '35456123'),
('3', '201589498788', '10 tagma3', '2', 'Cairo', 'Cairo', 'Manufacturer3', '25654655'),
('4', '201189856662', '11 shobra', '5', 'Cairo', 'Cairo', 'Manufacturer4', '25648654'),
('5', '201225489887', '5 masr al gadida', '3', 'Cairo', 'Cairo', 'Manufacturer5', '26546546');




-- Table structure for table `pharmacy`.`medicines`


DROP TABLE IF EXISTS `medicines`;
CREATE TABLE `medicines` (
  `Med_Code` int(10) NOT NULL,
  `Medicine` varchar(20) NOT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `ManufacturerName` varchar(20) DEFAULT NULL,
  `Price` int(10) NOT NULL,
  `Expiry_date` date NOT NULL,
  PRIMARY KEY (`Med_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`.`medicines`
--

INSERT INTO `medicines` (`Med_Code`,`Medicine`,`Quantity`,`ManufacturerName`,`Price`,`Expiry_date`) VALUES 
 ('1', 'Crocin', '60', 'Manufacturer2', '10', '2025-06-15'),
 ('2', 'Norflox', '19', 'Manufacturer3', '15', '2028-08-15'),
 ('3', 'Sporlac', '25', 'Manufacturer3', '12', '2028-05-15'),
 ('4', 'Tyfy-300', '57', 'Manufacturer5', '10', '2025-06-08'),
 ('7', 'Levocet', '55', 'Manufacturer2', '7', '2024-11-05'),
 ('8', 'Meftal-Spas', '59', 'Manufacturer3', '21', '2029-07-07'),
 ('9', 'Zanflox-Oz', '43', 'Manufacturer4', '13', '2024-02-24'),
 ('10', 'Aceclo', '48', 'Manufacturer2', '14', '2025-07-19'),
 ('11', 'Recofast', '40', 'Manufacturer1', '21', '2025-06-15');



-- table `pharmacy`.`purchase`


DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `Date` date NOT NULL,
  `CoustomerID` int(10) NOT NULL,
  `Medicines` varchar(50) DEFAULT NULL,
  `Quantity` int(10) NOT NULL,
  `ExpiryDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- table `pharmacy`.`purchase`


INSERT INTO `purchase` (`Date`,`CoustomerID`,`Medicines`,`Quantity`,`ExpiryDate`) VALUES 
 ('2023-06-04',6,'Norflox',2,'2028-08-15'),
 ('2023-07-12',6,'Sporlac',5,'2028-05-15'),
 ('2023-09-27',6,'Tyfy-300',3,'2025-06-08'),
 ('2023-10-22',7,'Levocet',1,'2024-11-05'),
 ('2023-11-23',7,'Levocet',2,'2024-11-05'),
 ('2023-11-09',7,'Meftal-Spas',5,'2029-07-07'),
 ('2023-01-01',7,'Tyfy-300',5,'2025-06-08'),
 ('2023-02-08',7,'Norflox',6,'2028-08-15'),
 ('2023-02-08',7,'Zanflox-Oz',3,'2024-02-24'),
 ('2023-10-29',8,'Sporlac',10,'2028-05-15');
