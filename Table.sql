DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS users;

CREATE TABLE users(
	user_id INT primary key,
	name	TEXT NOT NULL UNIQUE
);

CREATE TABLE movies(
	movie_id INT primary key,
	title	TEXT NOT NULL UNIQUE
);

CREATE TABLE ratings (
	user_id INT NOT NULL,
	movie_id INT NOT NULL,
	rating  NUMERIC(2,1),             
	PRIMARY KEY (user_id, movie_id),
  	FOREIGN KEY (user_id) REFERENCES users(user_id),
  	FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
  	CHECK (rating BETWEEN 1 AND 5 OR rating IS NULL)
);

INSERT INTO movies (movie_id, title) VALUES
(1, 'Zootopia 2'),
(2, 'Stranger Things 5'),
(3, 'Captain America: Brave New World'),
(4, 'Now You See Me: Now You Don’t'),
(5, 'Disney''s Snow White '),
(6, 'The SpongeBob Movie: Search for SquarePants');

INSERT INTO users (user_id, name) VALUES
(1, 'M'),
(2, 'J'),
(3, 'W'),
(4, 'HP'),
(5, 'ZH'),
(6, 'CO'),
(7, 'ZY');

INSERT INTO ratings (user_id, movie_id, rating) VALUES
(1, 1, 4), (1, 2, 5), (1, 3, 3), (1, 4, 4), (1, 5, 1), (1, 6, 4),
(2, 2, 5), (2, 6, 4),
(3, 1, 5), (3, 2, 3),
(4, 2, 1), (4, 3, 1),
(5, 4, 4), (5, 5, 3.5),
(6, 1, 4), (6, 6, 3),
(7, 2, 4), (7, 4, 2);
SELECT * FROM users;
SELECT * FROM movies;
SELECT * FROM ratings;

