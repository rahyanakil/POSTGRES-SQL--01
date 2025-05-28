-- CREATE TRIGGER TRIGGER_NAME
-- {BEFORE | AFTER | INSTED OF } {INSERT|UPDATE|TRUNCATE}
-- ON TABLE_NAME
-- [FOR EACH ROW]
-- EXECUTE FUNCTION function_name();

-- CREATE trigger TR
-- BEFORE DELETE 
-- ON user
-- FOR EACH ROW 
-- EXECUTE FUNCTION function_name();

CREATE Table my_users
(
    user_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO my_users VALUES('Mezba','mezba@gmail.com'),
('Mir','mir@gmail.com');

select * from my_users;

CREATE TABLE deleted_user_audit(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)
--trigger function 

CREATE OR REPLACE Function save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS 
$$
BEGIN 
    INSERT INTO deleted_users_audit VALUES(OLD.user_name,now());
    RAISE NOTICE 'Deleted user audit log created';
    RETURN OLD;
END
$$


select * from save_deleted_user;

SELECT * FROM deleted_users_audit;


CREATE TRIGGER save_deleted_user_trigger
BEFORE DELETE 
on my_users
for EACH ROW
EXECUTE FUNCTION save_deleted_user();

DELETE from my_users WHERE user_name ='Mir';