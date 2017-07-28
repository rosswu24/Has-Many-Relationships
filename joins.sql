-- SELECT * FROM users;

-- SELECT * FROM posts WHERE user_id = 100;


-- SELECT *
-- FROM posts
-- INNER JOIN users
-- ON posts.user_id = users.id
-- WHERE users.id = 200;

-- SELECT * 
-- FROM posts
-- INNER JOIN users
-- ON posts.user_id = users.id
-- WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';

-- SELECT users.username
-- FROM users
-- INNER JOIN posts
-- ON users.id = posts.user_id
-- WHERE posts.create_at > '2015-01-15';

-- SELECT posts.title, posts.content, users.username
-- FROM  posts
-- INNER JOIN users
-- ON posts.user_id = users.id
-- WHERE users.create_at <'2015-01-15';