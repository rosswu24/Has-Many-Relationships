DROP DATABASE has_many_blogs;
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

\c has_many_blogs;

DROP TABLE users;
DROP TABLE posts;
DROP TABLE comments;

CREATE TABLE users(
id SERIAL NOT NULL PRIMARY KEY,
username VARCHAR(90) NULL DEFAULT NULL,
first_name VARCHAR(90) NULL DEFAULT NULL,
last_name VARCHAR(90) NULL DEFAULT NULL,
create_at timestamp DEFAULT NOW(),
update_at timestamp DEFAULT NOW()
);

CREATE TABLE posts(
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
user_id INTEGER NOT NULL REFERENCES users (id),
posts_id INTEGER NOT NULL REFERENCES posts (id)
);

