USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist_name = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE id = 27;

-- The genre for Nevermind "does not work as Nevermind is not in our list" Would need to add it first
SELECT release_date FROM albums WHERE record_name = Nevermind;

-- Which albums were released in the 1990s
SELECT * FROM albums WHERE release_date = 1990 AND 1999;

-- Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT * FROM albums WHERE genre = 'rock';



SHOW TABLE;

DESCRIBE albums;