# 🏥 Clinic Booking System (MySQL)

## 📖 Project Description

The **Clinic Booking System** is a relational database solution built using **MySQL** to manage clinic operations. It allows for the storage and retrieval of:
- Patient records
- Doctor profiles
- Appointment scheduling
- Medical history tracking
- Admin access control

This system models real-world relationships between patients, doctors, departments, and medical records in a normalized, well-structured database.

---

## 🚀 How to Set Up & Run

1. **Install MySQL**  
   Make sure you have MySQL installed on your system. You can use tools like MySQL Workbench or phpMyAdmin as interfaces.

2. **Import the SQL File**  
   Download the provided SQL file and import it into your MySQL server:

   - Using CLI:
     ```bash
     mysql -u your_username -p your_database < clinic_booking_system.sql
     ```
   - Or via MySQL Workbench:
     - Open Workbench
     - Create a new schema (e.g., `clinic_db`)
     - Run the SQL script (`clinic_booking_system.sql`)

3. **Explore the Database**  
   You can now start querying the database for:
   - Appointments per doctor
   - Medical history per patient
   - Departmental doctor listings, and more

---

Below is the visual ERD for the system:

![ERD](https://lucid.app/lucidchart/4c48e105-81c5-4730-90a4-2f95cc8cfa65/edit?view_items=2mDfatVtxcF4&invitationId=inv_258a220a-e01f-47c4-a09b-5d391092f704)
https://lucid.app/lucidchart/4c48e105-81c5-4730-90a4-2f95cc8cfa65/edit?invitationId=inv_258a220a-e01f-47c4-a09b-5d391092f704&page=0_0#



