# 🎓 Oracle PL/SQL Student Management System

This project is a comprehensive **Oracle Database / PL/SQL** database management system developed to manage student, department, faculty, course, and enrollment operations for a university. 

It includes normalized (relational) tables, constraints, indexes, stored procedures, cursors, and triggers.

## 🚀 Features

- **Comprehensive Database Design:** A fully integrated table structure connected via foreign keys for faculties, departments, students, instructors, courses, classrooms, attendance, and fee payments.
- **Performance Optimizations:** `INDEX` definitions for frequently queried columns (Foreign Keys).
- **PL/SQL Package Architecture:** A professional `student_manager_pkg` package that encapsulates student management operations.
  - Add new students (`add_student`)
  - Update GPA (`update_student_gpa`)
  - Safely delete students and clean up related child records like fees and enrollments (`delete_student`)
  - Generate student reports based on dynamic conditions (`WHERE` clauses) (`get_student_report` - using `SYS_REFCURSOR`)
  - Detect and clean up duplicate email records (`remove_duplicates`)
- **Automated Business Rules (Triggers):** When a new student is added to the system, the `trg_new_student_fee` trigger fires automatically and inserts the student's initial registration fee (1000 units) into the system.

## 🛠️ Technologies Used
- **Oracle Database**
- **PL/SQL** (Packages, Procedures, Explicit Cursors, REF Cursors, Triggers, Exception Handling)
- **SQL** (DDL, DML, TCL)

## 📋 Database Schema
Main entities included in the project:
- `faculties`, `departments`, `instructors`, `cities`
- `students`, `semesters`, `courses`, `classrooms`, `course_sections`
- `enrollments`, `student_fees`, `attendance`

## ⚙️ How to Run
1. Open an Oracle Database environment (e.g., Oracle SQL Developer, Live SQL, or DBeaver).
2. Execute the contents of the SQL file in the repository sequentially:
   - First, run the table creation (DDL) commands.
   - Then, insert the mock data (DML) into the database (`INSERT ALL` commands).
   - Compile the Packages (`PACKAGE` and `PACKAGE BODY`) and Triggers.
3. You can test the system using the `BEGIN ... END;` test blocks at the bottom of the file.

## 📝 Test Scenarios
The following operations have been verified using the built-in test blocks included in the project:
- Successfully adding a student and triggering the automatic fee record generation.
- Updating a student's GPA.
- Dynamic reporting with Ref Cursor (e.g., Filtering students only in Istanbul or with a GPA above 2.50).
- Deleting duplicate records using RowID logic.