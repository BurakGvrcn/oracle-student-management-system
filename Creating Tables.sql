CREATE TABLE faculties (
    faculty_id integer PRIMARY KEY,
    faculty_name varchar2(100) NOT NULL,
    dean_name varchar2(100),
    date_formed date
);

CREATE TABLE departments (
    department_id integer PRIMARY KEY,
    department_name varchar2(100) NOT NULL,
    faculty_id integer NOT NULL,
    head_of_dept varchar2(100),

    CONSTRAINT fk_departments_faculties
        FOREIGN KEY (faculty_id)
        REFERENCES faculties(faculty_id)
);

CREATE TABLE instructors (
    instructor_id integer PRIMARY KEY,
    first_name varchar2(100) NOT NULL,
    last_name varchar2(100) NOT NULL,
    email varchar2(100),
    instructor_title varchar2(100),
    department_id integer NOT NULL,
    date_started date,

    CONSTRAINT fk_instructors_departments
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
    
);

CREATE TABLE cities (
    city_id integer PRIMARY KEY,
    city_name varchar2(100) NOT NULL
);

CREATE TABLE students (
    student_id integer PRIMARY KEY,
    first_name varchar2(100) NOT NULL,
    last_name varchar2(100) NOT NULL,
    email varchar2(100),
    department_id integer NOT NULL,
    city_id integer NOT NULL,
    starting_year date,
    gpa number(3,2),

    CONSTRAINT fk_students_departments
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    
    CONSTRAINT fk_students_cities
        FOREIGN KEY (city_id)
        REFERENCES cities(city_id)
);

CREATE TABLE semesters (
    semester_id integer PRIMARY KEY,
    semester_name varchar2(100),
    start_date date,
    end_date date
);

CREATE TABLE courses (
    course_id integer PRIMARY KEY,
    course_code varchar2(100) NOT NULL,
    course_name varchar2(100) NOT NULL,
    credit number,
    department_id integer NOT NULL,

    CONSTRAINT fk_courses_departments
        FOREIGN KEY(department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE classrooms (
    classroom_id integer PRIMARY KEY,
    room_code varchar2(100),
    capacity integer,
    building_name varchar2(100)
);

CREATE TABLE course_sections (
    section_id integer PRIMARY KEY,
    course_id integer NOT NULL,
    instructor_id integer NOT NULL,
    semester_id integer NOT NULL,
    classroom_id integer NOT NULL,
    section_code varchar2(100),
    quota integer,

    CONSTRAINT fk_course_sections_courses
        FOREIGN KEY (course_id)
        REFERENCES courses(course_id),
    CONSTRAINT fk_course_sections_instructors
        FOREIGN KEY (instructor_id)
        REFERENCES instructors(instructor_id),
    CONSTRAINT fk_course_sections_semesters
        FOREIGN KEY (semester_id)
        REFERENCES semesters(semester_id),
    CONSTRAINT fk_course_sections_classrooms
        FOREIGN KEY (classroom_id)
        REFERENCES classrooms(classroom_id)
);

CREATE TABLE enrollments (
    enrollment_id integer PRIMARY KEY,
    student_id integer NOT NULL,
    section_id integer NOT NULL,
    midterm_grade number,
    final_grade number,

    CONSTRAINT fk_enrollments_students
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    CONSTRAINT fk_enrollments_course_sections
        FOREIGN KEY (section_id)
        REFERENCES course_sections(section_id)
);

CREATE TABLE student_fees (
    fee_id integer PRIMARY KEY,
    student_id integer NOT NULL,
    amount number(10,2),
    payment_date date,
    fee_description varchar2(100),
    is_paid char(1) DEFAULT 'N',

    CONSTRAINT fk_student_fees_students
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
);

CREATE TABLE attendance (
    attendance_id integer PRIMARY KEY,
    enrollment_id integer NOT NULL,
    class_date date,
    attendance_status varchar2(100),

    CONSTRAINT fk_attendance_enrollment
        FOREIGN KEY (enrollment_id)
        REFERENCES enrollments(enrollment_id)
);

COMMIT;

CREATE INDEX idx_departments_faculties ON departments(faculty_id);
CREATE INDEX idx_instructors_departments ON instructors(department_id);
CREATE INDEX idx_students_departments ON students(department_id);
CREATE INDEX idx_students_cities ON students(city_id);
CREATE INDEX idx_courses_departments ON courses(department_id);
CREATE INDEX idx_course_sections_courses ON course_sections(course_id);
CREATE INDEX idx_course_sections_instructors ON course_sections(instructor_id);
CREATE INDEX idx_course_sections_semesters ON course_sections(semester_id);
CREATE INDEX idx_course_sections_classrooms ON course_sections(classroom_id);
CREATE INDEX idx_enrollments_students ON enrollments(student_id);
CREATE INDEX idx_enrollments_course_sections ON enrollments(section_id);
CREATE INDEX idx_student_fees_students ON student_fees(student_id);
CREATE INDEX idx_attendance_enrollment ON attendance(enrollment_id);

COMMIT;
