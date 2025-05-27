--insertion contraint on insert post 
--Attempting to insert a post with a user id that does not exist 
--Insetting a post with a valid user id 
--Attempting to insert a post without specifying a user ID

--create user table 
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)
--create post table
--cascade means delete with foreign key 

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE 
)
--insert data into user table 

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi')
--insert data into post1 TABLE

INSERT INTO post(title,user_id) VALUES 
('Enjoying a sunny day with AKASH!',1),
('Batash just shared an amazing!',2),
('Exploring adventures with sagor',3),
('Nodis wisdom always leaves me inspired',4)

select * from "user";
select * from post;

DROP table post;
DROP table post1;
DROP table "user";

DELETE FROM "user"
WHERE id=4;