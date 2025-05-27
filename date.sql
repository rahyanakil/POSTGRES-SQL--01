-- SHOW timezone;
SELECT now()
--set timestamp value 
CREATE TABLE timez (ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone);
--give time zone values 
INSERT into timez values('2024-01-12 10:45:00' , '2024-01-10 10:45:00');
--select time zone 
SELECT * from timez;
--select current date 
SELECT CURRENT_DATE;
--select date 
SELECT NOW():: DATE;
--select time 
SELECT NOW():: TIME;
--set date formate with to_char 
SELECT to_char(now(),'DDD')
--CURRENT DATE THAKE 1 YEAR PICHONE 

SELECT CURRENT_DATE - INTERVAL '1 year 2 month';
--to calculate age 
SELECT age(CURRENT_DATE ,'1996-07-29');
--to calculate the age from the students table
SELECT *,age(CURRENT_DATE,dob) FROM students;
--extract date month year from a date 
select extract ((month,day) from '2024-01-25'::date);

