-- finding 5 oldest users
SELECT 
    *
FROM
    users
ORDER BY created_at
LIMIT 5
;

-- what the most day of week do most users register on

SELECT 
DAYNAME(created_at) AS day,
COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

-- identify inactive users

SELECT username,image_url FROM users
LEFT JOIN photos
ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- most like photos

SELECT username,photos.id,photos.image_url,COUNT(*) AS total
FROM photos
INNER JOIN likes
ON likes.photo_id = photos.id
INNER JOIN users
ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- how many times average user posts
SELECT (SELECT COUNT(*) FROM photos)/(SELECT COUNT(*) FROM users) AS avg;


-- most popular hashtag

SELECT tags.tag_name, COUNT(*) AS total FROM photo_tags
JOIN tags
ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY total;

-- find user who have liked every photo (FIND BOTS)

SELECT username,user_id, COUNT(*) AS total FROM users
INNER JOIN likes
ON users.id = likes.user_id
GROUP BY likes.user_id;











