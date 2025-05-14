-- Clinic Booking System
-- Create Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Create Doctors Table
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    department_id INT,
    email VARCHAR(100) UNIQUE,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Create Patients Table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    phone VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE
);

-- Create Appointments Table
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Create Medical Records Table
CREATE TABLE Medical_Records (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    diagnosis TEXT NOT NULL,
    treatment TEXT,
    record_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Create Users Table (Admins)
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('Admin') DEFAULT 'Admin'
);


-- inserting values on each Tables
-- inserting into Departments
INSERT INTO Departments (name) VALUES 
('Cardiology'),
('Pediatrics'),
('Neurology'),
('Dermatology');

-- inserting into doctors
INSERT INTO Doctors (name, specialization, department_id, email) VALUES 
('Dr. Alice Mwangi', 'Heart Specialist', 1, 'alice@clinic.com'),
('Dr. Brian Otieno', 'Child Specialist', 2, 'brian@clinic.com'),
('Dr. Carol Wanjiku', 'Neurosurgeon', 3, 'carol@clinic.com'),
('Dr. David Kimani', 'Skin Specialist', 4, 'david@clinic.com');

-- inserting into patients
INSERT INTO Patients (name, date_of_birth, phone, email) VALUES 
('John Gicheru', '1990-04-15', '0712345678', 'john@example.com'),
('Jane Njeri', '1985-11-22', '0723456789', 'jane@example.com'),
('Samuel Kiptoo', '2000-06-09', '0734567890', 'samuel@example.com');

-- inserting into Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, appointment_time, status) VALUES 
(1, 1, '2025-05-20', '09:30:00', 'Scheduled'),
(2, 2, '2025-05-21', '10:00:00', 'Scheduled'),
(1, 3, '2025-05-22', '14:00:00', 'Cancelled'),
(3, 4, '2025-05-23', '11:15:00', 'Completed');

-- inserting into Medical_Records
INSERT INTO Medical_Records (patient_id, diagnosis, treatment, record_date) VALUES 
(1, 'Hypertension', 'Medication and dietary changes', '2025-05-01'),
(2, 'Asthma', 'Inhaler prescribed', '2025-05-02'),
(3, 'Eczema', 'Topical cream', '2025-05-03');

