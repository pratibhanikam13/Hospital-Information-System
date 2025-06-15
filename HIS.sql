
select * from Hospital;
select * from Doctor;

--Fetch all Hospital and Doctor Information 
SELECT 
H.Hospital_ID, 
H.Hospital_Name, 
H.Bed_Count,
D.Doctor_ID,
D.Doctor_Name,
D.specialty,
D.Salary,
D.Experience
FROM Hospital H, Doctor D
WHERE H.Hospital_ID = D.Hospital_ID;


--Create Database
CREATE DATABASE HospitalDB;
--To make it current Database
USE HospitalDB;

--Query ToCreate Table Hospital.
CREATE TABLE Hospital (
    Hospital_Id INT PRIMARY KEY,
    Hospital_Name VARCHAR(100),
    Bed_Count INT
);

--Query to Insert Data into Table Hospital.
INSERT INTO Hospital (Hospital_ID, Hospital_Name, Bed_Count) VALUES
(1, 'City Medical', 300),
(2, 'Modern Medical Center', 600),
(3, ' Apollo Heart Hospital', 900),
(4, 'Royal Care Hospital', 1200),
(5, 'Huntingdon Surgical Hospital', 1500);

--Query to Create Table Doctor

CREATE TABLE Doctor(
Doctor_ID INT PRIMARY KEY,
Doctor_Name VARCHAR(100),
Hospital_ID INT FOREIGN KEY REFERENCES Hospital(Hospital_ID),
Joining_Date DATE,
Specialty VARCHAR(100),
Salary INT,
Experience INT,
);

-- Query to add New Field Into Table.
ALTER TABLE Doctor
ADD Doctor_Name VARCHAR(100);

--Query to change Field Name.
EXEC sp_rename 'Doctor.Speciality', 'Specialty', 'COLUMN';

--Query to delete table Doctor
DROP TABLE Doctor;

--1. Connect to your database server and print its version 

 SELECT @@VERSION Version;


--Query to Insert Data Into Table Doctor
--2. Add 50 sample records 

INSERT INTO Doctor (Doctor_Id, Doctor_Name, Hospital_Id, Joining_Date, Specialty, Salary, Experience) 
VALUES
(101, 'Dr. Smith', 1, '2020-03-15', 'Cardiology', 150000, 10),
(102, 'Dr. Patel', 2, '2019-06-20', 'Neurology', 160000, 12),
(103, 'Dr. Rao', 3, '2021-01-10', 'Orthopedics', 140000, 8),
(104, 'Dr. Chen', 4, '2022-09-01', 'Dermatology', 130000, 5),
(105, 'Dr. Ahmed', 5, '2023-02-05', 'Pediatrics', 120000, 3),
(106, 'Dr. Meera Sharma', 1, '2020-01-15', 'Cardiology', 150000, 4),
(107, 'Dr. Alex Roy', 2, '2019-11-20', 'Neurology', 160000, 5),
(108, 'Dr. Sara Khan', 3, '2021-06-10', 'Orthopedics', 140000, 3),
(109, 'Dr. Vikram Desai', 4, '2023-04-22', 'Pediatrics', 130000, 1),
(110, 'Dr. Neha Agarwal', 5, '2022-08-18', 'Dermatology', 120000, 2),
(111, 'Dr. Ravi Patil', 1, '2020-07-30', 'Cardiology', 155000, 4),
(112, 'Dr. Anjali Nair', 2, '2021-12-05', 'Neurology', 148000, 3),
(113, 'Dr. Sameer Joshi', 3, '2023-01-15', 'Pediatrics', 125000, 1),
(114, 'Dr. Nisha Verma', 4, '2020-05-12', 'Orthopedics', 135000, 4),
(115, 'Dr. Rajesh Iyer', 5, '2022-10-30', 'Dermatology', 122000, 2),
(116, 'Dr. Priya Das', 1, '2021-03-17', 'Cardiology', 152000, 3),
(117, 'Dr. Arjun Malhotra', 2, '2018-09-22', 'Neurology', 165000, 6),
(118, 'Dr. Kavita Singh', 3, '2020-11-29', 'Pediatrics', 128000, 3),
(119, 'Dr. Alok Jain', 4, '2021-08-10', 'Orthopedics', 142000, 3),
(120, 'Dr. Sneha Dutta', 5, '2023-03-01', 'Dermatology', 121000, 1),
(121, 'Dr. Rehan Ali', 1, '2022-01-25', 'Cardiology', 149000, 2),
(122, 'Dr. Pooja Reddy', 2, '2021-05-11', 'Neurology', 150000, 3),
(123, 'Dr. Dev Sharma', 3, '2020-06-14', 'Pediatrics', 127000, 4),
(124, 'Dr. Shruti Kapoor', 4, '2022-07-07', 'Orthopedics', 138000, 2),
(125, 'Dr. Rohit Mathur', 5, '2019-10-13', 'Dermatology', 124000, 5),
(126, 'Dr. Tanya Bhatt', 1, '2020-02-19', 'Cardiology', 153000, 4),
(127, 'Dr. Harsh Vora', 2, '2021-09-09', 'Neurology', 157000, 3),
(128, 'Dr. Deepa Ghosh', 3, '2023-02-28', 'Pediatrics', 126000, 1),
(129, 'Dr. Yash Saxena', 4, '2021-04-23', 'Orthopedics', 143000, 3),
(130, 'Dr. Mehul Shah', 5, '2022-06-30', 'Dermatology', 119000, 2),
(131, 'Dr. Kanika Bansal', 1, '2020-08-05', 'Cardiology', 151000, 4),
(132, 'Dr. Irfan Qureshi', 2, '2019-07-16', 'Neurology', 158000, 5),
(133, 'Dr. Rina Joshi', 3, '2021-12-22', 'Pediatrics', 129000, 2),
(134, 'Dr. Sagar Thakur', 4, '2020-03-27', 'Orthopedics', 137000, 4),
(135, 'Dr. Ayesha Merchant', 5, '2023-05-06', 'Dermatology', 120000, 1),
(136, 'Dr. Kabir Mallick', 1, '2021-06-16', 'Cardiology', 154000, 3),
(137, 'Dr. Bhavna Kapoor', 2, '2020-12-01', 'Neurology', 162000, 4),
(138, 'Dr. Faizan Sheikh', 3, '2022-02-14', 'Pediatrics', 124000, 2),
(139, 'Dr. Juhi Mehta', 4, '2023-04-09', 'Orthopedics', 133000, 1),
(140, 'Dr. Vikas Srivastava', 5, '2021-11-19', 'Dermatology', 125000, 3),
(141, 'Dr. Manav Rana', 1, '2020-09-21', 'Cardiology', 156000, 4),
(142, 'Dr. Nidhi Menon', 2, '2018-10-02', 'Neurology', 164000, 6),
(143, 'Dr. Omkar Sinha', 3, '2022-09-17', 'Pediatrics', 130000, 2),
(144, 'Dr. Geeta Mohan', 4, '2020-01-10', 'Orthopedics', 136000, 4),
(145, 'Dr. Hina Arora', 5, '2021-07-25', 'Dermatology', 123000, 3),
(146, 'Dr. Shyam Nanda', 1, '2019-05-28', 'Cardiology', 150500, 5),
(147, 'Dr. Charu Lohia', 2, '2021-10-20', 'Neurology', 159000, 3),
(148, 'Dr. Kunal Dubey', 3, '2023-01-02', 'Pediatrics', 126500, 1),
(149, 'Dr. Isha Shukla', 4, '2022-11-11', 'Orthopedics', 132000, 2),
(150, 'Dr. Aditya Negi', 5, '2020-06-18', 'Dermatology', 126000, 4);




--3. Fetch Hospital and Doctor Information using hospital Id and doctor Id

SELECT 
H.Hospital_ID, 
H.Hospital_Name, 
H.Bed_Count,
D.Doctor_ID,
D.Doctor_Name,
D.specialty,
D.Salary,
D.Experience
FROM Hospital H
JOIN Doctor D ON H.Hospital_ID = D.Hospital_ID
WHERE H.Hospital_Id = 1 AND  D.Doctor_ID = 101;

--4. Get the list of the doctors as per given specialty and salary 

SELECT * FROM Doctor
WHERE Specialty = 'Cardiology' AND Salary > 140000;


--5. Get the list of the doctors from a given hospital  

SELECT D.Doctor_ID,D.Doctor_Name, D.Specialty, H.Hospital_Name  
FROM Doctor D JOIN Hospital H 
ON D.Hospital_ID = H.Hospital_ID
WHERE H.Hospital_ID =3;

--6. Update doctor experience in years 

UPDATE Doctor
SET Experience = 6
WHERE Doctor_Id = 101;