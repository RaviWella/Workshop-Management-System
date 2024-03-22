-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 12:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nitd_workshop_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chief_coordinator`
--

CREATE TABLE `chief_coordinator` (
  `staff_ID` varchar(10) NOT NULL,
  `chief_co_ID` varchar(10) NOT NULL,
  `Salary` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chief_coordinator`
--

INSERT INTO `chief_coordinator` (`staff_ID`, `chief_co_ID`, `Salary`) VALUES
('S002', 'CH001', '155000.00'),
('S004', 'CH002', '180000.00'),
('S006', 'CH003', '190000.00'),
('S008', 'CH004', '200000.00'),
('S010', 'CH005', '188000.00');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_room`
--

CREATE TABLE `meeting_room` (
  `Floor_ID` char(10) NOT NULL,
  `Room_ID` char(10) NOT NULL,
  `venue` varchar(20) DEFAULT NULL,
  `capacity` int(10) DEFAULT NULL,
  `workshopID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meeting_room`
--

INSERT INTO `meeting_room` (`Floor_ID`, `Room_ID`, `venue`, `capacity`, `workshopID`) VALUES
('1', 'L01', 'HALL A', 100, 'A001'),
('2', 'L01', 'HALL A', 200, 'A002'),
('2', 'L02', 'HALL A', 500, 'A003'),
('3', 'L04', 'HALL B', 150, 'A004'),
('4', 'L01', 'HALL C', 300, 'A005');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `participant_ID` varchar(10) NOT NULL,
  `F_Name` varchar(20) DEFAULT NULL,
  `L_Name` varchar(20) DEFAULT NULL,
  `Tell_No` varchar(10) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  `Working_Experience` varchar(20) DEFAULT NULL,
  `Place_of_work` varchar(20) DEFAULT NULL,
  `Work_location` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`participant_ID`, `F_Name`, `L_Name`, `Tell_No`, `Email`, `Designation`, `Working_Experience`, `Place_of_work`, `Work_location`) VALUES
('P001', 'SANUKA', 'WIJERATHNA', '0711250397', 'sanukawijeratna@gmail.com', 'Assistant Manager', '5 years', 'Dialog', 'Kottawa'),
('P002', 'RAVINDU', 'WELLALAGE', '0711250398', 'ravinduwell@gmail.com', 'Senior Manager', '6 years', 'Dxdy', 'Thalawathugoda'),
('P003', 'NADUN', 'WIJESINHNA', '0711250357', 'nadunwijesinha@gmail.com', 'Diretor', '5 years', 'Mercantile invesment', 'Kottawa'),
('P004', 'SAJITH', 'RAJAPAKSHA', '0715250397', 'sajiya2023@gmail.com', 'Accountant', '3 years', 'Rocell', 'Moratuwa'),
('P005', 'AMAL', 'KODITHUWAKKU', '0711256397', 'kodithuwakkuamal@gmail.com', 'Executive Director', '5 years', 'Dialog', 'Kottawa'),
('P006', 'SANJEEWA', 'ARIYARATHNA', '0721250397', 'sanjeewaari@gmail.com', 'Executive Manager', '5 years', 'Dialog', 'Kurunegala'),
('P007', 'SADUN', 'GAMAGE', '0711250398', 'saduna@gmail.com', 'Manager', '6 years', 'Dxdy', 'Colombo'),
('P008', 'VISHMI', 'PERERA', '0711257357', 'vishmi@gmail.com', 'Senior Diretor', '5 years', 'Mercantile invesment', 'Galle'),
('P009', 'PULINDU', 'SIRIWARDANA', '0719250397', 'puliya2345@gmail.com', 'Project Manager', '3 years', 'Rocell', 'Kandy'),
('P010', 'CHAMINDA', 'ABEWARDANA', '0711256397', 'chamindaabewardana@gmail.com', ' Managing Director', '5 years', 'Dialog', 'Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `participant_qualification`
--

CREATE TABLE `participant_qualification` (
  `Participant_ID` varchar(30) NOT NULL,
  `Qualification` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participant_qualification`
--

INSERT INTO `participant_qualification` (`Participant_ID`, `Qualification`) VALUES
('P001', 'Bsc in Network Engineering '),
('P001', 'GCE A/L in Mathematics'),
('P002', 'Bsc in Software Engineering'),
('P002', 'GCE A/L in Mathematics'),
('P003', 'Bsc in Business management'),
('P003', 'Msc in Management'),
('P004', 'Bsc in Banking '),
('P004', 'GCE A/L in Mathematics'),
('P005', 'GCE A/L in Biology'),
('P005', 'Professional Software Developer');

-- --------------------------------------------------------

--
-- Table structure for table `resource_person`
--

CREATE TABLE `resource_person` (
  `RP_ID` varchar(10) NOT NULL,
  `F_Name` varchar(10) DEFAULT NULL,
  `L_Name` varchar(10) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `hourly_rate` decimal(7,2) DEFAULT NULL,
  `specialized_area` varchar(20) DEFAULT NULL,
  `working_experience_duration` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resource_person`
--

INSERT INTO `resource_person` (`RP_ID`, `F_Name`, `L_Name`, `category`, `hourly_rate`, `specialized_area`, `working_experience_duration`) VALUES
('R01', 'KAMAL', 'PERERA', 'Entrepreneur', '10000.00', 'Management', '7 years'),
('R02', 'SUNIL', 'APONSU', 'Industry Expert', '15000.00', 'Economics', '5 years'),
('R03', 'NIMAL', 'ALWIS', 'Academic', '8000.00', 'Research findings', '5 years'),
('R04', 'NAMAL', 'SILVA', 'Inspirational Speake', '10000.00', 'Motivational speeche', '7 years'),
('R05', 'BENUL', 'SOYSA', 'Community Leaders', '12000.00', 'Leadership training', '7 years');

-- --------------------------------------------------------

--
-- Table structure for table `resource_person_qualification`
--

CREATE TABLE `resource_person_qualification` (
  `RP_ID` varchar(10) NOT NULL,
  `Qualification` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resource_person_qualification`
--

INSERT INTO `resource_person_qualification` (`RP_ID`, `Qualification`) VALUES
('R01', 'Masters in Management'),
('R02', 'Masters in Business studies'),
('R03', 'Bsc in Academics'),
('R04', 'Masters in self improvements'),
('R05', 'Bsc in Leadership community');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_no` varchar(10) NOT NULL,
  `workshopID` varchar(10) DEFAULT NULL,
  `Resource_Person` varchar(10) DEFAULT NULL,
  `Discussion_topic` varchar(40) DEFAULT NULL,
  `Date_start` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_no`, `workshopID`, `Resource_Person`, `Discussion_topic`, `Date_start`, `start_time`, `end_time`) VALUES
('S01', 'A001', 'R01', 'Management in life', '2023-04-10', '10:00:00', '12:00:00'),
('S02', 'A001', 'R02', 'Basics of economics ', '2023-04-10', '14:00:00', '16:00:00'),
('S03', 'A002', 'R03', 'Academic life', '2023-05-10', '10:00:00', '12:00:00'),
('S04', 'A002', 'R04', 'Inspire for future', '2023-05-10', '14:00:00', '16:00:00'),
('S05', 'A003', 'R05', 'Defend social problems', '2023-04-25', '10:00:00', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `session_participant`
--

CREATE TABLE `session_participant` (
  `session_no` varchar(10) NOT NULL,
  `participant_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session_participant`
--

INSERT INTO `session_participant` (`session_no`, `participant_ID`) VALUES
('S01', 'P001'),
('S01', 'P002'),
('S02', 'P003'),
('S02', 'P004'),
('S03', 'P001'),
('S03', 'P005'),
('S04', 'P002'),
('S04', 'P003'),
('S05', 'P004'),
('S05', 'P005');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_ID` varchar(20) NOT NULL,
  `F_Name` varchar(20) DEFAULT NULL,
  `L_Name` varchar(20) DEFAULT NULL,
  `Tell` varchar(10) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `workshop` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_ID`, `F_Name`, `L_Name`, `Tell`, `Email`, `workshop`) VALUES
('S001', 'GAWESH', 'GOMES', '0719440055', 'gaweshgomes@gmail.com', 'A001'),
('S002', 'RADIL', 'DAMSA', '0719440054', 'radildamsa@gmail.com', 'A001'),
('S003', 'SEHANDU', 'SIRIWARDANA', '0714440055', 'sehandusiriwardana@gmail.com', 'A002'),
('S004', 'DINUSHI', 'WANNIARACHCHI', '0719444055', 'dinushiwanni@gmail.com', 'A002'),
('S005', 'DEVINDHI', 'WIJESINGHA', '0719440025', 'gdevidwije@gmail.com', 'A003'),
('S006', 'BINUL', 'GAMAGE', '0719740055', 'binulgame@gmail.com', 'A003'),
('S007', 'NITHIRA', 'ALWIS', '0719440035', 'nithiraalwis@gmail.com', 'A004'),
('S008', 'SENAKA', 'BATAGODA', '0729440055', 'senakabatagoda@gmail.com', 'A004'),
('S009', 'DUSHMANTHA', 'SAMEERA', '0716440055', 'dushmanthasameera@gmail.com', 'A005'),
('S010', 'LAKSHITHA', 'MALWANA', '0719411055', 'lakshithamalwana@gmail.com', 'A005');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `workshopID` varchar(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `max_capacity` int(10) DEFAULT NULL,
  `Reg_fee` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`workshopID`, `name`, `type`, `start_date`, `end_date`, `max_capacity`, `Reg_fee`) VALUES
('A001', 'ENIGMA\'23', 'Leadership', '2023-04-10', '2023-04-15', 100, '48000.00'),
('A002', 'GANGA', 'Soft Skills', '2023-05-10', '2023-05-15', 500, '38000.00'),
('A003', 'TopManagement\'23', 'management', '2023-04-15', '2023-04-25', 200, '40000.00'),
('A004', 'Search&Search', 'Research', '2023-06-10', '2023-06-15', 100, '50000.00'),
('A005', 'Techno2023', 'Technical Skills', '2023-06-01', '2023-06-10', 300, '45000.00');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_coordinator`
--

CREATE TABLE `workshop_coordinator` (
  `staff_ID` varchar(10) NOT NULL,
  `work_co_ID` varchar(10) NOT NULL,
  `Salary` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workshop_coordinator`
--

INSERT INTO `workshop_coordinator` (`staff_ID`, `work_co_ID`, `Salary`) VALUES
('S001', 'W001', '80000.00'),
('S003', 'W002', '75000.00'),
('S005', 'W003', '100000.00'),
('S007', 'W004', '88000.00'),
('S009', 'W005', '158000.00');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_participant`
--

CREATE TABLE `workshop_participant` (
  `workshop_ID` varchar(10) NOT NULL,
  `participant_ID` varchar(10) NOT NULL,
  `Reg_Date` date DEFAULT NULL,
  `payment` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workshop_participant`
--

INSERT INTO `workshop_participant` (`workshop_ID`, `participant_ID`, `Reg_Date`, `payment`) VALUES
('A001', 'P001', '2023-04-05', '20000.00'),
('A001', 'P002', '2023-04-07', '20000.00'),
('A002', 'P001', '2023-05-05', '28000.00'),
('A002', 'P002', '2023-05-05', '30000.00'),
('A003', 'P003', '2023-04-10', '25000.00'),
('A003', 'P004', '2023-04-05', '25000.00'),
('A004', 'P004', '2023-06-05', '40000.00'),
('A004', 'P005', '2023-06-08', '20000.00'),
('A005', 'P003', '2023-06-02', '20000.00'),
('A005', 'P005', '2023-05-28', '45000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chief_coordinator`
--
ALTER TABLE `chief_coordinator`
  ADD PRIMARY KEY (`staff_ID`);

--
-- Indexes for table `meeting_room`
--
ALTER TABLE `meeting_room`
  ADD PRIMARY KEY (`Floor_ID`,`Room_ID`),
  ADD KEY `workshopID` (`workshopID`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`participant_ID`);

--
-- Indexes for table `participant_qualification`
--
ALTER TABLE `participant_qualification`
  ADD PRIMARY KEY (`Participant_ID`,`Qualification`);

--
-- Indexes for table `resource_person`
--
ALTER TABLE `resource_person`
  ADD PRIMARY KEY (`RP_ID`);

--
-- Indexes for table `resource_person_qualification`
--
ALTER TABLE `resource_person_qualification`
  ADD PRIMARY KEY (`RP_ID`,`Qualification`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_no`),
  ADD KEY `Resource_Person` (`Resource_Person`),
  ADD KEY `workshopID` (`workshopID`);

--
-- Indexes for table `session_participant`
--
ALTER TABLE `session_participant`
  ADD PRIMARY KEY (`session_no`,`participant_ID`),
  ADD KEY `participant_ID` (`participant_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_ID`),
  ADD KEY `workshop` (`workshop`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`workshopID`);

--
-- Indexes for table `workshop_coordinator`
--
ALTER TABLE `workshop_coordinator`
  ADD PRIMARY KEY (`staff_ID`);

--
-- Indexes for table `workshop_participant`
--
ALTER TABLE `workshop_participant`
  ADD PRIMARY KEY (`workshop_ID`,`participant_ID`),
  ADD KEY `participant_ID` (`participant_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chief_coordinator`
--
ALTER TABLE `chief_coordinator`
  ADD CONSTRAINT `chief_coordinator_ibfk_1` FOREIGN KEY (`staff_ID`) REFERENCES `staff` (`staff_ID`);

--
-- Constraints for table `meeting_room`
--
ALTER TABLE `meeting_room`
  ADD CONSTRAINT `meeting_room_ibfk_1` FOREIGN KEY (`workshopID`) REFERENCES `workshop` (`workshopID`);

--
-- Constraints for table `participant_qualification`
--
ALTER TABLE `participant_qualification`
  ADD CONSTRAINT `participant_qualification_ibfk_1` FOREIGN KEY (`Participant_ID`) REFERENCES `participant` (`participant_ID`);

--
-- Constraints for table `resource_person_qualification`
--
ALTER TABLE `resource_person_qualification`
  ADD CONSTRAINT `resource_person_qualification_ibfk_1` FOREIGN KEY (`RP_ID`) REFERENCES `resource_person` (`RP_ID`);

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`Resource_Person`) REFERENCES `resource_person` (`RP_ID`),
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`workshopID`) REFERENCES `workshop` (`workshopID`);

--
-- Constraints for table `session_participant`
--
ALTER TABLE `session_participant`
  ADD CONSTRAINT `session_participant_ibfk_1` FOREIGN KEY (`session_no`) REFERENCES `session` (`session_no`),
  ADD CONSTRAINT `session_participant_ibfk_2` FOREIGN KEY (`participant_ID`) REFERENCES `participant` (`participant_ID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`workshop`) REFERENCES `workshop` (`workshopID`);

--
-- Constraints for table `workshop_coordinator`
--
ALTER TABLE `workshop_coordinator`
  ADD CONSTRAINT `workshop_coordinator_ibfk_1` FOREIGN KEY (`staff_ID`) REFERENCES `staff` (`staff_ID`);

--
-- Constraints for table `workshop_participant`
--
ALTER TABLE `workshop_participant`
  ADD CONSTRAINT `workshop_participant_ibfk_1` FOREIGN KEY (`workshop_ID`) REFERENCES `workshop` (`workshopID`),
  ADD CONSTRAINT `workshop_participant_ibfk_2` FOREIGN KEY (`participant_ID`) REFERENCES `participant` (`participant_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
