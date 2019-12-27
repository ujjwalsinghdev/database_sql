CREATE DATABASE instagram_data;
USE instagram_data;

CREATE TABLE users(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(255) UNIQUE,
created_at TIMESTAMP DEFAULT NOW()
)

CREATE TABLE photos(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
image_url VARCHAR(255) NOT NULL,
user_id INTEGER NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY(user_id) REFERENCES users(id)
);

 CREATE TABLE comments(
 id INTEGER AUTO_INCREMENT PRIMARY KEY,
 comment_text VARCHAR(255) NOT NULL,
 user_id INTEGER NOT NULL,
 photo_id INTEGER NOT NULL,
 created_at TIMESTAMP DEFAULT NOW(),
 FOREIGN KEY(user_id) REFERENCES users(id),
 FOREIGN KEY(photo_id) REFERENCES photos(id)
 )

CREATE TABLE likes(
user_id INTEGER NOT NULL,
photo_id INTEGER NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY(user_id) REFERENCES users(id),
FOREIGN KEY(photo_id) REFERENCES photos(id),
PRIMARY KEY (user_id,photo_id)
);

CREATE TABLE follows(
follower_id INTEGER NOT NULL,
followee_id INTEGER NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (follower_id) REFERENCES users(id),
FOREIGN KEY (followee_id) REFERENCES users(id),
PRIMARY KEY (follower_id,followee_id)
);

CREATE TABLE tags(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
tag_name VARCHAR(255) UNIQUE,
created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo_tags (
photo_id INTEGER NOT NULL,
tag_id INTEGER NOT NULL,
FOREIGN KEY(photo_id) REFERENCES photos(id),
FOREIGN KEY(tag_id) REFERENCES tags(id),
PRIMARY KEY(photo_id,tag_id)
);

INSERT INTO tags(tag_name) VALUES
('adorable'),
('cutes'),
('sunrise');

INSERT INTO photo_tag(photo_id,tag_id) VALUES
(1,1),
(1,2),
(2,3),
(3,2);


SELECT * FROM tags;





INSERT INTO follows(follower_id,followee_id) VALUES
(1,2),
(1,3),
(3,1),
(2,3);

INSERT INTO follows(follower_id,followee_id) VALUES
(1,2);



SELECT * FROM follows;

INSERT INTO likes(user_id,photo_id)VALUES
(2,1),
(3,1),
(1,2),
(1,3);






INSERT INTO comments(comment_text,user_id,photo_id) VALUES
('Meaow',1,2),
('Amazing Shot',3,2),
('I <3 This',2,1);

SELECT * FROM comments;













SHOW TABLES;

INSERT INTO photos(image_url,user_id) VALUES
('/whowho',1),
('/whowhowho',2),
('/whowhoiam',3);


SELECT photos.image_url,users.username
FROM photos
JOIN users
ON photos.user_id = users.id;


SELECT * FROM photos;


INSERT INTO users (username) VALUES
('BlueTheCat'),
('CharlieBrown'),
('NoamWatts');

SELECT * FROM users;