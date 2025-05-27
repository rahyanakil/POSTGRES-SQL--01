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
    user_id INTEGER REFERENCES "user"(id)
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
DROP table "user";


JOIN "user" on post.user_id= "user".id;

SELECT title,username FROM post;