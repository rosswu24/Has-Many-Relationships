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

-- SELECT comments.*, posts.title AS "Post Title"
-- FROM comments
-- INNER JOIN posts
-- ON comments.posts_id = posts.id;

-- SELECT comments.*, posts.title AS "Post Title", posts.url AS "post_url", comments.body AS "comment_body"
-- FROM comments
-- INNER JOIN posts
-- ON comments.posts_id = posts.id
-- WHERE posts.create_at < '2015-01-15';

-- SELECT comments.*, posts.title AS "Post Title", posts.url AS "post_url", comments.body AS "comment_body"
-- FROM comments
-- INNER JOIN posts
-- ON comments.posts_id = posts.id
-- WHERE posts.create_at > '2015-01-15';

-- SELECT comments.*, posts.title AS "Post Title", posts.url AS "post_url", comments.body AS "comment_body"
-- FROM comments
-- INNER JOIN posts
-- ON comments.posts_id = posts.id
-- WHERE comments.body LIKE '%USB%';

-- SELECT posts.title AS "post_title", users.first_name,users.last_name, comments.body AS "comments_body"
-- FROM users
-- INNER JOIN posts ON posts.user_id = users.id
-- INNER JOIN comments ON comments.posts_id = posts.id
-- WHERE comments.body LIKE '%matrix%';

-- SELECT users.first_name, users.last_name, comments.body AS "comments_body"
-- FROM users
-- INNER JOIN posts ON posts.user_id = users.id
-- INNER JOIN comments ON comments.posts_id = posts.id
-- WHERE comments.body LIKE '%SSL%' AND posts.content LIKE '%dolorum%';

SELECT users.first_name AS "post_author_first_name", users.last_name AS "post_author_last_name", posts.title AS "post_title", users.username AS "comment_author_username", comments.body AS "comment_body"
FROM users
INNER JOIN posts ON posts.user_id = users.id
INNER JOIN comments ON comments.posts_id = posts.id
WHERE (comments.body LIKE '%SSL%' OR comments.body LIKE '%firewall%') AND posts.content LIKE '%nemo%';