DROP TABLE IF EXISTS post;

CREATE TABLE post (
  -- Primary Key: Unique reference for our blogsite
  id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  body TEXT
);

INSERT INTO post (title, body) VALUES ('Post 1', 'My first post continues to be A-W-E-S-O-M-E!');
INSERT INTO post (title, body) VALUES ('Post 2', 'My second post is less good.');
INSERT INTO post (title, body) VALUES ('Post 3', 'Blogging is not for me...');
