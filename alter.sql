-- Active: 1747739500884@@127.0.0.1@5432@ph
-- INSERT INTO person2 ( first_name, last_name, hire_date)

-- VALUES ('Lokman', 'Bhuiyan','2022-05-06');

-- CREATE table person2 (first_name VARCHAR(50),
-- last_name VARCHAR(50),
-- hire_date DATE

-- ); 

-- select * from person2;
-- to rename column
ALTER TABLE person2
     RENAME COLUMN hire_date TO age;
-- rename column hire_date to age 
ALTER TABLE person2
     DROP COLUMN email;

INSERT into person2 values('X','rahyan','2022-05-08','xrahyan@gmail.com');
    

    -- ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

    ALTER TABLE person2 
    ADD constraint pk_person2_name PRIMARY KEY (last_name);


    ALTER TABLE person2 
    DROP COLUMN first_name;


    DELETE FROM person2
WHERE last_name = 'rahyan';