CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

-- INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
-- ('Alice', 'Johnson', 20, 'A+', 'Computer Science', 'alice.johnson@example.com', '2004-03-15', 'O+', 'USA'),
-- ('Bob', 'Smith', 22, 'B', 'Mechanical Engineering', 'bob.smith@example.com', '2002-06-22', 'A-', 'Canada'),
-- ('Charlie', 'Brown', 21, 'A', 'Electrical Engineering', 'charlie.brown@example.com', '2003-01-10', 'B+', 'UK'),
-- ('Diana', 'Lopez', 23, 'C', 'Civil Engineering', 'diana.lopez@example.com', '2001-09-05', 'AB-', 'Australia'),
-- ('Ethan', 'Lee', 19, 'A+', 'Mathematics', 'ethan.lee@example.com', '2005-12-20', 'O-', 'South Korea'),
-- ('Fatima', 'Khan', 20, 'B+', 'Biochemistry', 'fatima.khan@example.com', '2004-04-18', 'B-', 'Pakistan'),
-- ('George', 'Miller', 21, 'A', 'Information Technology', 'george.miller@example.com', '2003-07-30', 'A+', 'Germany'),
-- ('Hana', 'Suzuki', 22, 'C+', 'Physics', 'hana.suzuki@example.com', '2002-11-12', 'AB+', 'Japan'),
-- ('Ibrahim', 'Ahmed', 20, 'B-', 'Software Engineering', 'ibrahim.ahmed@example.com', '2004-08-08', 'O+', 'Egypt'),
-- ('Julia', 'Martins', 19, 'A', 'Data Science', 'julia.martins@example.com', '2005-05-03', 'B+', 'Brazil');

SELECT email,age FROM students;

SELECT email as "student Email" FROM students;

SELECT * FROM students ORDER BY age ASC;

SELECT country from students ORDER BY country ASC;

SELECT DISTINCT blood_group from students;

SELECT * from students WHERE country ='USA';

SELECT * from students 
 WHERE grade ='A' AND course='Electrical Engineering';

 SELECT * from students
    WHERE country='USA' OR country ='Australia'

SELECT * from students
    WHERE (country ='USA' OR country ='Australis') and age =20;

select * from students 
 where age != 20 

SELECT concat(first_name,' ',last_name), * from  students;


select avg (age) from students;

SELECT min(age) FROM students;

SELECT count(*) FROM students;

SELECT * FROM students
WHERE NOT country ='USA';