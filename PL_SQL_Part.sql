INSERT ALL
    INTO cities VALUES(1, 'Adana')
    INTO cities VALUES(2, 'Adıyaman')
    INTO cities VALUES(3, 'Afyonkarahisar')
    INTO cities VALUES(4, 'Ağrı')
    INTO cities VALUES(5, 'Amasya')
    INTO cities VALUES(6, 'Ankara')
    INTO cities VALUES(7, 'Antalya')
    INTO cities VALUES(8, 'Artvin')
    INTO cities VALUES(9, 'Aydın')
    INTO cities VALUES(10, 'Balıkesir')
    INTO cities VALUES(11, 'Bilecik')
    INTO cities VALUES(12, 'Bingöl')
    INTO cities VALUES(13, 'Bitlis')
    INTO cities VALUES(14, 'Bolu')
    INTO cities VALUES(15, 'Burdur')
    INTO cities VALUES(16, 'Bursa')
    INTO cities VALUES(17, 'Çanakkale')
    INTO cities VALUES(18, 'Çankırı')
    INTO cities VALUES(19, 'Çorum')
    INTO cities VALUES(20, 'Denizli')
    INTO cities VALUES(21, 'Diyarbakır')
    INTO cities VALUES(22, 'Edirne')
    INTO cities VALUES(23, 'Elazığ')
    INTO cities VALUES(24, 'Erzincan')
    INTO cities VALUES(25, 'Erzurum')
    INTO cities VALUES(26, 'Eskişehir')
    INTO cities VALUES(27, 'Gaziantep')
    INTO cities VALUES(28, 'Giresun')
    INTO cities VALUES(29, 'Gümüşhane')
    INTO cities VALUES(30, 'Hakkari')
    INTO cities VALUES(31, 'Hatay')
    INTO cities VALUES(32, 'Isparta')
    INTO cities VALUES(33, 'Mersin')
    INTO cities VALUES(34, 'İstanbul')
    INTO cities VALUES(35, 'İzmir')
    INTO cities VALUES(36, 'Kars')
    INTO cities VALUES(37, 'Kastamonu')
    INTO cities VALUES(38, 'Kayseri')
    INTO cities VALUES(39, 'Kırklareli')
    INTO cities VALUES(40, 'Kırşehir')
    INTO cities VALUES(41, 'Kocaeli')
    INTO cities VALUES(42, 'Konya')
    INTO cities VALUES(43, 'Kütahya')
    INTO cities VALUES(44, 'Malatya')
    INTO cities VALUES(45, 'Manisa')
    INTO cities VALUES(46, 'Kahramanmaraş')
    INTO cities VALUES(47, 'Mardin')
    INTO cities VALUES(48, 'Muğla')
    INTO cities VALUES(49, 'Muş')
    INTO cities VALUES(50, 'Nevşehir')
    INTO cities VALUES(51, 'Niğde')
    INTO cities VALUES(52, 'Ordu')
    INTO cities VALUES(53, 'Rize')
    INTO cities VALUES(54, 'Sakarya')
    INTO cities VALUES(55, 'Samsun')
    INTO cities VALUES(56, 'Siirt')
    INTO cities VALUES(57, 'Sinop')
    INTO cities VALUES(58, 'Sivas')
    INTO cities VALUES(59, 'Tekirdağ')
    INTO cities VALUES(60, 'Tokat')
    INTO cities VALUES(61, 'Trabzon')
    INTO cities VALUES(62, 'Tunceli')
    INTO cities VALUES(63, 'Şanlıurfa')
    INTO cities VALUES(64, 'Uşak')
    INTO cities VALUES(65, 'Van')
    INTO cities VALUES(66, 'Yozgat')
    INTO cities VALUES(67, 'Zonguldak')
    INTO cities VALUES(68, 'Aksaray')
    INTO cities VALUES(69, 'Bayburt')
    INTO cities VALUES(70, 'Karaman')
    INTO cities VALUES(71, 'Kırıkkale')
    INTO cities VALUES(72, 'Batman')
    INTO cities VALUES(73, 'Şırnak')
    INTO cities VALUES(74, 'Bartın')
    INTO cities VALUES(75, 'Ardahan')
    INTO cities VALUES(76, 'Iğdır')
    INTO cities VALUES(77, 'Yalova')
    INTO cities VALUES(78, 'Karabük')
    INTO cities VALUES(79, 'Kilis')
    INTO cities VALUES(80, 'Osmaniye')
    INTO cities VALUES(81, 'Düzce')
SELECT * FROM dual;

COMMIT;
--
INSERT ALL
    INTO faculties VALUES (1, 'Faculty of Engineering', 'Prof. Dr. Mehmet Fevzi Ünal', DATE '2012-01-01')
    INTO faculties VALUES (2, 'Faculty of Economics, Administrative and Social Sciences', 'Prof. Dr. Mustafa Kibaroğlu', DATE '2012-01-01')
    INTO faculties VALUES (3, 'Faculty of Education', 'Prof. Dr. Mustafa Özcan', DATE '2012-01-01')
    INTO faculties VALUES (4, 'Faculty of Law', 'Prof. Dr. Havva Karagöz', DATE '2012-01-01')
    INTO faculties VALUES (5, 'Faculty of Art, Design and Architecture', 'Prof. Dr. Şebnem Yücel', DATE '2012-01-01')
SELECT * FROM dual;

COMMIT;
--
INSERT ALL
    INTO departments VALUES (1, 'Computer Engineering', 1, 'Dr. Cemre Yalçın')
    INTO departments VALUES (2, 'Electrical and Electronics Engineering', 1, 'Dr. Barış Demirtaş')
    INTO departments VALUES (3, 'Industrial Engineering', 1, 'Dr. Selin Karahan')
    INTO departments VALUES (4, 'Civil Engineering', 1, 'Dr. Emre Şimşek')
    INTO departments VALUES (5, 'Mechanical Engineering', 1, 'Dr. İpek Öztürk')
    INTO departments VALUES (6, 'Artificial Intelligence Engineering', 1, 'Dr. Kerem Aydın')

    INTO departments VALUES (7, 'Economics', 2, 'Dr. Melike Kılıç')
    INTO departments VALUES (8, 'Business Administration', 2, 'Dr. Onur Yılmaz')
    INTO departments VALUES (9, 'Political Science and International Relations', 2, 'Dr. Elif Tunç')
    INTO departments VALUES (10, 'Psychology', 2, 'Dr. Mert Koç')
    INTO departments VALUES (11, 'Management Information Systems', 2, 'Dr. Ebru Arslan')

    INTO departments VALUES (12, 'Mathematics Education', 3, 'Dr. Deniz Çelik')
    INTO departments VALUES (13, 'English Language Teaching', 3, 'Dr. Ceren Kaya')
    INTO departments VALUES (14, 'Guidance and Psychological Counseling', 3, 'Dr. Burak Topal')

    INTO departments VALUES (15, 'Law', 4, 'Dr. Derya Yıldırım')

    INTO departments VALUES (16, 'Digital Game Design', 5, 'Dr. Arda Kaplan')
    INTO departments VALUES (17, 'Architecture', 5, 'Dr. Buse Aksoy')
    INTO departments VALUES (18, 'Interior Design', 5, 'Dr. Selen Tunç')
SELECT * FROM dual;

COMMIT;

--
CREATE OR REPLACE PACKAGE student_manager_pkg AS
    PROCEDURE add_student(
        p_id        IN INTEGER,
        p_name      IN VARCHAR2,
        p_lastname  IN VARCHAR2,
        p_email     IN VARCHAR2,
        p_dept_id   IN INTEGER,
        p_city_id   IN INTEGER,
        p_year      IN DATE,
        p_gpa       IN NUMBER
    );

    PROCEDURE update_student_gpa(
        p_student_id IN INTEGER,
        p_new_gpa IN NUMBER
    );

    PROCEDURE delete_student(
        p_student_id IN INTEGER
    );

    PROCEDURE get_student_report(
        p_where_clause IN VARCHAR2
    );

    PROCEDURE remove_duplicates;

END student_manager_pkg;
--
CREATE OR REPLACE PACKAGE BODY student_manager_pkg AS
    PROCEDURE add_student(
        p_id        IN INTEGER,
        p_name      IN VARCHAR2,
        p_lastname  IN VARCHAR2,
        p_email     IN VARCHAR2,
        p_dept_id   IN INTEGER,
        p_city_id   IN INTEGER,
        p_year      IN DATE,
        p_gpa       IN NUMBER
    ) AS
    BEGIN
        INSERT INTO students VALUES(p_id, p_name, p_lastname, p_email, p_dept_id, p_city_id, p_year, p_gpa);
        
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Student: ' || p_name || ' ' || p_lastname ||' added succesfully.');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    END add_student;

    PROCEDURE update_student_gpa(
        p_student_id IN INTEGER,
        p_new_gpa IN NUMBER
    ) AS
    BEGIN
        UPDATE students
        SET gpa = p_new_gpa
        WHERE student_id = p_student_id;
        IF SQL%ROWCOUNT = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Student ID not found: ' || p_student_id);
        ELSE
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('GPA updated, new GPA: ' || p_new_gpa);
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    END update_student_gpa;

    PROCEDURE delete_student(
        p_student_id IN INTEGER
    ) AS
    BEGIN
        DELETE FROM student_fees WHERE student_id = p_student_id;
        DELETE FROM enrollments WHERE student_id = p_student_id;
        DELETE FROM students WHERE student_id = p_student_id;

        IF SQL%ROWCOUNT = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Student ID not found: ' || p_student_id);
        ELSE
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('Student ' || p_student_id ||' deleted.');
        END IF;

    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    END delete_student;

    PROCEDURE get_student_report(
        p_where_clause IN VARCHAR2
    ) AS

    v_cursor SYS_REFCURSOR;
    v_student students%ROWTYPE;
    v_sql varchar2(1000);

    BEGIN
        v_sql := 'SELECT * FROM students ' || p_where_clause;
        DBMS_OUTPUT.PUT_LINE('Running querry: ' || v_sql);
        DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
        OPEN v_cursor FOR v_sql;
        LOOP
            FETCH v_cursor INTO v_student;
            EXIT WHEN v_cursor%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('ID: ' || v_student.student_id || ' -Name: ' || v_student.first_name || ' ' || v_student.last_name || ' - GPA: ' || v_student.gpa);
        END LOOP;

        CLOSE v_cursor;
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Error in report: ' || SQLERRM);
                IF v_cursor%ISOPEN THEN
                    CLOSE v_cursor;
                END IF;
    END get_student_report;    

    PROCEDURE remove_duplicates AS
    BEGIN
        DELETE FROM students s1
        where s1.rowid > (
            SELECT MIN(s2.rowid)
            FROM students s2
            WHERE s1.email = s2.email
        );
        COMMIT;
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || 'duplicate records deleted.');
    EXCEPTION
        WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    END remove_duplicates;

END student_manager_pkg;

CREATE OR REPLACE TRIGGER trg_new_student_fee
AFTER INSERT ON students
FOR EACH ROW
BEGIN
    INSERT INTO student_fees(
        fee_id,
        student_id,
        amount,
        payment_date,
        fee_description,
        is_paid
    ) VALUES (
        (SELECT NVL(MAX(fee_id),0) + 1 FROM student_fees),

        :NEW.student_id,
        1000,
        SYSDATE,
        'Initial registration fee',
        'N'
    );
END;

--Testing

SET SERVEROUTPUT ON;

BEGIN
    student_manager_pkg.add_student(42301112, 'Burak', 'Güverçin', 'guvercinb@mef.edu.tr', 1, 34, DATE '2023-09-01', 3.52);
END;

SELECT * FROM students;

--Working 

--Testing

SET SERVEROUTPUT ON;

BEGIN
    student_manager_pkg.update_student_gpa(42301112, 3.62);
END;

SELECT * FROM students;

--Working

--Testing

SET SERVEROUTPUT ON;

BEGIN
    student_manager_pkg.delete_student(42301112);
END;

SELECT * FROM students;

--Working

--Testing

SET SERVEROUTPUT ON;

BEGIN
    student_manager_pkg.remove_duplicates;
END;

SELECT * FROM students;

--Working

--Testing

SET SERVEROUTPUT ON;

BEGIN
    student_manager_pkg.add_student(42301112, 'Burak', 'Güverçin', 'guvercinb@mef.edu.tr', 1, 34, DATE '2023-09-01', 3.52);
END;

SELECT * FROM student_fees WHERE student_id = 42301112;

--Working

--Testing

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('TEST 1: Only over 2.50 gpa: ');
    student_manager_pkg.get_student_report('WHERE gpa > 2.50');
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('TEST 2: From İstanbul: ');
    student_manager_pkg.get_student_report('WHERE city_id = 34');
END;

--Working

