-- alu_student_performance Database

-- Drop tables if they already exist to ensure a clean slate
DROP TABLE IF EXISTS `linux_grades`;
DROP TABLE IF EXISTS `python_grades`;
DROP TABLE IF EXISTS `students`;

-- Create the students table first, as it's a parent table
CREATE TABLE `students` (
  `student_id` INT NOT NULL,
  `student_name` VARCHAR(100) NOT NULL,
  `intake_year` INT NOT NULL,
  PRIMARY KEY (`student_id`)
);

-- Insert sample data into the students table
INSERT INTO `students` (`student_id`, `student_name`, `intake_year`) VALUES
(1,'Abdul Kudus Zakaria Mukhtaru',2024),
(2,'Belyse Intwaza',2024),
(3,'James Peter Nnamchukwu',2024),
(4,'Chidera Alvin-Chris',2025),
(5,'Guido Rene Kayigamba',2025),
(6,'Eloi Mizero',2025),
(7,'Yonas Getachew Dejene',2024),
(8,'Ridaa Isaro',2024),
(9,'Ivan Rukundo',2025),
(10,'Judy Lee',2025),
(11,'Kevin Adams',2024),
(12,'David Katate',2024),
(13,'Rome Julliet',2025),
(14,'Dianah Wilson',2025),
(15,'Ornell Moris',2024),
(16,'Paul Chris',2025),
(17,'Scott Jones',2025),
(18,'Rachel Ishimwe',2024);

-- Create the linux_grades table
CREATE TABLE `linux_grades` (
  `course_id` INT NOT NULL,
  `course_name` VARCHAR(50) DEFAULT NULL,
  `student_id` INT DEFAULT NULL,
  `grade_obtained` DECIMAL(5,2) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `linux_grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
);

-- Insert sample data into the linux_grades table
INSERT INTO `linux_grades` (`course_id`, `course_name`, `student_id`, `grade_obtained`) VALUES
(101,'Linux',1,86.00),
(102,'Linux',2,46.00),
(103,'Linux',3,94.00),
(104,'Linux',4,79.00),
(105,'Linux',6,60.00),
(106,'Linux',8,49.00),
(107,'Linux',10,89.00),
(108,'Linux',12,57.00),
(109,'Linux',14,92.00),
(110,'Linux',16,76.00);

-- Create the python_grades table
CREATE TABLE `python_grades` (
  `course_id` INT NOT NULL,
  `course_name` VARCHAR(50) DEFAULT NULL,
  `student_id` INT DEFAULT NULL,
  `grade_obtained` DECIMAL(5,2) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `python_grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
);

-- Insert sample data into the python_grades table
INSERT INTO `python_grades` (`course_id`, `course_name`, `student_id`, `grade_obtained`) VALUES
(201,'Python',1,90.00),
(202,'Python',3,86.00),
(203,'Python',5,71.00),
(204,'Python',7,95.00),
(205,'Python',9,82.00),
(206,'Python',11,43.00),
(207,'Python',13,68.00),
(208,'Python',15,78.00),
(209,'Python',17,94.00),
(210,'Python',18,59.00);
