INSERT INTO Department
(Department_ID, Department_Name, Department_Details)
VALUES
(1, 'Cardiology', 'Diagnosis and treatment of heart conditions'),
(2, 'Neurology', 'Treatment of disorders of the nervous system'),
(3, 'Emergency', 'Emergency and urgent medical care'),
(4, 'Orthopaedics', 'Treatment of bones, joints and muscles'),
(5, 'Paediatrics', 'Medical care for children'),
(6, 'Oncology', 'Diagnosis and treatment of cancer'),
(7, 'Dermatology', 'Treatment of skin conditions'),
(8, 'Gastroenterology', 'Treatment of digestive system disorders'),
(9, 'Radiology', 'Medical imaging and diagnostic services'),
(10, 'General Medicine', 'General medical diagnosis and treatment');


INSERT INTO Employee
(Employee_ID, First_Name, Last_Name, Phone, Email, Date_of_Birth, Department_ID)
VALUES
(1, 'James', 'Anderson', '0411000001', 'james.anderson@hospital.com', '1980-03-15', 1),
(2, 'Sarah', 'Williams', '0411000002', 'sarah.williams@hospital.com', '1982-07-21', 2),
(3, 'Michael', 'Brown', '0411000003', 'michael.brown@hospital.com', '1978-11-09', 3),
(4, 'Emily', 'Taylor', '0411000004', 'emily.taylor@hospital.com', '1985-01-27', 4),
(5, 'Daniel', 'Wilson', '0411000005', 'daniel.wilson@hospital.com', '1979-05-18', 5),
(6, 'Olivia', 'Martin', '0411000006', 'olivia.martin@hospital.com', '1983-09-12', 6),
(7, 'William', 'Thompson', '0411000007', 'william.thompson@hospital.com', '1981-12-03', 7),
(8, 'Sophia', 'Moore', '0411000008', 'sophia.moore@hospital.com', '1986-04-25', 8),
(9, 'Matthew', 'Clark', '0411000009', 'matthew.clark@hospital.com', '1977-08-30', 9),
(10, 'Charlotte', 'Lewis', '0411000010', 'charlotte.lewis@hospital.com', '1984-06-14', 10);

INSERT INTO Doctor
(Employee_ID, Medical_Registration_No, Specialization, Consultation_Fee)
VALUES
(1, 'MED10001', 'Cardiology', 250.00),
(2, 'MED10002', 'Neurology', 280.00),
(3, 'MED10003', 'Emergency Medicine', 220.00),
(4, 'MED10004', 'Orthopaedics', 260.00),
(5, 'MED10005', 'Paediatrics', 230.00),
(6, 'MED10006', 'Oncology', 300.00),
(7, 'MED10007', 'Dermatology', 210.00),
(8, 'MED10008', 'Gastroenterology', 275.00),
(9, 'MED10009', 'Radiology', 240.00),
(10, 'MED10010', 'General Medicine', 200.00);

INSERT INTO Nurse
(Employee_ID, Shift, Qualification)
VALUES
(1, 'Morning', 'Registered Nurse'),
(2, 'Evening', 'Bachelor of Nursing'),
(3, 'Night', 'Registered Nurse'),
(4, 'Morning', 'Bachelor of Nursing'),
(5, 'Evening', 'Registered Nurse'),
(6, 'Night', 'Master of Nursing'),
(7, 'Morning', 'Registered Nurse'),
(8, 'Evening', 'Bachelor of Nursing'),
(9, 'Night', 'Registered Nurse'),
(10, 'Morning', 'Bachelor of Nursing');

INSERT INTO Administrative_Staff
(Employee_ID, Position, Office_Number)
VALUES
(1, 'Hospital Administrator', 'A101'),
(2, 'Reception Manager', 'A102'),
(3, 'Finance Officer', 'A103'),
(4, 'HR Officer', 'A104'),
(5, 'Admissions Officer', 'A105'),
(6, 'Medical Records Officer', 'A106'),
(7, 'Billing Officer', 'A107'),
(8, 'Scheduling Officer', 'A108'),
(9, 'IT Support Officer', 'A109'),
(10, 'Operations Coordinator', 'A110');

INSERT INTO Patient
(Patient_ID, First_Name, Last_Name, Date_of_Birth, Gender, Phone, Email, Address)
VALUES
(1, 'Liam', 'Smith', '1995-02-14', 'Male', '0422000001', 'liam.smith@email.com', '12 King Street'),
(2, 'Emma', 'Johnson', '1990-06-22', 'Female', '0422000002', 'emma.johnson@email.com', '25 Park Road'),
(3, 'Noah', 'Williams', '1988-09-10', 'Male', '0422000003', 'noah.williams@email.com', '31 Victoria Avenue'),
(4, 'Ava', 'Brown', '1997-11-05', 'Female', '0422000004', 'ava.brown@email.com', '44 George Street'),
(5, 'Oliver', 'Jones', '1985-04-18', 'Male', '0422000005', 'oliver.jones@email.com', '8 Queen Street'),
(6, 'Mia', 'Davis', '1992-07-30', 'Female', '0422000006', 'mia.davis@email.com', '17 Albert Road'),
(7, 'William', 'Miller', '1979-12-12', 'Male', '0422000007', 'william.miller@email.com', '52 Edward Street'),
(8, 'Isla', 'Wilson', '2000-03-27', 'Female', '0422000008', 'isla.wilson@email.com', '9 Elizabeth Street'),
(9, 'Henry', 'Moore', '1993-06-08', 'Male', '0422000009', 'henry.moore@email.com', '63 Collins Street'),
(10, 'Sophia', 'Taylor', '1987-10-19', 'Female', '0422000010', 'sophia.taylor@email.com', '21 Market Street');

INSERT INTO Appointment
(Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Appointment_Time, Status)
VALUES
(1, 1, 1, '2026-08-01', '09:00:00', 'Completed'),
(2, 1, 2, '2026-08-05', '10:30:00', 'Completed'),
(3, 2, 3, '2026-08-02', '11:00:00', 'Completed'),
(4, 3, 4, '2026-08-03', '14:00:00', 'Completed'),
(5, 3, 5, '2026-08-07', '09:30:00', 'Completed'),
(6, 4, 6, '2026-08-04', '15:00:00', 'Completed'),
(7, 5, 7, '2026-08-06', '13:00:00', 'Completed'),
(8, 6, 8, '2026-08-08', '10:00:00', 'Scheduled'),
(9, 7, 9, '2026-08-09', '11:30:00', 'Completed'),
(10, 8, 10, '2026-08-10', '16:00:00', 'Scheduled');

SELECT * FROM Appointment;

INSERT INTO Billing
(Bill_ID, Appointment_ID, Charges, Payment_Date, Payment_Method, Payment_Status)
VALUES
(1, 1, 250.00, '2026-08-01', 'Card', 'Paid'),
(2, 2, 280.00, '2026-08-05', 'Card', 'Paid'),
(3, 3, 220.00, '2026-08-02', 'Cash', 'Paid'),
(4, 4, 260.00, '2026-08-03', 'Card', 'Paid'),
(5, 5, 230.00, '2026-08-07', 'Online', 'Paid'),
(6, 6, 300.00, '2026-08-04', 'Card', 'Paid'),
(7, 7, 210.00, '2026-08-06', 'Cash', 'Paid'),
(8, 8, 275.00, NULL, NULL, 'Pending'),
(9, 9, 240.00, '2026-08-09', 'Online', 'Paid'),
(10, 10, 200.00, NULL, NULL, 'Pending');

SELECT * FROM Billing;

