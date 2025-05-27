--group by applied first split then apply and then combine the tables
SELECT * FROM students;
SELECT country ,count(*),avg(age)FROM students
GROUP BY country;
--filter group data using having
--Question: Filter groups using having to show only countries with average age above 22
SELECT country, avg(age) from students
    GROUP BY country 
    HAVING avg(age)<22;
 --count students born in each year 
 SELECT extract (year from dob) as birth_year,count(*)
 FROM students 
 GROUP BY birth_year 

