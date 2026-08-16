-- ICT103 Assessment 3
-- Smart Hospital Management System
-- Database creation and table structure

CREATE DATABASE ICT103DATABASE_SACHINGILL;

USE ICT103DATABASE_SACHINGILL;


-- 1. Department Table
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(100) NOT NULL,
    Department_Details VARCHAR(255)
);


-- 2. Employee Table
CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Date_of_Birth DATE,
    Department_ID INT NOT NULL,

    FOREIGN KEY (Department_ID)
        REFERENCES Department(Department_ID)
);


-- 3. Doctor Table
CREATE TABLE Doctor (
    Employee_ID INT PRIMARY KEY,
    Medical_Registration_No VARCHAR(50) NOT NULL UNIQUE,
    Specialization VARCHAR(100) NOT NULL,
    Consultation_Fee DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (Employee_ID)
        REFERENCES Employee(Employee_ID)
);


-- 4. Nurse Table
CREATE TABLE Nurse (
    Employee_ID INT PRIMARY KEY,
    Shift VARCHAR(50) NOT NULL,
    Qualification VARCHAR(100) NOT NULL,

    FOREIGN KEY (Employee_ID)
        REFERENCES Employee(Employee_ID)
);


-- 5. Administrative Staff Table
CREATE TABLE Administrative_Staff (
    Employee_ID INT PRIMARY KEY,
    Position VARCHAR(100) NOT NULL,
    Office_Number VARCHAR(20),

    FOREIGN KEY (Employee_ID)
        REFERENCES Employee(Employee_ID)
);


-- 6. Patient Table
CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Date_of_Birth DATE,
    Gender VARCHAR(20),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255)
);


-- 7. Appointment Table
CREATE TABLE Appointment (
    Appointment_ID INT PRIMARY KEY,
    Patient_ID INT NOT NULL,
    Doctor_ID INT NOT NULL,
    Appointment_Date DATE NOT NULL,
    Appointment_Time TIME NOT NULL,
    Status VARCHAR(30) NOT NULL,

    FOREIGN KEY (Patient_ID)
        REFERENCES Patient(Patient_ID),

    FOREIGN KEY (Doctor_ID)
        REFERENCES Doctor(Employee_ID)
);


-- 8. Billing Table
CREATE TABLE Billing (
    Bill_ID INT PRIMARY KEY,
    Appointment_ID INT NOT NULL UNIQUE,
    Charges DECIMAL(10,2) NOT NULL,
    Payment_Date DATE,
    Payment_Method VARCHAR(30),
    Payment_Status VARCHAR(30) NOT NULL,

    FOREIGN KEY (Appointment_ID)
        REFERENCES Appointment(Appointment_ID)
);