CREATE DATABASE has_many_blogs;

\c has_many_blogs;

CREATE USER has_many_user;

DROP TABLE users;
DROP TABLE post;
DROP TABLE comments;

CREATE TABLE users(
id SERIAL NOT NULL,
username VARCHAR(90) NULL DEFAULT NULL,
first_name VARCHAR(90) NULL DEFAULT NULL,
last_name VARCHAR(90) NULL DEFAULT NULL,
create_at timestamp DEFAULT NOW(),
update_at timestamp DEFAULT NOW(),
PRIMARY KEY (id)
);

CREATE TABLE post(
id SERIAL NOT NULL PRIMARY KEY,
title VARCHAR(180) NULL DEFAULT NULL,
url VARCHAR(510) NULL DEFAULT NULL,
content text NULL DEFAULT NULL,
create_at timestamp DEFAULT NOW(),
update_at timestamp DEFAULT NOW(),
user_id INTEGER NOT NULL REFERENCES users (id)
);

CREATE TABLE comments(
id SERIAL NOT NULL PRIMARY KEY,
body VARCHAR (510) NULL DEFAULT NULL,
create_at timestamp DEFAULT NOW(),
update_at timestamp DEFAULT NOW(),
post_id INTEGER NOT NULL REFERENCES post (id)
);

SELECT * FROM users;
SELECT * FROM post WHERE user_id = 100;